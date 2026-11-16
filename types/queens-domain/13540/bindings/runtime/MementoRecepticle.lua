---@meta

---@class AMementoRecepticle_C : AAQR_KeyRecepticle_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemToTransform TMap<UFS_ItemData_C, FTransform>
---@field VisibleKey AActor
local AMementoRecepticle_C = {}

---@param EntryPoint int32
function AMementoRecepticle_C:ExecuteUbergraph_MementoRecepticle(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMementoRecepticle_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AMementoRecepticle_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function AMementoRecepticle_C:KeyInserted() end

---@param Key UFS_ItemData_C
function AMementoRecepticle_C:RefreshKeyMaterialFromItem(Key) end

function AMementoRecepticle_C:SpawnKeyActor() end

---@param Items TArray<UFS_ItemData_C>
AMementoRecepticle_C['Restore Item State From Save Data'] = function(self, Items) end
