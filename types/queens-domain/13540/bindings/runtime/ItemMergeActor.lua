---@meta

---@class AItemMergeActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemMergeActorAnim UItemMergeActorAnim_C
---@field DefaultSceneRoot USceneComponent
---@field AnimFinished FItemMergeActor_CAnimFinished
---@field AnimationItemContext UFS_ItemData_C
local AItemMergeActor_C = {}

function AItemMergeActor_C:AnimFinished__DelegateSignature() end

function AItemMergeActor_C:BndEvt__ItemMergeActor_ItemMergeActorAnim_K2Node_ComponentBoundEvent_0_Done__DelegateSignature() end

---@param Context UFS_ItemData_C
function AItemMergeActor_C:ConfigPickupAnim(Context) end

---@param Item UFS_ItemData_C
function AItemMergeActor_C:DoAnimation(Item) end

---@param EntryPoint int32
function AItemMergeActor_C:ExecuteUbergraph_ItemMergeActor(EntryPoint) end
