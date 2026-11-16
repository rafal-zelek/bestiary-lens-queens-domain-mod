---@meta

---@class ULuudeCrossbow__WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastAltFireTime float
---@field Sequence int32
---@field ChargeSound UAudioComponent
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field ProjectileDamage FFB_DamageAttributeSet
local ULuudeCrossbow__WeaponScript_C = {}

function ULuudeCrossbow__WeaponScript_C:AltAttackPressed() end

function ULuudeCrossbow__WeaponScript_C:AltAttackReleased() end

function ULuudeCrossbow__WeaponScript_C:ApplyCooldownWeaponAbilityPointGen() end

function ULuudeCrossbow__WeaponScript_C:AttackPressed() end

function ULuudeCrossbow__WeaponScript_C:AttackReleased() end

---@param CanConsume boolean
function ULuudeCrossbow__WeaponScript_C:CanConsumeCharge(CanConsume) end

function ULuudeCrossbow__WeaponScript_C:CancelAllAttacks() end

function ULuudeCrossbow__WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function ULuudeCrossbow__WeaponScript_C:ExecuteUbergraph_LuudeCrossbow__WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function ULuudeCrossbow__WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

function ULuudeCrossbow__WeaponScript_C:GetFireLocation() end

---@param AsSkeletal_Mesh_Component USkeletalMeshComponent
function ULuudeCrossbow__WeaponScript_C:GetSkeletalMesh(AsSkeletal_Mesh_Component) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnBlendOut_0931025949E736DD98BF0A989394C91C(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnBlendOut_E54288A84E498C23B76130BD172893B9(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnCompleted_0931025949E736DD98BF0A989394C91C(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnCompleted_E54288A84E498C23B76130BD172893B9(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnInterrupted_0931025949E736DD98BF0A989394C91C(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnInterrupted_E54288A84E498C23B76130BD172893B9(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnNotifyBegin_0931025949E736DD98BF0A989394C91C(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnNotifyBegin_E54288A84E498C23B76130BD172893B9(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnNotifyEnd_0931025949E736DD98BF0A989394C91C(NotifyName) end

---@param NotifyName FName
function ULuudeCrossbow__WeaponScript_C:OnNotifyEnd_E54288A84E498C23B76130BD172893B9(NotifyName) end

---@param NewAnimToPlay UAnimMontage
function ULuudeCrossbow__WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

function ULuudeCrossbow__WeaponScript_C:PreChargeAltPressed() end

---@param DeltaSeconds float
function ULuudeCrossbow__WeaponScript_C:ReceiveTick(DeltaSeconds) end

---@param SpawnTransform FTransform
function ULuudeCrossbow__WeaponScript_C:SpawnProjectile(SpawnTransform) end

---@param Charge_Delay float
---@param Secondary boolean
---@param Consumed boolean
function ULuudeCrossbow__WeaponScript_C:TryConsumeCharge(Charge_Delay, Secondary, Consumed) end
