---@meta

---@class UFS_Button_C : UCommonButtonBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Subcontent UNamedSlot
---@field Selected FFS_Button_CSelected
---@field Deselected FFS_Button_CDeselected
---@field Focused boolean
---@field ['Don\'tSetFocusWhenHovering'] boolean
---@field Hovered FFS_Button_CHovered
---@field Unhovered FFS_Button_CUnhovered
---@field NotifyThisWhenFocused UWidget
---@field ['SHow/HideThisWhenFocused'] UWidget
---@field SpecialSounds boolean
---@field DisableSound boolean
---@field ConfirmButton UUIButtonBindingDA_C
local UFS_Button_C = {}

function UFS_Button_C:BP_OnClicked() end

function UFS_Button_C:BP_OnDeselected() end

function UFS_Button_C:BP_OnHovered() end

function UFS_Button_C:BP_OnSelected() end

function UFS_Button_C:BP_OnUnhovered() end

function UFS_Button_C:Construct() end

---@param Button UFS_Button_C
function UFS_Button_C:Deselected__DelegateSignature(Button) end

---@param EntryPoint int32
function UFS_Button_C:ExecuteUbergraph_FS_Button(EntryPoint) end

function UFS_Button_C:Hovered__DelegateSignature() end

---@param InFocusEvent FFocusEvent
function UFS_Button_C:OnAddedToFocusPath(InFocusEvent) end

function UFS_Button_C:OnCurrentTextStyleChanged() end

---@param InFocusEvent FFocusEvent
function UFS_Button_C:OnFocusLost(InFocusEvent) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UFS_Button_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param InFocusEvent FFocusEvent
function UFS_Button_C:OnRemovedFromFocusPath(InFocusEvent) end

---@param IsDesignTime boolean
function UFS_Button_C:PreConstruct(IsDesignTime) end

---@param Button UFS_Button_C
function UFS_Button_C:Selected__DelegateSignature(Button) end

function UFS_Button_C:Unhovered__DelegateSignature() end
