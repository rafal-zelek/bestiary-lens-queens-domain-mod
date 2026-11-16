---@meta

---@class UKeyUseMenuEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Icon UImage
---@field ItemCount UCommonTextBlock
---@field KeyMenu UKeyUseMenu_C
---@field Item UFS_ItemData_C
---@field Clicked FKeyUseMenuEntry_CClicked
---@field Index int32
local UKeyUseMenuEntry_C = {}

---@param Button UFS_Button_C
function UKeyUseMenuEntry_C:BndEvt__KeyUseMenuEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UKeyUseMenuEntry_C:BndEvt__KeyUseMenuEntry_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Item UFS_ItemData_C
function UKeyUseMenuEntry_C:Clicked__DelegateSignature(Item) end

function UKeyUseMenuEntry_C:Construct() end

---@param EntryPoint int32
function UKeyUseMenuEntry_C:ExecuteUbergraph_KeyUseMenuEntry(EntryPoint) end
