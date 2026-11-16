---@meta

---@class UOptionsMenu_Entry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border_0 UBorder
---@field ControlWidget UNamedSlot
---@field FieldLabel UCommonTextBlock
---@field FS_Button UFS_Button_C
---@field SizeBox_0 USizeBox
---@field Spacer_86 USpacer
---@field MyControl UOptionsMenu_Control_Base_C
---@field Name FText
---@field Property FName
---@field List UOptionsList_base_C
---@field DisableRevert boolean
---@field HideLabel boolean
---@field TextSizeCap float
---@field ['Special Sounds'] boolean
---@field HideOnConsole boolean
---@field Selected FOptionsMenu_Entry_CSelected
---@field Clicked FOptionsMenu_Entry_CClicked
local UOptionsMenu_Entry_C = {}

---@param Button UFS_Button_C
function UOptionsMenu_Entry_C:BndEvt__OptionsMenu_Entry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UOptionsMenu_Entry_C:BndEvt__OptionsMenu_Entry_FS_Button_K2Node_ComponentBoundEvent_1_Deselected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_Entry_C:BndEvt__OptionsMenu_Entry_FS_Button_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_Entry_C:Clicked__DelegateSignature() end

function UOptionsMenu_Entry_C:Construct() end

---@param EntryPoint int32
function UOptionsMenu_Entry_C:ExecuteUbergraph_OptionsMenu_Entry(EntryPoint) end

---@param List UOptionsList_base_C
function UOptionsMenu_Entry_C:Init(List) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_Entry_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UOptionsMenu_Entry_C:PreConstruct(IsDesignTime) end

---@param TemplateDefaults UFS_SystemSave_C
function UOptionsMenu_Entry_C:RevertToDefault(TemplateDefaults) end

---@param Entry UOptionsMenu_Entry_C
function UOptionsMenu_Entry_C:Selected__DelegateSignature(Entry) end
