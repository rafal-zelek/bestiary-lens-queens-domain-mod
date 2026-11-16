---@meta

---@class UOptionsMenu_BindingEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FieldLabel UCommonTextBlock
---@field FS_Button UFS_Button_C
---@field Label UBorder
---@field MainTextBlock URichTextBlock
---@field ScaleBox_1 UScaleBox
---@field SizeBox_0 USizeBox
---@field Spacer_108 USpacer
---@field Name FText
---@field ['2ndBinding'] boolean
---@field List UOptionsList_base_C
---@field ActionName FName
---@field PauseAction boolean
---@field ['Bindings Options List'] UBindings_OptionsList_C
local UOptionsMenu_BindingEntry_C = {}

---@param Key FKey
---@param Cancel boolean
function UOptionsMenu_BindingEntry_C:BindSelected(Key, Cancel) end

---@param Button UFS_Button_C
function UOptionsMenu_BindingEntry_C:BndEvt__OptionsMenu_BindingEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_BindingEntry_C:BndEvt__OptionsMenu_BindingEntry_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_BindingEntry_C:ClearBinding() end

function UOptionsMenu_BindingEntry_C:Clicked() end

function UOptionsMenu_BindingEntry_C:Construct() end

function UOptionsMenu_BindingEntry_C:CustomEvent_0() end

---@param EntryPoint int32
function UOptionsMenu_BindingEntry_C:ExecuteUbergraph_OptionsMenu_BindingEntry(EntryPoint) end

---@param List UOptionsList_base_C
function UOptionsMenu_BindingEntry_C:Init(List) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_BindingEntry_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UOptionsMenu_BindingEntry_C:PreConstruct(IsDesignTime) end

function UOptionsMenu_BindingEntry_C:RefreshDisplay() end

function UOptionsMenu_BindingEntry_C:RefreshTextLayout() end

---@param TemplateDefaults UFS_SystemSave_C
function UOptionsMenu_BindingEntry_C:RevertToDefault(TemplateDefaults) end

---@param Key FKey
function UOptionsMenu_BindingEntry_C:SetValidityStyle(Key) end

UOptionsMenu_BindingEntry_C['bindigns changed'] = function(self) end
