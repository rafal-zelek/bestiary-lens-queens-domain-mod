---@meta

---@class FCommandData
---@field Enable boolean
---@field Function FString
---@field Info FString
local FCommandData = {}

---@class UCVarUtils : UBlueprintFunctionLibrary
local UCVarUtils = {}

---@class UCommandManager : UCheatManager
---@field EnableLogging boolean
---@field Commands TMap<FString, FCommandData>
local UCommandManager = {}

function UCVarUtils:ConsoleVarMulticastDelegate__DelegateSignature() end

---@param VarName FString
---@param KeepState boolean
function UCVarUtils:DeleteCVar(VarName, KeepState) end

---@param VarName FString
function UCVarUtils:GetBoolCVar(VarName) end

---@param VarName FString
function UCVarUtils:GetFloatCVar(VarName) end

---@param VarName FString
function UCVarUtils:GetHelpText(VarName) end

---@param VarName FString
function UCVarUtils:GetInt32CVar(VarName) end

---@param VarName FString
function UCVarUtils:GetStringCVar(VarName) end

---@param VarName FString
---@param Type GenericType
function UCVarUtils:IsVarType(VarName, Type) end

---@param VarName FString
---@param OnChange FOnVarChangeDelegateOnChange
function UCVarUtils:OnVarChangeDelegate(VarName, OnChange) end

---@param VarName FString
---@param Value boolean
---@param HelpText FString
function UCVarUtils:SetBoolCVar(VarName, Value, HelpText) end

---@param VarName FString
---@param Value float
---@param HelpText FString
function UCVarUtils:SetFloatCVar(VarName, Value, HelpText) end

---@param VarName FString
---@param Value int32
---@param HelpText FString
function UCVarUtils:SetInt32CVar(VarName, Value, HelpText) end

---@param VarName FString
---@param Value FString
---@param HelpText FString
function UCVarUtils:SetStringCVar(VarName, Value, HelpText) end

function UCommandManager:ClearConsole() end

---@param CommandName FString
function UCommandManager:DeleteCommand(CommandName) end

---@param Args TArray<FString>
---@param Command FString
function UCommandManager:ExecConsoleWithArgs(Args, Command) end

---@param InText FText
function UCommandManager:PrintToConsole(InText) end

---@param InArgs FString
function UCommandManager:ToArgs(InArgs) end
