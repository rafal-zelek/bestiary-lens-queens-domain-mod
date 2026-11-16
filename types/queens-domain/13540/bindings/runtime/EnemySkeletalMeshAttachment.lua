---@meta

---@class UEnemySkeletalMeshAttachment_C : UFS_NoEdTickSkeletalMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_DeathFade_9ACA8A8945564A4A2DD1C192424A0E43 float
---@field Timeline_0__Direction_9ACA8A8945564A4A2DD1C192424A0E43 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field FogColor FLinearColor
---@field ['Fog Start Dist'] float
---@field ['Fog Fade Range'] float
---@field DeathMaterials TArray<UMaterialInterface>
---@field ['Attachment Is ChildPose'] boolean
local UEnemySkeletalMeshAttachment_C = {}

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function UEnemySkeletalMeshAttachment_C:Died(bNoRewards, EnemyThatDied) end

---@param EntryPoint int32
function UEnemySkeletalMeshAttachment_C:ExecuteUbergraph_EnemySkeletalMeshAttachment(EntryPoint) end

---@param Color FLinearColor
---@param Start_Dist float
---@param FadeRange float
function UEnemySkeletalMeshAttachment_C:FogUpdated(Color, Start_Dist, FadeRange) end

function UEnemySkeletalMeshAttachment_C:ReceiveBeginPlay() end

function UEnemySkeletalMeshAttachment_C:Timeline_0__FinishedFunc() end

function UEnemySkeletalMeshAttachment_C:Timeline_0__UpdateFunc() end
