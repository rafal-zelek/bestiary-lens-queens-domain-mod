---@meta

---@class AMusicController_C : AFS_MusicSystemBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field LeavingTrackFadeTL_NewTrack_0_7CE402BD418FB4B355AA68878FB51AA8 float
---@field LeavingTrackFadeTL__Direction_7CE402BD418FB4B355AA68878FB51AA8 ETimelineDirection::Type
---@field LeavingTrackFadeTL UTimelineComponent
---@field AltTrackFade_NewTrack_0_A56454EA4CF1EDE51EE04787F83DD741 float
---@field AltTrackFade__Direction_A56454EA4CF1EDE51EE04787F83DD741 ETimelineDirection::Type
---@field AltTrackFade UTimelineComponent
---@field CurrentTrackComponent UFB_MusicComponent
---@field FadeOutTime float
---@field DelayBetweenSongs float
---@field FastFade float
---@field AltTrackRunning boolean
---@field CurrentAltTrackFade float
---@field LeavingTrackComponent UFB_MusicComponent
---@field CancellingLeavingFade boolean
---@field LastSongStartTime float
local AMusicController_C = {}

function AMusicController_C:AltTrackFade__FinishedFunc() end

function AMusicController_C:AltTrackFade__UpdateFunc() end

---@param bSkipGroundedCheck boolean
---@param IgnoreCues TSet<USoundCue>
function AMusicController_C:ApplyMusicHold(bSkipGroundedCheck, IgnoreCues) end

---@param Area UFS_MusicAreaInstance
---@param bIgnoreGrounded boolean
function AMusicController_C:AreaChanged(Area, bIgnoreGrounded) end

function AMusicController_C:CancelLeavingTrackFadeOut() end

---@param NewTrack USoundCue
---@param Fast boolean
function AMusicController_C:ChangeTracksIfNeeded(NewTrack, Fast) end

function AMusicController_C:ClearOverrideTrack() end

---@param Loaded TArray<UObject>
function AMusicController_C:Completed_73E3987C4F9BF55B4ECC45A627D77321(Loaded) end

function AMusicController_C:DisableAltTrack() end

function AMusicController_C:EnableAltTrack() end

---@param EntryPoint int32
function AMusicController_C:ExecuteUbergraph_MusicController(EntryPoint) end

---@param FadeDuration float
function AMusicController_C:FadeOutLeavingTrack(FadeDuration) end

function AMusicController_C:Internal_PlaySelectedTrack() end

function AMusicController_C:IsMusicHeld() end

function AMusicController_C:LeavingTrackFadeTL__FinishedFunc() end

function AMusicController_C:LeavingTrackFadeTL__UpdateFunc() end

---@param Cue USoundCue
function AMusicController_C:OverrideTrack(Cue) end

function AMusicController_C:PlayerLanded() end

function AMusicController_C:PlayerLeftGround() end

function AMusicController_C:ReceiveBeginPlay() end

function AMusicController_C:RefreshCurrentlyPlayingTrack() end

---@param Ignore_Grounded boolean
function AMusicController_C:RefreshWithGroundedCheck(Ignore_Grounded) end

---@param bSkipGroundedCheck boolean
---@param IgnoreCues TSet<USoundCue>
function AMusicController_C:RemoveMusicHold(bSkipGroundedCheck, IgnoreCues) end

function AMusicController_C:SetDesiredTrack() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function AMusicController_C:SortMusicAreas(ObjectA, ObjectB, Result) end

---@param TempTrack UFS_MusicAreaData
function AMusicController_C:TempPlayTrack(TempTrack) end
