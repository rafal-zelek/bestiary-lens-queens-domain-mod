---@meta

---@class UEnemyAttachmentMesh_C : UStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_DeathFade_83F2F34E4FE974182625C4A4D4AB89E0 float
---@field Timeline_0__Direction_83F2F34E4FE974182625C4A4D4AB89E0 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field DeathMaterials TArray<UMaterialInterface>
---@field FogColor FLinearColor
---@field ['Fog Start Dist'] float
---@field ['Fog Fade Range'] float
local UEnemyAttachmentMesh_C = {}

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function UEnemyAttachmentMesh_C:Died(bNoRewards, EnemyThatDied) end

---@param EntryPoint int32
function UEnemyAttachmentMesh_C:ExecuteUbergraph_EnemyAttachmentMesh(EntryPoint) end

---@param Color FLinearColor
---@param Start_Dist float
---@param FadeRange float
function UEnemyAttachmentMesh_C:FogUpdated(Color, Start_Dist, FadeRange) end

function UEnemyAttachmentMesh_C:ReceiveBeginPlay() end

function UEnemyAttachmentMesh_C:Timeline_0__FinishedFunc() end

function UEnemyAttachmentMesh_C:Timeline_0__UpdateFunc() end
