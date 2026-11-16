---@meta

---@class FMediaCaptureDevice
---@field DisplayName FText
---@field URL FString
local FMediaCaptureDevice = {}

---@class FMediaSoundComponentSpectralData
---@field FrequencyHz float
---@field Magnitude float
local FMediaSoundComponentSpectralData = {}

---@class UBaseMediaSource : UMediaSource
---@field PlayerName FName
local UBaseMediaSource = {}

---@class UFileMediaSource : UBaseMediaSource
---@field FilePath FString
---@field PrecacheFile boolean
local UFileMediaSource = {}

---@class UMediaBlueprintFunctionLibrary : UBlueprintFunctionLibrary
local UMediaBlueprintFunctionLibrary = {}

---@class UMediaComponent : UActorComponent
---@field MediaTexture UMediaTexture
---@field MediaPlayer UMediaPlayer
local UMediaComponent = {}

---@class UMediaPlayer : UObject
---@field OnEndReached FMediaPlayerOnEndReached
---@field OnMediaClosed FMediaPlayerOnMediaClosed
---@field OnMediaOpened FMediaPlayerOnMediaOpened
---@field OnMediaOpenFailed FMediaPlayerOnMediaOpenFailed
---@field OnPlaybackResumed FMediaPlayerOnPlaybackResumed
---@field OnPlaybackSuspended FMediaPlayerOnPlaybackSuspended
---@field OnSeekCompleted FMediaPlayerOnSeekCompleted
---@field OnTracksChanged FMediaPlayerOnTracksChanged
---@field CacheAhead FTimespan
---@field CacheBehind FTimespan
---@field CacheBehindGame FTimespan
---@field NativeAudioOut boolean
---@field PlayOnOpen boolean
---@field Shuffle boolean
---@field Loop boolean
---@field Playlist UMediaPlaylist
---@field PlaylistIndex int32
---@field TimeDelay FTimespan
---@field HorizontalFieldOfView float
---@field VerticalFieldOfView float
---@field ViewRotation FRotator
---@field PlayerGuid FGuid
local UMediaPlayer = {}

---@class UMediaPlaylist : UObject
---@field Items TArray<UMediaSource>
local UMediaPlaylist = {}

---@class UMediaSoundComponent : USynthComponent
---@field Channels EMediaSoundChannels
---@field DynamicRateAdjustment boolean
---@field RateAdjustmentFactor float
---@field RateAdjustmentRange FFloatRange
---@field MediaPlayer UMediaPlayer
local UMediaSoundComponent = {}

---@class UMediaSource : UObject
local UMediaSource = {}

---@class UMediaTexture : UTexture
---@field AddressX TextureAddress
---@field AddressY TextureAddress
---@field AutoClear boolean
---@field ClearColor FLinearColor
---@field EnableGenMips boolean
---@field NumMips uint8
---@field NewStyleOutput boolean
---@field OutputFormat MediaTextureOutputFormat
---@field CurrentAspectRatio float
---@field CurrentOrientation MediaTextureOrientation
---@field MediaPlayer UMediaPlayer
local UMediaTexture = {}

---@class UMediaTimeStampInfo : UObject
---@field Time FTimespan
---@field SequenceIndex int64
local UMediaTimeStampInfo = {}

---@class UPlatformMediaSource : UMediaSource
---@field MediaSource UMediaSource
local UPlatformMediaSource = {}

---@class UStreamMediaSource : UBaseMediaSource
---@field StreamUrl FString
local UStreamMediaSource = {}

---@class UTimeSynchronizableMediaSource : UBaseMediaSource
---@field bUseTimeSynchronization boolean
---@field FrameDelay int32
---@field TimeDelay double
local UTimeSynchronizableMediaSource = {}

---@param Path FString
function UFileMediaSource:SetFilePath(Path) end

---@param OutDevices TArray<FMediaCaptureDevice>
---@param Filter int32
function UMediaBlueprintFunctionLibrary:EnumerateAudioCaptureDevices(OutDevices, Filter) end

---@param OutDevices TArray<FMediaCaptureDevice>
---@param Filter int32
function UMediaBlueprintFunctionLibrary:EnumerateVideoCaptureDevices(OutDevices, Filter) end

---@param OutDevices TArray<FMediaCaptureDevice>
---@param Filter int32
function UMediaBlueprintFunctionLibrary:EnumerateWebcamCaptureDevices(OutDevices, Filter) end

