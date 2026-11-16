---@meta

---@class UHempieSVT38__WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastAltFireTime float
---@field Sequence int32
local UHempieSVT38__WeaponScript_C = {}

function UHempieSVT38__WeaponScript_C:AltAttackPressed() end

function UHempieSVT38__WeaponScript_C:ApplyCooldownWeaponAbilityPointGen() end

function UHempieSVT38__WeaponScript_C:AttackPressed() end

---@param CanConsume boolean
function UHempieSVT38__WeaponScript_C:CanConsumeCharge(CanConsume) end

---@param EntryPoint int32
function UHempieSVT38__WeaponScript_C:ExecuteUbergraph_HempieSVT38__WeaponScript(EntryPoint) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnBlendOut_2ACD357548D8C5CCDE6023B56CF6D09F(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnBlendOut_78DAA0A649757B3EBAAE0C9ED7CD5E71(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnBlendOut_B93818904A440F0802778FB5CB8F2E25(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnCompleted_2ACD357548D8C5CCDE6023B56CF6D09F(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnCompleted_78DAA0A649757B3EBAAE0C9ED7CD5E71(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnCompleted_B93818904A440F0802778FB5CB8F2E25(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnInterrupted_2ACD357548D8C5CCDE6023B56CF6D09F(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnInterrupted_78DAA0A649757B3EBAAE0C9ED7CD5E71(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnInterrupted_B93818904A440F0802778FB5CB8F2E25(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyBegin_2ACD357548D8C5CCDE6023B56CF6D09F(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyBegin_78DAA0A649757B3EBAAE0C9ED7CD5E71(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyBegin_B93818904A440F0802778FB5CB8F2E25(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyEnd_2ACD357548D8C5CCDE6023B56CF6D09F(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyEnd_78DAA0A649757B3EBAAE0C9ED7CD5E71(NotifyName) end

---@param NotifyName FName
function UHempieSVT38__WeaponScript_C:OnNotifyEnd_B93818904A440F0802778FB5CB8F2E25(NotifyName) end

---@param NewAnimToPlay UAnimationAsset
function UHempieSVT38__WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

---@param DeltaSeconds float
function UHempieSVT38__WeaponScript_C:ReceiveTick(DeltaSeconds) end

---@param SpawnTransform FTransform
function UHempieSVT38__WeaponScript_C:SpawnProjectile(SpawnTransform) end

---@param Charge_Delay float
---@param Secondary boolean
---@param Consumed boolean
function UHempieSVT38__WeaponScript_C:TryConsumeCharge(Charge_Delay, Secondary, Consumed) end
