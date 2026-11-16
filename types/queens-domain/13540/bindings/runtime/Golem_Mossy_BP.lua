---@meta

---@class AGolem_Mossy_BP_C : AGolem_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field plant_02 UEnemyAttachmentMesh_C
---@field Fern_01 UEnemyAttachmentMesh_C
---@field Fern_00 UEnemyAttachmentMesh_C
---@field HangMoss_00 UEnemyAttachmentMesh_C
---@field HitsInTrapMode int32
local AGolem_Mossy_BP_C = {}

---@param EntryPoint int32
function AGolem_Mossy_BP_C:ExecuteUbergraph_Golem_Mossy_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGolem_Mossy_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AGolem_Mossy_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