function UMediaComponent:GetMediaPlayer() end

function UMediaComponent:GetMediaTexture() end

function UMediaPlayer:CanPause() end

---@param MediaSource UMediaSource
function UMediaPlayer:CanPlaySource(MediaSource) end

---@param URL FString
function UMediaPlayer:CanPlayUrl(URL) end

function UMediaPlayer:Close() end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetAudioTrackChannels(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetAudioTrackSampleRate(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetAudioTrackType(TrackIndex, FormatIndex) end

function UMediaPlayer:GetDesiredPlayerName() end

function UMediaPlayer:GetDuration() end

function UMediaPlayer:GetHorizontalFieldOfView() end

function UMediaPlayer:GetMediaName() end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
function UMediaPlayer:GetNumTrackFormats(TrackType, TrackIndex) end

---@param TrackType EMediaPlayerTrack
function UMediaPlayer:GetNumTracks(TrackType) end

function UMediaPlayer:GetPlayerName() end

function UMediaPlayer:GetPlaylist() end

function UMediaPlayer:GetPlaylistIndex() end

function UMediaPlayer:GetRate() end

---@param TrackType EMediaPlayerTrack
function UMediaPlayer:GetSelectedTrack(TrackType) end

---@param OutRates TArray<FFloatRange>
---@param Unthinned boolean
function UMediaPlayer:GetSupportedRates(OutRates, Unthinned) end

function UMediaPlayer:GetTime() end

function UMediaPlayer:GetTimeDelay() end

function UMediaPlayer:GetTimeStamp() end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
function UMediaPlayer:GetTrackDisplayName(TrackType, TrackIndex) end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
function UMediaPlayer:GetTrackFormat(TrackType, TrackIndex) end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
function UMediaPlayer:GetTrackLanguage(TrackType, TrackIndex) end

function UMediaPlayer:GetUrl() end

function UMediaPlayer:GetVerticalFieldOfView() end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetVideoTrackAspectRatio(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetVideoTrackDimensions(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetVideoTrackFrameRate(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetVideoTrackFrameRates(TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:GetVideoTrackType(TrackIndex, FormatIndex) end

function UMediaPlayer:GetViewRotation() end

function UMediaPlayer:HasError() end

function UMediaPlayer:IsBuffering() end

function UMediaPlayer:IsClosed() end

function UMediaPlayer:IsConnecting() end

function UMediaPlayer:IsLooping() end

function UMediaPlayer:IsPaused() end

function UMediaPlayer:IsPlaying() end

function UMediaPlayer:IsPreparing() end

function UMediaPlayer:IsReady() end

function UMediaPlayer:Next() end

---@param FilePath FString
function UMediaPlayer:OpenFile(FilePath) end

---@param InPlaylist UMediaPlaylist
function UMediaPlayer:OpenPlaylist(InPlaylist) end

---@param InPlaylist UMediaPlaylist
---@param Index int32
function UMediaPlayer:OpenPlaylistIndex(InPlaylist, Index) end

---@param MediaSource UMediaSource
function UMediaPlayer:OpenSource(MediaSource) end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param MediaSource UMediaSource
---@param Options FMediaPlayerOptions
---@param bSuccess boolean
function UMediaPlayer:OpenSourceLatent(WorldContextObject, LatentInfo, MediaSource, Options, bSuccess) end

---@param MediaSource UMediaSource
---@param Options FMediaPlayerOptions
function UMediaPlayer:OpenSourceWithOptions(MediaSource, Options) end

---@param URL FString
function UMediaPlayer:OpenUrl(URL) end

function UMediaPlayer:Pause() end

function UMediaPlayer:Play() end

function UMediaPlayer:PlayAndSeek() end

function UMediaPlayer:Previous() end

function UMediaPlayer:Reopen() end

function UMediaPlayer:Rewind() end

---@param Time FTimespan
function UMediaPlayer:Seek(Time) end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
function UMediaPlayer:SelectTrack(TrackType, TrackIndex) end

---@param Time FTimespan
function UMediaPlayer:SetBlockOnTime(Time) end

---@param PlayerName FName
function UMediaPlayer:SetDesiredPlayerName(PlayerName) end

---@param Looping boolean
function UMediaPlayer:SetLooping(Looping) end

---@param Options UMediaSource
function UMediaPlayer:SetMediaOptions(Options) end

---@param Volume float
function UMediaPlayer:SetNativeVolume(Volume) end

---@param Rate float
function UMediaPlayer:SetRate(Rate) end

---@param TimeDelay FTimespan
function UMediaPlayer:SetTimeDelay(TimeDelay) end

---@param TrackType EMediaPlayerTrack
---@param TrackIndex int32
---@param FormatIndex int32
function UMediaPlayer:SetTrackFormat(TrackType, TrackIndex, FormatIndex) end

---@param TrackIndex int32
---@param FormatIndex int32
---@param FrameRate float
function UMediaPlayer:SetVideoTrackFrameRate(TrackIndex, FormatIndex, FrameRate) end

---@param Horizontal float
---@param Vertical float
---@param Absolute boolean
function UMediaPlayer:SetViewField(Horizontal, Vertical, Absolute) end

---@param Rotation FRotator
---@param Absolute boolean
function UMediaPlayer:SetViewRotation(Rotation, Absolute) end

---@param Rate float
---@param Unthinned boolean
function UMediaPlayer:SupportsRate(Rate, Unthinned) end

function UMediaPlayer:SupportsScrubbing() end

function UMediaPlayer:SupportsSeeking() end

---@param MediaSource UMediaSource
function UMediaPlaylist:Add(MediaSource) end

---@param FilePath FString
function UMediaPlaylist:AddFile(FilePath) end

---@param URL FString
function UMediaPlaylist:AddUrl(URL) end

---@param Index int32
function UMediaPlaylist:Get(Index) end

---@param InOutIndex int32
function UMediaPlaylist:GetNext(InOutIndex) end

---@param InOutIndex int32
function UMediaPlaylist:GetPrevious(InOutIndex) end

---@param OutIndex int32
function UMediaPlaylist:GetRandom(OutIndex) end

---@param MediaSource UMediaSource
---@param Index int32
function UMediaPlaylist:Insert(MediaSource, Index) end

function UMediaPlaylist:Num() end

---@param MediaSource UMediaSource
function UMediaPlaylist:Remove(MediaSource) end

---@param Index int32
function UMediaPlaylist:RemoveAt(Index) end

---@param Index int32
---@param Replacement UMediaSource
function UMediaPlaylist:Replace(Index, Replacement) end

---@param OutAttenuationSettings FSoundAttenuationSettings
function UMediaSoundComponent:BP_GetAttenuationSettingsToApply(OutAttenuationSettings) end

function UMediaSoundComponent:GetEnvelopeValue() end

function UMediaSoundComponent:GetMediaPlayer() end

function UMediaSoundComponent:GetNormalizedSpectralData() end

function UMediaSoundComponent:GetSpectralData() end

---@param bInEnvelopeFollowing boolean
function UMediaSoundComponent:SetEnableEnvelopeFollowing(bInEnvelopeFollowing) end

---@param bInSpectralAnalysisEnabled boolean
function UMediaSoundComponent:SetEnableSpectralAnalysis(bInSpectralAnalysisEnabled) end

---@param AttackTimeMsec int32
---@param ReleaseTimeMsec int32
function UMediaSoundComponent:SetEnvelopeFollowingsettings(AttackTimeMsec, ReleaseTimeMsec) end

---@param NewMediaPlayer UMediaPlayer
function UMediaSoundComponent:SetMediaPlayer(NewMediaPlayer) end

---@param InFrequenciesToAnalyze TArray<float>
---@param InFFTSize EMediaSoundComponentFFTSize
function UMediaSoundComponent:SetSpectralAnalysisSettings(InFrequenciesToAnalyze, InFFTSize) end

function UMediaSource:GetUrl() end

---@param Key FName
---@param Value boolean
function UMediaSource:SetMediaOptionBool(Key, Value) end

---@param Key FName
---@param Value float
function UMediaSource:SetMediaOptionFloat(Key, Value) end

---@param Key FName
---@param Value int64
function UMediaSource:SetMediaOptionInt64(Key, Value) end

---@param Key FName
---@param Value FString
function UMediaSource:SetMediaOptionString(Key, Value) end

function UMediaSource:Validate() end

function UMediaTexture:GetAspectRatio() end

function UMediaTexture:GetHeight() end

function UMediaTexture:GetMediaPlayer() end

function UMediaTexture:GetTextureNumMips() end

function UMediaTexture:GetWidth() end

---@param NewMediaPlayer UMediaPlayer
function UMediaTexture:SetMediaPlayer(NewMediaPlayer) end
