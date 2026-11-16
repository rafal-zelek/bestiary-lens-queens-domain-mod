---@meta

---@class ACastle_Door_Int_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lock UStaticMeshComponent
---@field DoorMesh1 UStaticMeshComponent
---@field VisualKeyComponent UVisualKeyComponent_C
---@field Scene USceneComponent
---@field Audio UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_BD00946548FB6E817A933FAD92151487 float
---@field Timeline_0__Direction_BD00946548FB6E817A933FAD92151487 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field CurrentAnimationIsRightKey boolean
---@field CurrentAnimationKey UFS_ItemData_C
---@field KeyMaterial TMap<UFS_ItemData_C, UMaterialInstance>
---@field KeyMesh TMap<UFS_ItemData_C, UStaticMesh>
---@field LockInDoor boolean
---@field DoorMode CastleIntDoorModes::Type
---@field Lockmesh TMap<CastleIntDoorModes::Type, UStaticMesh>
---@field ModeKeyMap TMap<CastleIntDoorModes::Type, UFS_ItemData_C>
local ACastle_Door_Int_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ACastle_Door_Int_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Str float
function ACastle_Door_Int_BP_C:BndEvt__ForbiddenDoor_BaseClass_VisualKeyComponent_K2Node_ComponentBoundEvent_0_GlowControl__DelegateSignature(Str) end

function ACastle_Door_Int_BP_C:BndEvt__ForbiddenDoor_BaseClass_VisualKeyComponent_K2Node_ComponentBoundEvent_1_UnlockSound__DelegateSignature() end

function ACastle_Door_Int_BP_C:CloseDoor() end

function ACastle_Door_Int_BP_C:CustomEvent() end

function ACastle_Door_Int_BP_C:CustomEvent_0() end

function ACastle_Door_Int_BP_C:DoUnlockAnim() end

---@param EntryPoint int32
function ACastle_Door_Int_BP_C:ExecuteUbergraph_Castle_Door_Int_BP(EntryPoint) end

function ACastle_Door_Int_BP_C:FailedUnlockAnim() end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ACastle_Door_Int_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function ACastle_Door_Int_BP_C:OpenDoor() end

function ACastle_Door_Int_BP_C:ReceiveBeginPlay() end

function ACastle_Door_Int_BP_C:SetToOpenState() end

function ACastle_Door_Int_BP_C:Timeline_0__FinishedFunc() end

function ACastle_Door_Int_BP_C:Timeline_0__UpdateFunc() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ACastle_Door_Int_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ACastle_Door_Int_BP_C:UserConstructionScript() end
