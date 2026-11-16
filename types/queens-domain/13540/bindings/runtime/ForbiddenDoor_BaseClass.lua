---@meta

---@class AForbiddenDoor_BaseClass_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
---@field Scene USceneComponent
---@field Audio UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_EBAB301844A891269FE5BEAE9D5BB762 float
---@field Timeline_0__Direction_EBAB301844A891269FE5BEAE9D5BB762 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field RightKey boolean
---@field Key UFS_ItemData_C
---@field Material TMap<UFS_ItemData_C, UMaterialInstance>
---@field KeyMesh TMap<UFS_ItemData_C, UStaticMesh>
---@field LockInDoor boolean
local AForbiddenDoor_BaseClass_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AForbiddenDoor_BaseClass_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Str float
function AForbiddenDoor_BaseClass_C:BndEvt__ForbiddenDoor_BaseClass_VisualKeyComponent_K2Node_ComponentBoundEvent_0_GlowControl__DelegateSignature(Str) end

function AForbiddenDoor_BaseClass_C:BndEvt__ForbiddenDoor_BaseClass_VisualKeyComponent_K2Node_ComponentBoundEvent_1_UnlockSound__DelegateSignature() end

function AForbiddenDoor_BaseClass_C:CloseDoor() end

function AForbiddenDoor_BaseClass_C:CustomEvent() end

function AForbiddenDoor_BaseClass_C:CustomEvent_0() end

function AForbiddenDoor_BaseClass_C:DoUnlockAnim() end

---@param Amt float
function AForbiddenDoor_BaseClass_C:DoorProgress(Amt) end

---@param EntryPoint int32
function AForbiddenDoor_BaseClass_C:ExecuteUbergraph_ForbiddenDoor_BaseClass(EntryPoint) end

function AForbiddenDoor_BaseClass_C:FailedUnlockAnim() end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AForbiddenDoor_BaseClass_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function AForbiddenDoor_BaseClass_C:OpenDoor() end

function AForbiddenDoor_BaseClass_C:ReceiveBeginPlay() end

function AForbiddenDoor_BaseClass_C:SetToOpenState() end

function AForbiddenDoor_BaseClass_C:Timeline_0__FinishedFunc() end

function AForbiddenDoor_BaseClass_C:Timeline_0__UpdateFunc() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AForbiddenDoor_BaseClass_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AForbiddenDoor_BaseClass_C:UpdateMesh() end

function AForbiddenDoor_BaseClass_C:UserConstructionScript() end
