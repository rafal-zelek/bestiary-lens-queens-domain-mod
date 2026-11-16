---@meta

---@class UOptionsMenu_LanguageSelector_C : UOptionsMenu_OptionSelect_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Languages TArray<FString>
---@field Swapped FOptionsMenu_LanguageSelector_CSwapped
---@field LanguageName FText
---@field ['In Width Override'] float
local UOptionsMenu_LanguageSelector_C = {}

function UOptionsMenu_LanguageSelector_C:Construct() end

function UOptionsMenu_LanguageSelector_C:Decrement() end

---@param EntryPoint int32
function UOptionsMenu_LanguageSelector_C:ExecuteUbergraph_OptionsMenu_LanguageSelector(EntryPoint) end

function UOptionsMenu_LanguageSelector_C:Increment() end

function UOptionsMenu_LanguageSelector_C:LoadFromSave() end

---@param IsDesignTime boolean
function UOptionsMenu_LanguageSelector_C:PreConstruct(IsDesignTime) end

---@param Template UFS_SystemSave_C
function UOptionsMenu_LanguageSelector_C:Revert(Template) end

function UOptionsMenu_LanguageSelector_C:SaveProperty() end

function UOptionsMenu_LanguageSelector_C:SetUpOptions() end

function UOptionsMenu_LanguageSelector_C:Swapped__DelegateSignature() end
