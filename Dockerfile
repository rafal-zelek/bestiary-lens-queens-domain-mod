# syntax=docker/dockerfile:1
# The digest pins the multi-platform Python image (amd64 and arm64 supported below).
FROM python:3.13.9-slim-bookworm@sha256:b685a4fa58bb19d1814d78a1ec0f0208f351452724f78b20212c984d6e124a34 AS downloads
ARG TARGETARCH
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates gcc libc6-dev make \
    && rm -rf /var/lib/apt/lists/*

# Tool versions and matching release SHA-256 values are intentionally updated together.
RUN TARGETARCH="$TARGETARCH" python - <<'PY'
import hashlib
import io
import os
from pathlib import Path
import tarfile
import urllib.request
import zipfile

assets = {
    'amd64': (
        'x64', '93ad326b10f6c00911dd8c450fa098332dbd8f9f45d1052f5636a2d54479b947',
        'x86_64', '48ee7db28346f96f4bd545e190ab080a88a7b5a664e97649cf5d5c60426f402d',
        'x86_64', '24f397c733add5390fdceee3a2088588ab0d5f944ce00d34cb7029b888cf2db4',
    ),
    'arm64': (
        'arm64', '17b8e401a874440adeb649e5024c364f2bb9d15156c74a40e56d1ae9a1b2e4f2',
        'aarch64', '278495597e3827417f3af7b9ad38011ad4a5ec725503553160ab69b7301059bb',
        'aarch64', '69e208f6e4baef3a0f9b759d5f44223aa9336b86c691072a3d0c98d35a816e69',
    ),
}
arch = os.environ['TARGETARCH']
if arch not in assets:
    raise SystemExit(f'Unsupported architecture: {arch}; use linux/amd64 or linux/arm64')
ls_arch, ls_hash, style_arch, style_hash, cliff_arch, cliff_hash = assets[arch]

def download(url, expected):
    with urllib.request.urlopen(url, timeout=120) as response:
        data = response.read()
    actual = hashlib.sha256(data).hexdigest()
    if actual != expected:
        raise SystemExit(f'SHA-256 mismatch for {url}: {actual}')
    return io.BytesIO(data)

lua = download('https://www.lua.org/ftp/lua-5.4.8.tar.gz',
               '4f18ddae154e793e46eeab727c59ef1c0c0c2b744e7b94219710d76f530629ae')
with tarfile.open(fileobj=lua, mode='r:gz') as archive:
    archive.extractall('/tmp', filter='data')
luals = download(f'https://github.com/LuaLS/lua-language-server/releases/download/3.19.2/lua-language-server-3.19.2-linux-{ls_arch}.tar.gz', ls_hash)
with tarfile.open(fileobj=luals, mode='r:gz') as archive:
    archive.extractall('/opt/luals', filter='data')
stylua = download(f'https://github.com/JohnnyMorganz/StyLua/releases/download/v2.6.0/stylua-linux-{style_arch}-musl.zip', style_hash)
with zipfile.ZipFile(stylua) as archive:
    binary = Path('/opt/tools/stylua')
    binary.parent.mkdir(parents=True, exist_ok=True)
    binary.write_bytes(archive.read('stylua'))
    binary.chmod(0o755)
cliff = download(
    f'https://github.com/orhun/git-cliff/releases/download/v2.14.2/git-cliff-2.14.2-{cliff_arch}-unknown-linux-gnu.tar.gz',
    cliff_hash,
)
with tarfile.open(fileobj=cliff, mode='r:gz') as archive:
    members = [member for member in archive.getmembers() if Path(member.name).name == 'git-cliff']
    if len(members) != 1:
        raise SystemExit('git-cliff archive must contain exactly one git-cliff executable')
    member_file = archive.extractfile(members[0])
    if member_file is None:
        raise SystemExit('git-cliff executable is missing from its archive')
    binary = Path('/opt/tools/git-cliff')
    binary.write_bytes(member_file.read())
    binary.chmod(0o755)
PY
RUN make -C /tmp/lua-5.4.8 -j2 linux \
    && make -C /tmp/lua-5.4.8 install INSTALL_TOP=/opt/lua

# Workflow validation is part of the same image; no host Go/actionlint installation.
RUN TARGETARCH="$TARGETARCH" python - <<'PY_ACTIONLINT'
import hashlib
import io
import os
from pathlib import Path
import tarfile
import urllib.request

hashes = {
    'amd64': '8aca8db96f1b94770f1b0d72b6dddcb1ebb8123cb3712530b08cc387b349a3d8',
    'arm64': '325e971b6ba9bfa504672e29be93c24981eeb1c07576d730e9f7c8805afff0c6',
}
arch = os.environ['TARGETARCH']
url = f'https://github.com/rhysd/actionlint/releases/download/v1.7.12/actionlint_1.7.12_linux_{arch}.tar.gz'
with urllib.request.urlopen(url, timeout=120) as response:
    data = response.read()
if hashlib.sha256(data).hexdigest() != hashes[arch]:
    raise SystemExit('actionlint archive SHA-256 mismatch')
with tarfile.open(fileobj=io.BytesIO(data), mode='r:gz') as archive:
    member = archive.extractfile('actionlint')
    binary = Path('/opt/tools/actionlint')
    binary.write_bytes(member.read())
    binary.chmod(0o755)
PY_ACTIONLINT

FROM python:3.13.9-slim-bookworm@sha256:b685a4fa58bb19d1814d78a1ec0f0208f351452724f78b20212c984d6e124a34 AS tooling
RUN apt-get update \
    && apt-get install -y --no-install-recommends libstdc++6 ca-certificates openssh-client git \
    && rm -rf /var/lib/apt/lists/*
COPY --from=downloads /opt/lua/bin/ /usr/local/bin/
COPY --from=downloads /opt/tools/stylua /usr/local/bin/stylua
COPY --from=downloads /opt/tools/actionlint /usr/local/bin/actionlint
COPY --from=downloads /opt/tools/git-cliff /usr/local/bin/git-cliff
COPY --from=downloads /opt/luals /opt/luals
RUN ln -s /opt/luals/bin/lua-language-server /usr/local/bin/lua-language-server \
    && lua -v && luac -v && stylua --version && lua-language-server --version && actionlint --version && git-cliff --version
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /workspace

FROM tooling AS ci
COPY . .
ENTRYPOINT ["python3", "-B", "/workspace/tools/tasks.py"]
CMD ["check"]
