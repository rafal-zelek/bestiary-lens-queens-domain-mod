---@meta

---@class UCrushAreaCollision_C : UStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field KillRules KillVolumeRules::Type
---@field TrackedChars TSet<ACharacter>
---@field LastFramePos float
local UCrushAreaCollision_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UCrushAreaCollision_C:BeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UCrushAreaCollision_C:EndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function UCrushAreaCollision_C:ExecuteUbergraph_CrushAreaCollision(EntryPoint) end

function UCrushAreaCollision_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UCrushAreaCollision_C:ReceiveTick(DeltaSeconds) end

function UCrushAreaCollision_C:Refresh() end
