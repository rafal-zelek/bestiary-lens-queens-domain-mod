---@meta

---@class UOptionsMenu_SliderControl_C : UOptionsMenu_Control_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Slider_99 USlider
---@field UIArea UUIArea_C
---@field ValueReadout UCommonTextBlock
---@field ['Menu Entry'] UOptionsMenu_Entry_C
---@field Property FName
---@field CurrentValue float
---@field IncrementAmount float
---@field Min float
---@field Max float
---@field IncreaseButtons TSet<FKey>
---@field DecreaseButtons TSet<FKey>
---@field NumberDisplayMaxDecimal int32
---@field SelectedBGColor FLinearColor
---@field UnSelectedBGColor FLinearColor
---@field DisplayFormat FText
---@field SelectedStyle FSliderStyle
---@field UnselectedStyle FSliderStyle
---@field ChangeTextWhenZero boolean
---@field TextWhenZero FText
---@field ValueChanged FOptionsMenu_SliderControl_CValueChanged
local UOptionsMenu_SliderControl_C = {}

---@param Value float
function UOptionsMenu_SliderControl_C:BndEvt__OptionsMenu_SliderControl_Slider_99_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(Value) end

function UOptionsMenu_SliderControl_C:BndEvt__OptionsMenu_SliderControl_Slider_99_K2Node_ComponentBoundEvent_1_OnMouseCaptureEndEvent__DelegateSignature() end

---@param EntryPoint int32
function UOptionsMenu_SliderControl_C:ExecuteUbergraph_OptionsMenu_SliderControl(EntryPoint) end

function UOptionsMenu_SliderControl_C:ExternalDecrease() end

function UOptionsMenu_SliderControl_C:ExternalIncrease() end

---@param MenuEntry UOptionsMenu_Entry_C
function UOptionsMenu_SliderControl_C:Init(MenuEntry) end

---@param IsDesignTime boolean
function UOptionsMenu_SliderControl_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_SliderControl_C:ReceiveKeyDown(MyGeometry, InKeyEvent) end

function UOptionsMenu_SliderControl_C:RefreshPostInit() end

---@param Template UFS_SystemSave_C
function UOptionsMenu_SliderControl_C:Revert(Template) end

---@param A float
function UOptionsMenu_SliderControl_C:RoundValue(A) end

function UOptionsMenu_SliderControl_C:SaveProperty() end

---@param Selected boolean
function UOptionsMenu_SliderControl_C:Selected(Selected) end

function UOptionsMenu_SliderControl_C:UpdateReadout() end

---@param Val float
function UOptionsMenu_SliderControl_C:ValueChanged__DelegateSignature(Val) end

function UOptionsMenu_SliderControl_C:WriteProperty() end
