---@meta

---@class AFS_CommonGM_C : AFS_GameModeCore
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field RealDeltaTime float
---@field LastTime float
---@field MaterialTime float
---@field MaterialTime_Unpaused float
---@field ApplyTimeDilationToFSTime boolean
---@field MaterialTimeDilation float
---@field VideoConfigLevelInstance_1 ULevelStreamingDynamic
---@field VideoConfigLevelInstance_0 ULevelStreamingDynamic
---@field VideoIslandLocation FVector
local AFS_CommonGM_C = {}

---@param ID FName
function AFS_CommonGM_C:BndEvt__FS_CommonGM_ChallengeSystemComp_K2Node_ComponentBoundEvent_0_ChallengeCompletedEvent__DelegateSignature(ID) end

---@param EntryPoint int32
function AFS_CommonGM_C:ExecuteUbergraph_FS_CommonGM(EntryPoint) end

function AFS_CommonGM_C:PlayerReady() end

function AFS_CommonGM_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFS_CommonGM_C:ReceiveTick(DeltaSeconds) end

function AFS_CommonGM_C:TickTitleTime() end
