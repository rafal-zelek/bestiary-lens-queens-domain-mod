---@meta

---@class UOptionsMenu_Control_Base_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkipSavingOption boolean
local UOptionsMenu_Control_Base_C = {}

---@param EntryPoint int32
function UOptionsMenu_Control_Base_C:ExecuteUbergraph_OptionsMenu_Control_Base(EntryPoint) end

---@param MenuEntry UOptionsMenu_Entry_C
function UOptionsMenu_Control_Base_C:Init(MenuEntry) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_Control_Base_C:ReceiveKeyDown(MyGeometry, InKeyEvent) end

---@param Template UFS_SystemSave_C
function UOptionsMenu_Control_Base_C:Revert(Template) end

---@param Selected boolean
function UOptionsMenu_Control_Base_C:Selected(Selected) end
