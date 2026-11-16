---@meta

---@class ABarnacle_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShellBlockerSphere USphereComponent
---@field ActiveLaser boolean
---@field LaserTargetStart FVector
---@field LaserTargetEnd FVector
---@field CurrentLaserTarget FVector
---@field CurrentLaser UNiagaraComponent
---@field AlreadyHitPlayer boolean
---@field LaserStatusEffect EnemyStatusType::Type
---@field TrackingStrength float
---@field BeamPFX UNiagaraSystem
---@field LaserDamageActive boolean
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field InShellResistanceMult float
---@field InShellResistTag FGameplayTag
local ABarnacle_Base_BP_C = {}

function ABarnacle_Base_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABarnacle_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABarnacle_Base_BP_C:CheckChase() end

function ABarnacle_Base_BP_C:ContinueWandering() end

---@param Damage FFB_DamageAttributeSet
---@param Hit FHitResult
---@param Multiplier float
---@param Resisted boolean
---@param Immune boolean
---@param BonusDamage boolean
function ABarnacle_Base_BP_C:DetermineTakenDamageMultiplier(Damage, Hit, Multiplier, Resisted, Immune, BonusDamage) end

---@param Hit FHitResult
---@param HitCannotPierce boolean
function ABarnacle_Base_BP_C:Enemy_IsNotPiercable(Hit, HitCannotPierce) end

---@param EntryPoint int32
function ABarnacle_Base_BP_C:ExecuteUbergraph_Barnacle_Base_BP(EntryPoint) end

function ABarnacle_Base_BP_C:GetForwardFacingVectorForAI() end

function ABarnacle_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ABarnacle_Base_BP_C:OnBlendOut_0541203E4DAE8AE779ED3F802BF7B4A5(NotifyName) end

---@param NotifyName FName
function ABarnacle_Base_BP_C:OnCompleted_0541203E4DAE8AE779ED3F802BF7B4A5(NotifyName) end

---@param NotifyName FName
function ABarnacle_Base_BP_C:OnInterrupted_0541203E4DAE8AE779ED3F802BF7B4A5(NotifyName) end

---@param NotifyName FName
function ABarnacle_Base_BP_C:OnNotifyBegin_0541203E4DAE8AE779ED3F802BF7B4A5(NotifyName) end

---@param NotifyName FName
function ABarnacle_Base_BP_C:OnNotifyEnd_0541203E4DAE8AE779ED3F802BF7B4A5(NotifyName) end

---@param Duration float
function ABarnacle_Base_BP_C:Paralyze(Duration) end

function ABarnacle_Base_BP_C:Stagger() end

function ABarnacle_Base_BP_C:StartWandering() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABarnacle_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABarnacle_Base_BP_C:UnAggrod() end

ABarnacle_Base_BP_C['Update Rotation'] = function(self) end
