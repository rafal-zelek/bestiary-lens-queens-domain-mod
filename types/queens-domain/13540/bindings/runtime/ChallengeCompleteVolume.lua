---@meta

---@class AChallengeCompleteVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field ChallengeToComplete FName
---@field RequirePlayerToBeGrounded boolean
---@field WaitingForPlayerGrounding boolean
local AChallengeCompleteVolume_C = {}

---@param EntryPoint int32
function AChallengeCompleteVolume_C:ExecuteUbergraph_ChallengeCompleteVolume(EntryPoint) end

---@param OtherActor AActor
function AChallengeCompleteVolume_C:ReceiveActorBeginOverlap(OtherActor) end

---@param OtherActor AActor
function AChallengeCompleteVolume_C:ReceiveActorEndOverlap(OtherActor) end

---@param DeltaSeconds float
function AChallengeCompleteVolume_C:ReceiveTick(DeltaSeconds) end
