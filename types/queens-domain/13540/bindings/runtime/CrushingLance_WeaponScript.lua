---@meta

---@class UCrushingLance_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RunningSpeedControl_RunningSpeed_F0C7355140CB8D9DB5274892B82662FD float
---@field RunningSpeedControl__Direction_F0C7355140CB8D9DB5274892B82662FD ETimelineDirection::Type
---@field RunningSpeedControl UTimelineComponent
---@field SecondaryAttackRunning boolean
---@field ButtonHeld boolean
---@field ['Current Running Speed Scale'] float
---@field LastLookDir FRotator
---@field LocalDelta float
---@field AbleToCancel boolean
---@field CurrentSoundLoop UAudioComponent
---@field NormalAttackLoop UAudioComponent
---@field EnableAttackOverride boolean
---@field DisableWalkingOverride boolean
---@field StartLoopSound USoundBase
---@field EndLoopSound USoundBase
---@field RumbleLoop UForceFeedbackComponent
---@field TickRate float
local UCrushingLance_WeaponScript_C = {}

function UCrushingLance_WeaponScript_C:AltAttackPressed() end

function UCrushingLance_WeaponScript_C:AltAttackReleased() end

function UCrushingLance_WeaponScript_C:AttackPressed() end

function UCrushingLance_WeaponScript_C:AttackReleased() end

function UCrushingLance_WeaponScript_C:CancelAllAttacks() end

function UCrushingLance_WeaponScript_C:CancelTickingHitbox() end

---@param _ float
---@param End boolean
function UCrushingLance_WeaponScript_C:ConsumeSpinningPowerMeter(_, End) end

---@param Overriding boolean
---@param SpeedMult float
function UCrushingLance_WeaponScript_C:DoWalkSpeedMods(Overriding, SpeedMult) end

---@param EntryPoint int32
function UCrushingLance_WeaponScript_C:ExecuteUbergraph_CrushingLance_WeaponScript(EntryPoint) end

---@param Visuals ACrushingLance_WeaponVisuals_C
function UCrushingLance_WeaponScript_C:GetVisuals(Visuals) end

function UCrushingLance_WeaponScript_C:KnockedDown() end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnBlendOut_1FC35D614E780956A8709FBE4CF9E9C7(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnBlendOut_A232AE3446182989C3613199F6B7A606(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnCompleted_1FC35D614E780956A8709FBE4CF9E9C7(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnCompleted_A232AE3446182989C3613199F6B7A606(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnInterrupted_1FC35D614E780956A8709FBE4CF9E9C7(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnInterrupted_A232AE3446182989C3613199F6B7A606(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnNotifyBegin_1FC35D614E780956A8709FBE4CF9E9C7(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnNotifyBegin_A232AE3446182989C3613199F6B7A606(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnNotifyEnd_1FC35D614E780956A8709FBE4CF9E9C7(NotifyName) end

---@param NotifyName FName
function UCrushingLance_WeaponScript_C:OnNotifyEnd_A232AE3446182989C3613199F6B7A606(NotifyName) end

function UCrushingLance_WeaponScript_C:RanOutOfResources() end

function UCrushingLance_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UCrushingLance_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UCrushingLance_WeaponScript_C:RunningSpeedControl__FinishedFunc() end

function UCrushingLance_WeaponScript_C:RunningSpeedControl__UpdateFunc() end

function UCrushingLance_WeaponScript_C:StartRunning() end

function UCrushingLance_WeaponScript_C:UpdateLookRateClamp() end

---@param Clean boolean
UCrushingLance_WeaponScript_C['Cancel RunningEffect'] = function(self, Clean) end
