---@meta

---@class UFS_Textbox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CharsToLeft UTextBlock
---@field CharsToRight UTextBlock
---@field CursorIcon UTextBlock
---@field InsertIndex int32
---@field CurrentContents TArray<FString>
---@field MaxLen int32
---@field Locked boolean
local UFS_Textbox_C = {}

---@param KB UVirtualKeyboard_C
function UFS_Textbox_C:BindToVirtualKeyboard(KB) end

function UFS_Textbox_C:CarretLeft() end

function UFS_Textbox_C:CarretRight() end

function UFS_Textbox_C:ClampIndex() end

function UFS_Textbox_C:ClearText() end

function UFS_Textbox_C:Construct() end

function UFS_Textbox_C:DeleteCharacter() end

---@param EntryPoint int32
function UFS_Textbox_C:ExecuteUbergraph_FS_Textbox(EntryPoint) end

---@param Key FString
function UFS_Textbox_C:InsertCharacter(Key) end

function UFS_Textbox_C:RefreshDisplay() end

---@param String FString
function UFS_Textbox_C:RetreiveString(String) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFS_Textbox_C:Tick(MyGeometry, InDeltaTime) end
