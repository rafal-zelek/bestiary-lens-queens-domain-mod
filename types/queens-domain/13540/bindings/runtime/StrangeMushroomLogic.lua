---@meta

---@class UStrangeMushroomLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Enabled boolean
---@field InAir boolean
---@field JumpHeld boolean
---@field Boosting boolean
---@field RemainingHeight float
---@field Item UFS_ItemData_C
---@field LastFrameHeight float
---@field HasBoostedThisJump boolean
---@field SFX UAudioComponent
---@field VFX UNiagaraComponent
---@field LocalDT float
---@field MinBoostVal float
---@field QueuedHeight float
local UStrangeMushroomLogic_C = {}

---@param Cur float
---@param Drain boolean
function UStrangeMushroomLogic_C:AccumulateCharge(Cur, Drain) end

---@param EntryPoint int32
function UStrangeMushroomLogic_C:ExecuteUbergraph_StrangeMushroomLogic(EntryPoint) end

---@param Value float
function UStrangeMushroomLogic_C:GetBoostVelocity(Value) end

---@param Value float
function UStrangeMushroomLogic_C:GetMaxHeight(Value) end

function UStrangeMushroomLogic_C:Grounded() end

function UStrangeMushroomLogic_C:JumpPressed() end

function UStrangeMushroomLogic_C:JumpReleased() end

function UStrangeMushroomLogic_C:Landed() end

function UStrangeMushroomLogic_C:LeftGround() end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UStrangeMushroomLogic_C:MovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end

function UStrangeMushroomLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UStrangeMushroomLogic_C:ReceiveTick(DeltaSeconds) end

function UStrangeMushroomLogic_C:SetDisabled() end

function UStrangeMushroomLogic_C:SetEnabled() end

function UStrangeMushroomLogic_C:StartBoosting() end

function UStrangeMushroomLogic_C:StartedFalling() end

function UStrangeMushroomLogic_C:StopBoosting() end

function UStrangeMushroomLogic_C:UpdateHeightConsumption() end

UStrangeMushroomLogic_C['Apply Boost Physics'] = function(self) end

UStrangeMushroomLogic_C['Update State'] = function(self) end
