#!/usr/bin/env python3
"""Replace the Nexus mod page description with the checked-in BBCode source."""
import json
import os
from pathlib import Path
import sys
from urllib.error import HTTPError, URLError
from urllib.parse import quote
from urllib.request import Request, urlopen

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_API_BASE = 'https://api.nexusmods.com/v3'


def main():
    api_key = os.environ.get('NEXUS_API_KEY', '')
    mod_id = os.environ.get('NEXUS_MOD_ID', '')
    if not api_key or not mod_id:
        print('NEXUS_API_KEY and NEXUS_MOD_ID are required.', file=sys.stderr)
        return 2

    description_path = ROOT / 'docs' / 'nexus-description.bbcode'
    description = description_path.read_text(encoding='utf-8')
    if not description.strip():
        print(f'{description_path.name} is empty; refusing to change the Nexus page.', file=sys.stderr)
        return 2

    api_base = os.environ.get('NEXUS_API_BASE', DEFAULT_API_BASE).rstrip('/')
    url = f'{api_base}/mods/{quote(mod_id, safe="")}'
    request = Request(
        url,
        data=json.dumps({'description': description}, ensure_ascii=False).encode('utf-8'),
        headers={
            'Content-Type': 'application/json',
            'apikey': api_key,
            'User-Agent': 'BestiaryLens-release-workflow',
        },
        method='PATCH',
    )
    try:
        with urlopen(request, timeout=30) as response:
            if response.status != 204:
                print(f'Nexus page description update returned unexpected HTTP {response.status}.', file=sys.stderr)
                return 1
    except HTTPError as error:
        print(f'Nexus page description update failed with HTTP {error.code}.', file=sys.stderr)
        return 1
    except (URLError, TimeoutError, OSError) as error:
        print(f'Nexus page description update failed: {type(error).__name__}.', file=sys.stderr)
        return 1
    print('Nexus mod page description updated from docs/nexus-description.bbcode.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
