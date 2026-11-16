---@meta

---@class ABaseJournalDiorama_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field arrow UArrowComponent
---@field EnemySpawnPoint USceneComponent
---@field PreviewMesh USkeletalMeshComponent
---@field Floor UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Fog UENVControlData_C
local ABaseJournalDiorama_C = {}

---@param EntryPoint int32
function ABaseJournalDiorama_C:ExecuteUbergraph_BaseJournalDiorama(EntryPoint) end

---@param Pos FTransform
function ABaseJournalDiorama_C:GetEnemySpawnBase(Pos) end

function ABaseJournalDiorama_C:ReceiveBeginPlay() end
