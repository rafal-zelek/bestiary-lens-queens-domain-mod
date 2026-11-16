---@meta

---@class ARuneVisionMask_ItemMergeActor_C : AItemMergeActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Charm_Food UStaticMeshComponent
---@field Charm_Lizer UStaticMeshComponent
---@field Charm_Sci UStaticMeshComponent
---@field Charm_Skull UStaticMeshComponent
---@field Charm_Egg UStaticMeshComponent
---@field Charm_Chest UStaticMeshComponent
---@field RuneGoggle_Lens_Wodaso_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Puwema_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Jigeki_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Sipeha_SM UStaticMeshComponent
---@field PickupGraphics UStaticMeshComponent
---@field PickupAnimPivot USceneComponent
---@field AnimGemInsert_Anim_466AAD614033E608C2745B9CF469CE44 float
---@field AnimGemInsert__Direction_466AAD614033E608C2745B9CF469CE44 ETimelineDirection::Type
---@field AnimGemInsert UTimelineComponent
---@field Comps TMap<UFS_ItemData_C, UStaticMeshComponent>
---@field CompToAnim UStaticMeshComponent
---@field FlareFX UNiagaraComponent
---@field QueuedAnims TArray<UFS_ItemData_C>
---@field ItemToNSD TMap<UFS_ItemData_C, FName>
---@field Charms TSet<UFS_Item>
local ARuneVisionMask_ItemMergeActor_C = {}

function ARuneVisionMask_ItemMergeActor_C:AnimGemInsert__ClickInPlace__EventFunc() end

function ARuneVisionMask_ItemMergeActor_C:AnimGemInsert__FinishedFunc() end

function ARuneVisionMask_ItemMergeActor_C:AnimGemInsert__UpdateFunc() end

function ARuneVisionMask_ItemMergeActor_C:BndEvt__FlyingSword_ItemMergeActor_ItemMergeActorAnim_K2Node_ComponentBoundEvent_0_DoInsertAnim__DelegateSignature() end

function ARuneVisionMask_ItemMergeActor_C:BndEvt__FlyingSword_ItemMergeActor_ItemMergeActorAnim_K2Node_ComponentBoundEvent_1_Done__DelegateSignature() end

---@param Context UFS_ItemData_C
function ARuneVisionMask_ItemMergeActor_C:ConfigPickupAnim(Context) end

---@param Continue boolean
function ARuneVisionMask_ItemMergeActor_C:ConfigureNextInsertAnim(Continue) end

function ARuneVisionMask_ItemMergeActor_C:DisableRuneVision() end

---@param Item UFS_ItemData_C
function ARuneVisionMask_ItemMergeActor_C:DoAnimation(Item) end

function ARuneVisionMask_ItemMergeActor_C:DoCharmAnim() end

function ARuneVisionMask_ItemMergeActor_C:DoNextInsert() end

---@param EntryPoint int32
function ARuneVisionMask_ItemMergeActor_C:ExecuteUbergraph_RuneVisionMask_ItemMergeActor(EntryPoint) end

function ARuneVisionMask_ItemMergeActor_C:ReceiveBeginPlay() end

function ARuneVisionMask_ItemMergeActor_C:SetUpAnimQueue() end
