---@meta

---@class AJosamiPrisonDoor_C : APT_Door_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
local AJosamiPrisonDoor_C = {}

function AJosamiPrisonDoor_C:BndEvt__SZ_JailDoor_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

function AJosamiPrisonDoor_C:CustomEvent_0() end

---@param EntryPoint int32
function AJosamiPrisonDoor_C:ExecuteUbergraph_JosamiPrisonDoor(EntryPoint) end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AJosamiPrisonDoor_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AJosamiPrisonDoor_C:Unlock() end
