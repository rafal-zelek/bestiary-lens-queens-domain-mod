---@meta

---@class ASlimer_Metal_BP_C : ASlimer_base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Crown UEnemyAttachmentMesh_C
local ASlimer_Metal_BP_C = {}

---@param EntryPoint int32
function ASlimer_Metal_BP_C:ExecuteUbergraph_Slimer_Metal_BP(EntryPoint) end

---@param WalkMoveSpeedMult float
function ASlimer_Metal_BP_C:GetCurrentMoveInputSpeedMult(WalkMoveSpeedMult) end

---@param DeltaSeconds float
function ASlimer_Metal_BP_C:ReceiveTick(DeltaSeconds) end

function ASlimer_Metal_BP_C:StopAllMovement() end

---@param InputPin USphereComponent
---@param PositionOverride FVector
---@param UseOverride boolean
---@param Hit boolean
function ASlimer_Metal_BP_C:TickIndividualHitbox(InputPin, PositionOverride, UseOverride, Hit) end

ASlimer_Metal_BP_C['Update Rotation'] = function(self) end
