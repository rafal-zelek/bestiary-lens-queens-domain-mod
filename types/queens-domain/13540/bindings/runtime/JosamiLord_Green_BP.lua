---@meta

---@class AJosamiLord_Green_BP_C : AJosamiLord_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RidingDragon boolean
---@field DragonRef ADragon_Green_BP_C
local AJosamiLord_Green_BP_C = {}

---@param IncomingDamage FFB_DamageAttributeSet
---@param Immune_To_Damage boolean
function AJosamiLord_Green_BP_C:AggroFromHit(IncomingDamage, Immune_To_Damage) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AJosamiLord_Green_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param bIgnoreWeight boolean
---@param Index int32
function AJosamiLord_Green_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AJosamiLord_Green_BP_C:DoPhaseTransition2() end

---@param AttackIndex int32
---@param AttackKey FName
function AJosamiLord_Green_BP_C:DragonAttacking(AttackIndex, AttackKey) end

function AJosamiLord_Green_BP_C:DragonRushFinished() end

function AJosamiLord_Green_BP_C:DroppedFromPortal() end

function AJosamiLord_Green_BP_C:EqualizeHP() end

---@param EntryPoint int32
function AJosamiLord_Green_BP_C:ExecuteUbergraph_JosamiLord_Green_BP(EntryPoint) end

---@param Phase_Index int32
function AJosamiLord_Green_BP_C:GetDesiredPhase(Phase_Index) end

function AJosamiLord_Green_BP_C:JumpOffDragon() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiLord_Green_BP_C:Kill(NoRewards, SupressDeathSound) end

function AJosamiLord_Green_BP_C:NonCastleJumpStartup() end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnBlendOut_298F4F8240F66B3A9499B7BA675DD647(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnBlendOut_30D7A8EB44E5076FB92C34873147C388(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnBlendOut_9E1AE1DD4C3AC605838DBE8107460556(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnBlendOut_CD9D3301488E786452AFF4B2B9CD1B79(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnCompleted_298F4F8240F66B3A9499B7BA675DD647(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnCompleted_30D7A8EB44E5076FB92C34873147C388(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnCompleted_9E1AE1DD4C3AC605838DBE8107460556(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnCompleted_CD9D3301488E786452AFF4B2B9CD1B79(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnInterrupted_298F4F8240F66B3A9499B7BA675DD647(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnInterrupted_30D7A8EB44E5076FB92C34873147C388(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnInterrupted_9E1AE1DD4C3AC605838DBE8107460556(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnInterrupted_CD9D3301488E786452AFF4B2B9CD1B79(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyBegin_298F4F8240F66B3A9499B7BA675DD647(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyBegin_30D7A8EB44E5076FB92C34873147C388(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyBegin_9E1AE1DD4C3AC605838DBE8107460556(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyBegin_CD9D3301488E786452AFF4B2B9CD1B79(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyEnd_298F4F8240F66B3A9499B7BA675DD647(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyEnd_30D7A8EB44E5076FB92C34873147C388(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyEnd_9E1AE1DD4C3AC605838DBE8107460556(NotifyName) end

---@param NotifyName FName
function AJosamiLord_Green_BP_C:OnNotifyEnd_CD9D3301488E786452AFF4B2B9CD1B79(NotifyName) end

function AJosamiLord_Green_BP_C:ReceiveBeginPlay() end

---@param StartingRotationoffset FRotator
function AJosamiLord_Green_BP_C:SpawnMountedProjectile(StartingRotationoffset) end

---@param Dragon ADragon_Green_BP_C
function AJosamiLord_Green_BP_C:StartRidingDragon(Dragon) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AJosamiLord_Green_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
