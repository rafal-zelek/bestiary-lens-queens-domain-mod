---@meta

---@class UOptionsMenu_OptionSelect_C : UOptionsMenu_Control_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastOption UFS_Button_C
---@field NextOption UFS_Button_C
---@field OptionText UCommonTextBlock
---@field Size USizeBox
---@field ['Menu Entry'] UOptionsMenu_Entry_C
---@field Property FName
---@field NextButtons TSet<FKey>
---@field CurrentValue int32
---@field Options TArray<FText>
---@field LastButtons TSet<FKey>
---@field LateInit boolean
---@field OptionChanged FOptionsMenu_OptionSelect_COptionChanged
---@field NoButtonBG boolean
local UOptionsMenu_OptionSelect_C = {}

---@param Button UCommonButtonBase
function UOptionsMenu_OptionSelect_C:BndEvt__OptionsMenu_OptionSelect_LastOption_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_OptionSelect_C:BndEvt__OptionsMenu_OptionSelect_NextOption_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_OptionSelect_C:Construct() end

function UOptionsMenu_OptionSelect_C:Decrement() end

---@param EntryPoint int32
function UOptionsMenu_OptionSelect_C:ExecuteUbergraph_OptionsMenu_OptionSelect(EntryPoint) end

function UOptionsMenu_OptionSelect_C:Increment() end

---@param MenuEntry UOptionsMenu_Entry_C
function UOptionsMenu_OptionSelect_C:Init(MenuEntry) end

function UOptionsMenu_OptionSelect_C:LoadFromSave() end

function UOptionsMenu_OptionSelect_C:OptionChanged__DelegateSignature() end

---@param IsDesignTime boolean
function UOptionsMenu_OptionSelect_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_OptionSelect_C:ReceiveKeyDown(MyGeometry, InKeyEvent) end

function UOptionsMenu_OptionSelect_C:Refreshtext() end

---@param Template UFS_SystemSave_C
function UOptionsMenu_OptionSelect_C:Revert(Template) end

function UOptionsMenu_OptionSelect_C:SaveProperty() end
