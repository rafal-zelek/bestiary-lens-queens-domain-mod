---@meta

---@class UInputViewIcon_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Icon UImage
---@field ['bDisplayWhile Mouse And Keyboard'] boolean
---@field Binding UUIButtonBindingDA_C
---@field CurrentInputType ECommonInputType
---@field Hide FInputViewIcon_CHide
---@field UnHide FInputViewIcon_CUnHide
local UInputViewIcon_C = {}

function UInputViewIcon_C:Construct() end

---@param EntryPoint int32
function UInputViewIcon_C:ExecuteUbergraph_InputViewIcon(EntryPoint) end

function UInputViewIcon_C:GetIcon() end

function UInputViewIcon_C:Hide__DelegateSignature() end

---@param bNewInputType ECommonInputType
function UInputViewIcon_C:InputTypeChanged(bNewInputType) end

---@param IsDesignTime boolean
function UInputViewIcon_C:PreConstruct(IsDesignTime) end

function UInputViewIcon_C:Refresh() end

function UInputViewIcon_C:RefreshKeyIcon() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UInputViewIcon_C:Tick(MyGeometry, InDeltaTime) end

function UInputViewIcon_C:UnHide__DelegateSignature() end
