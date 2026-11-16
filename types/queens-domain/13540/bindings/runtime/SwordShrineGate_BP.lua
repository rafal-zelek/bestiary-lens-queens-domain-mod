---@meta

---@class ASwordShrineGate_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ClosedBox UBoxComponent
---@field VisualKeyComponent UVisualKeyComponent_C
---@field NavBlocker UBoxComponent
---@field VisBLocker UBoxComponent
---@field SwordShrineLock UStaticMeshComponent
---@field OppositeDoorMesh UStaticMeshComponent
---@field SwordShrine_Gate_Post1 UStaticMeshComponent
---@field SwordShrine_Gate_Post UStaticMeshComponent
---@field Timeline_0_Right_A022488F410046E238B497BF3D3A7F5E float
---@field Timeline_0_Left_A022488F410046E238B497BF3D3A7F5E float
---@field Timeline_0__Direction_A022488F410046E238B497BF3D3A7F5E ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ['Player Interacting_0'] AFS_PlayerChar_C
---@field CloseOnActivate boolean
---@field LockedText FText
---@field DisableInteract boolean
local ASwordShrineGate_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASwordShrineGate_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ASwordShrineGate_BP_C:BndEvt__SwordShrineGate_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

function ASwordShrineGate_BP_C:CloseDoor() end

function ASwordShrineGate_BP_C:CustomEvent_0() end

---@param EntryPoint int32
function ASwordShrineGate_BP_C:ExecuteUbergraph_SwordShrineGate_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASwordShrineGate_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ASwordShrineGate_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param PlayerInteracting AActor
function ASwordShrineGate_BP_C:Interact(PlayerInteracting) end

function ASwordShrineGate_BP_C:OpenDoor() end

function ASwordShrineGate_BP_C:SetToOpenState() end

function ASwordShrineGate_BP_C:Timeline_0__FinishedFunc() end

function ASwordShrineGate_BP_C:Timeline_0__UpdateFunc() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ASwordShrineGate_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ASwordShrineGate_BP_C:Unlock() end
