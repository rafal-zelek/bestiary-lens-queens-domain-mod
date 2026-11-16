---@meta

---@class AStone_Fishman_BP_C : AFishManer_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field BonkCount int32
local AStone_Fishman_BP_C = {}

---@param Damaged boolean
function AStone_Fishman_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function AStone_Fishman_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AStone_Fishman_BP_C:ExecuteUbergraph_Stone_Fishman_BP(EntryPoint) end

---@param AttackIndex int32
---@param Tags FGameplayTagContainer
function AStone_Fishman_BP_C:GetStatusEffectTags(AttackIndex, Tags) end

function AStone_Fishman_BP_C:StatueifyCollision() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AStone_Fishman_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param HitLocation FVector
---@param HitLocationIsValid boolean
---@param AppliedDamage FFB_DamageAttributeSet
function AStone_Fishman_BP_C:TryApplyDamage_0(Hit, DamageToApply, Applier, HitLocation, HitLocationIsValid, AppliedDamage) end

function AStone_Fishman_BP_C:UnStatueifyCollision() end
