---@meta

---@class AFlyingSword_ItemMergeActor_C : AItemMergeActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PickupAnimPivot USceneComponent
---@field Gem2 UGemVisualComp_C
---@field Gem1 UGemVisualComp_C
---@field Gem3 UGemVisualComp_C
---@field Gem0 UGemVisualComp_C
---@field UltraGem UGemVisualComp_C
---@field Gem4 UGemVisualComp_C
---@field FlyingSword UStaticMeshComponent
---@field AnimGemInsert_Anim_04BE9D88450B81E3BB4EBA9BA97D1421 float
---@field AnimGemInsert__Direction_04BE9D88450B81E3BB4EBA9BA97D1421 ETimelineDirection::Type
---@field AnimGemInsert UTimelineComponent
---@field Gems TArray<UGemVisualComp_C>
---@field CompToAnim UGemVisualComp_C
---@field FlareFX UNiagaraComponent
local AFlyingSword_ItemMergeActor_C = {}

function AFlyingSword_ItemMergeActor_C:AnimGemInsert__ClickInPlace__EventFunc() end

function AFlyingSword_ItemMergeActor_C:AnimGemInsert__FinishedFunc() end

function AFlyingSword_ItemMergeActor_C:AnimGemInsert__UpdateFunc() end

function AFlyingSword_ItemMergeActor_C:BndEvt__FlyingSword_ItemMergeActor_ItemMergeActorAnim_K2Node_ComponentBoundEvent_0_DoInsertAnim__DelegateSignature() end

function AFlyingSword_ItemMergeActor_C:BndEvt__FlyingSword_ItemMergeActor_ItemMergeActorAnim_K2Node_ComponentBoundEvent_1_Done__DelegateSignature() end

---@param Context UFS_ItemData_C
function AFlyingSword_ItemMergeActor_C:ConfigPickupAnim(Context) end

---@param Item UFS_ItemData_C
function AFlyingSword_ItemMergeActor_C:DoAnimation(Item) end

---@param EntryPoint int32
function AFlyingSword_ItemMergeActor_C:ExecuteUbergraph_FlyingSword_ItemMergeActor(EntryPoint) end

function AFlyingSword_ItemMergeActor_C:ReceiveBeginPlay() end
