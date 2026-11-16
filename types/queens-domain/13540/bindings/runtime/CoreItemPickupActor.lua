---@meta

---@class ACoreItemPickupActor_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InWater boolean
---@field IsADrop boolean
---@field waterbobloc FVector
---@field Acquired boolean
---@field GravityDropping boolean
---@field DropRestoredFromSave boolean
---@field TransientPickup boolean
---@field DialoguePickup boolean
---@field UseSaveLocationOveride boolean
---@field SaveLocationOverride FVector
local ACoreItemPickupActor_C = {}

---@param EntryPoint int32
function ACoreItemPickupActor_C:ExecuteUbergraph_CoreItemPickupActor(EntryPoint) end

---@param GrantedItems TMap<TSoftObjectPtr<UFS_Item>, int32>
function ACoreItemPickupActor_C:GetSavableGrantedItems(GrantedItems) end

function ACoreItemPickupActor_C:ReceiveBeginPlay() end

---@param Restored TMap<TSoftObjectPtr<UFS_Item>, int32>
function ACoreItemPickupActor_C:RestoreGrantedItemsFromSave(Restored) end

function ACoreItemPickupActor_C:UserConstructionScript() end
