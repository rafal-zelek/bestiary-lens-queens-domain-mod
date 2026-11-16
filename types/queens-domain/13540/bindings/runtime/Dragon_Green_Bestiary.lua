---@meta

---@class ADragon_Green_Bestiary_C : ADragon_Base_C
---@field Dragon_MouthFire_Loop UNiagaraComponent
---@field MouthFireGlow UPointLightComponent
---@field MountedLord AJosamiLord_Green_BP_C
---@field FOrceGoToAir boolean
---@field Attacking FDragon_Green_Bestiary_CAttacking
local ADragon_Green_Bestiary_C = {}

---@param AttackIndex int32
---@param AttackKey FName
function ADragon_Green_Bestiary_C:Attacking__DelegateSignature(AttackIndex, AttackKey) end

---@param bIgnoreWeight boolean
---@param Index int32
function ADragon_Green_Bestiary_C:CanUseAttack(bIgnoreWeight, Index) end

function ADragon_Green_Bestiary_C:CheckForSplit() end

---@param AttackIndex int32
---@param BaseWeight float
function ADragon_Green_Bestiary_C:ModifyAttackWeight(AttackIndex, BaseWeight) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ADragon_Green_Bestiary_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
