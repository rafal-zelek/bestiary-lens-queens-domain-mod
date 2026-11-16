---@meta

---@class UBindings_OptionsList_C : UOptionsList_base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttack UOptionsMenu_BindingEntry_Group_C
---@field Attack UOptionsMenu_BindingEntry_Group_C
---@field EquipThrowWeapon1 UOptionsMenu_BindingEntry_Group_C
---@field EquipThrowWeapon2 UOptionsMenu_BindingEntry_Group_C
---@field EquipThrowWeapon3 UOptionsMenu_BindingEntry_Group_C
---@field EquipWeapon1 UOptionsMenu_BindingEntry_Group_C
---@field EquipWeapon2 UOptionsMenu_BindingEntry_Group_C
---@field EquipWeapon3 UOptionsMenu_BindingEntry_Group_C
---@field Interact UOptionsMenu_BindingEntry_Group_C
---@field Jump UOptionsMenu_BindingEntry_Group_C
---@field LastDagger UOptionsMenu_BindingEntry_Group_C
---@field LookDown UOptionsMenu_AxisBindingEntry_Group_C
---@field Lookleft UOptionsMenu_AxisBindingEntry_Group_C
---@field LookRight UOptionsMenu_AxisBindingEntry_Group_C
---@field LookUp UOptionsMenu_AxisBindingEntry_Group_C
---@field MoveBackward UOptionsMenu_AxisBindingEntry_Group_C
---@field MoveForward UOptionsMenu_AxisBindingEntry_Group_C
---@field MoveLeft UOptionsMenu_AxisBindingEntry_Group_C
---@field MoveRight UOptionsMenu_AxisBindingEntry_Group_C
---@field NextDagger UOptionsMenu_BindingEntry_Group_C
---@field NextItem UOptionsMenu_BindingEntry_Group_C
---@field NextWeapon UOptionsMenu_BindingEntry_Group_C
---@field OptionsList UScrollBox
---@field Pause UOptionsMenu_BindingEntry_Group_C
---@field PhotoMode UOptionsMenu_BindingEntry_Group_C
---@field PreviousItem UOptionsMenu_BindingEntry_Group_C
---@field PreviousWeapon UOptionsMenu_BindingEntry_Group_C
---@field RegularDagger UOptionsMenu_BindingEntry_Group_C
---@field ResetToDefaultButton UFS_Button_C
---@field Run UOptionsMenu_BindingEntry_Group_C
---@field Status UOptionsMenu_BindingEntry_Group_C
---@field UltraAttack UOptionsMenu_BindingEntry_Group_C
---@field UseItem UOptionsMenu_BindingEntry_Group_C
---@field WindDash UOptionsMenu_BindingEntry_Group_C
---@field GamepadMode boolean
local UBindings_OptionsList_C = {}

---@param Button UCommonButtonBase
function UBindings_OptionsList_C:BndEvt__Bindings_OptionsList_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UBindings_OptionsList_C:CancelledRevertBinds() end

function UBindings_OptionsList_C:Close() end

function UBindings_OptionsList_C:Construct() end

function UBindings_OptionsList_C:CustomEvent_0() end

function UBindings_OptionsList_C:CustomEvent_1() end

---@param EntryPoint int32
function UBindings_OptionsList_C:ExecuteUbergraph_Bindings_OptionsList(EntryPoint) end

---@param First UWidget
function UBindings_OptionsList_C:GetFirstWidget(First) end

function UBindings_OptionsList_C:Open() end

---@param IsDesignTime boolean
function UBindings_OptionsList_C:PreConstruct(IsDesignTime) end

function UBindings_OptionsList_C:ResetToDefault() end

function UBindings_OptionsList_C:TryClosingBindingMenu() end

---@param Valid boolean
function UBindings_OptionsList_C:ValidateBindings(Valid) end
