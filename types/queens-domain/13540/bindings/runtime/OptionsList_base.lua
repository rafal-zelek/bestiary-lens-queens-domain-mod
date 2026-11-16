---@meta

---@class UOptionsList_base_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScrollBox UScrollBox
---@field RecursiveOptionSearch boolean
local UOptionsList_base_C = {}

function UOptionsList_base_C:Close() end

function UOptionsList_base_C:Construct() end

---@param EntryPoint int32
function UOptionsList_base_C:ExecuteUbergraph_OptionsList_base(EntryPoint) end

---@param First UWidget
function UOptionsList_base_C:GetFirstWidget(First) end

function UOptionsList_base_C:Open() end

---@param Entry UWidget
function UOptionsList_base_C:OptionSelectionChanged(Entry) end

function UOptionsList_base_C:ResetOptionsListToDefault() end
