---@meta

---@class APotion_Lizer_BaseSpawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WaitingPickup ALizerTreasure_Base_C
local APotion_Lizer_BaseSpawner_C = {}

---@param EntryPoint int32
function APotion_Lizer_BaseSpawner_C:ExecuteUbergraph_Potion_Lizer_BaseSpawner(EntryPoint) end

function APotion_Lizer_BaseSpawner_C:ReceiveBeginPlay() end

function APotion_Lizer_BaseSpawner_C:SetDropsOnPreviewActor() end

function APotion_Lizer_BaseSpawner_C:SpawnEnemyWithConfigApplied() end

---@param HP float
function APotion_Lizer_BaseSpawner_C:StoreEnemyState(HP) end

function APotion_Lizer_BaseSpawner_C:UserConstructionScript() end
