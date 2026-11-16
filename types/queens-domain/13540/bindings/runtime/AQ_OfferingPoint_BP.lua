---@meta

---@class AAQ_OfferingPoint_BP_C : AAQR_KeyRecepticle_BP_C
---@field KeyToMeshMap TMap<UFS_ItemData_C, UStaticMesh>
---@field LockedInPlace boolean
local AAQ_OfferingPoint_BP_C = {}

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AAQ_OfferingPoint_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AAQ_OfferingPoint_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Key UFS_ItemData_C
function AAQ_OfferingPoint_BP_C:RefreshKeyMaterialFromItem(Key) end
