---@meta

---@class ALabElevatorSwitch_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
---@field Timeline_0_Anim_B833579C485B7AEBB564A7820DA20EA4 float
---@field Timeline_0__Direction_B833579C485B7AEBB564A7820DA20EA4 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Material TMap<UFS_ItemData_C, UMaterialInstance>
---@field CurrentAnimKey UFS_ItemData_C
---@field ValidKeys TMap<UFS_ItemData_C, int32>
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field RightKey boolean
local ALabElevatorSwitch_C = {}

---@param Str float
function ALabElevatorSwitch_C:BndEvt__LabElevatorSwitch_VisualKeyComponent_K2Node_ComponentBoundEvent_0_GlowControl__DelegateSignature(Str) end

function ALabElevatorSwitch_C:BndEvt__LabElevatorSwitch_VisualKeyComponent_K2Node_ComponentBoundEvent_1_UnlockSound__DelegateSignature() end

function ALabElevatorSwitch_C:CorrectKeyInserted() end

function ALabElevatorSwitch_C:DoUnlockAnim() end

---@param EntryPoint int32
function ALabElevatorSwitch_C:ExecuteUbergraph_LabElevatorSwitch(EntryPoint) end

function ALabElevatorSwitch_C:FailedUnlockAnim() end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ALabElevatorSwitch_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

function ALabElevatorSwitch_C:IncorrectKeyInserted() end

---@param PlayerInteracting AActor
function ALabElevatorSwitch_C:Interact(PlayerInteracting) end

function ALabElevatorSwitch_C:ReceiveBeginPlay() end

function ALabElevatorSwitch_C:Timeline_0__FinishedFunc() end

function ALabElevatorSwitch_C:Timeline_0__UpdateFunc() end

function ALabElevatorSwitch_C:TryPullLever() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ALabElevatorSwitch_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ALabElevatorSwitch_C:UserConstructionScript() end
