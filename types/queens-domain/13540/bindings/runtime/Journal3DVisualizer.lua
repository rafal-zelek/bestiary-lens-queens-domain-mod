---@meta

---@class AJournal3DVisualizer_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Camera UCameraComponent
---@field Scene USceneComponent
---@field DefaultSceneRoot USceneComponent
---@field ParticleManager TArray<AVideoConfigParticleManager_C>
---@field Rotation float
---@field CurrentEnemyInstance AEnemyBase_C
---@field CurrentBG AActor
---@field ['Current Post'] FPostProcessSettings
---@field BaseEnemyTransform FTransform
---@field CurrentNPC AActor
local AJournal3DVisualizer_C = {}

function AJournal3DVisualizer_C:CleanUp() end

---@param Enemy_Optional_ UEnemyData_C
---@param BG_BP TSubclassOf<AActor>
function AJournal3DVisualizer_C:ConfigureWithEnemy(Enemy_Optional_, BG_BP) end

---@param NPC UNPC_Data_C
---@param BG_BP TSubclassOf<AActor>
function AJournal3DVisualizer_C:ConfigureWithNPC(NPC, BG_BP) end

---@param EntryPoint int32
function AJournal3DVisualizer_C:ExecuteUbergraph_Journal3DVisualizer(EntryPoint) end

function AJournal3DVisualizer_C:ReceiveBeginPlay() end

function AJournal3DVisualizer_C:Update() end

function AJournal3DVisualizer_C:UpdateEnemyVisualConfig() end

---@param BaseAngle float
---@param ProcessedAngle float
AJournal3DVisualizer_C['Calculate Rotation Angle'] = function(self, BaseAngle, ProcessedAngle) end
