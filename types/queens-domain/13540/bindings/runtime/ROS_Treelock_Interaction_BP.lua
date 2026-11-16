---@meta

---@class AROS_Treelock_Interaction_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight2 UPointLightComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field InteractBox2 UBoxComponent
---@field InteractBox1 UBoxComponent
---@field InteractBox0 UBoxComponent
---@field Orb2 UVisualKeyComponent_C
---@field Orb1 UVisualKeyComponent_C
---@field Orb0 UVisualKeyComponent_C
---@field Tree_Mesh AROS_TreeLock_Tree_C
---@field ['Player Ref'] AFS_PlayerChar_C
---@field StuffToActivate TArray<TScriptInterface<IActivatable_C>>
local AROS_Treelock_Interaction_BP_C = {}

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb0_K2Node_ComponentBoundEvent_1_FinishedAdding__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb0_K2Node_ComponentBoundEvent_4_UnlockSound__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb1_K2Node_ComponentBoundEvent_2_FinishedAdding__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb1_K2Node_ComponentBoundEvent_5_UnlockSound__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb2_K2Node_ComponentBoundEvent_3_FinishedAdding__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:BndEvt__ROS_Treelock_Interaction_BP_Orb2_K2Node_ComponentBoundEvent_6_UnlockSound__DelegateSignature() end

function AROS_Treelock_Interaction_BP_C:DoNextKeyInsert() end

---@param EntryPoint int32
function AROS_Treelock_Interaction_BP_C:ExecuteUbergraph_ROS_Treelock_Interaction_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AROS_Treelock_Interaction_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AROS_Treelock_Interaction_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param PlayerInteracting AActor
function AROS_Treelock_Interaction_BP_C:Interact(PlayerInteracting) end

function AROS_Treelock_Interaction_BP_C:ReceiveBeginPlay() end

function AROS_Treelock_Interaction_BP_C:RefreshStateOnLoad() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AROS_Treelock_Interaction_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

---@param Data TArray<FSavableActorState>
AROS_Treelock_Interaction_BP_C['Restore State From Save Data'] = function(self, Data) end
