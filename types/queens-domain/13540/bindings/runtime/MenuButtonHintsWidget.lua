---@meta

---@class UMenuButtonHintsWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HintContainer UHorizontalBox
---@field DefaultHints TArray<FButtonHint>
local UMenuButtonHintsWidget_C = {}

function UMenuButtonHintsWidget_C:Construct() end

---@param EntryPoint int32
function UMenuButtonHintsWidget_C:ExecuteUbergraph_MenuButtonHintsWidget(EntryPoint) end

---@param IsDesignTime boolean
function UMenuButtonHintsWidget_C:PreConstruct(IsDesignTime) end

function UMenuButtonHintsWidget_C:RevertToDefaultHints() end

---@param Hints TArray<FButtonHint>
function UMenuButtonHintsWidget_C:SetHints(Hints) end
