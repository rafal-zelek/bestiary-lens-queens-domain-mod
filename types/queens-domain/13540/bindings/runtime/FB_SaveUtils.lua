---@meta

---@class FFB_SavableActionBinding
---@field Bindings TArray<FInputActionKeyMapping>
local FFB_SavableActionBinding = {}

---@class FFB_SavableAxisBinding
---@field Bindings TArray<FInputAxisKeyMapping>
local FFB_SavableAxisBinding = {}

---@class UFB_AsyncSaveGameOperation : UObject
---@field TempSave USaveGame
---@field CompletedEvent FFB_AsyncSaveGameOperationCompletedEvent
local UFB_AsyncSaveGameOperation = {}

---@class UFB_AsyncSaveSystem : UEngineSubsystem
---@field RunningSaveOps TArray<UFB_AsyncSaveGameOperation>
---@field CurrentlyWritingSave boolean
local UFB_AsyncSaveSystem = {}

---@class UFB_DefaultInputBindings : UPrimaryDataAsset
---@field Actions TMap<FName, FFB_SavableActionBinding>
---@field Axes TMap<FName, FFB_SavableAxisBinding>
local UFB_DefaultInputBindings = {}

---@class UFB_SaveGame : USaveGame
local UFB_SaveGame = {}

---@class UFB_SaveSubsystem : UGameInstanceSubsystem
---@field CurrentlyActiveSave UFB_SaveGame
---@field CurrentlyActiveSystemSave UFB_SystemSaveGame
local UFB_SaveSubsystem = {}

---@class UFB_SaveSystem_FunctionLibrary : UBlueprintFunctionLibrary
local UFB_SaveSystem_FunctionLibrary = {}

---@class UFB_SystemSaveGame : USaveGame
---@field ActionBindingOverrides TMap<FName, FFB_SavableActionBinding>
---@field AxisBindingOverrides TMap<FName, FFB_SavableAxisBinding>
local UFB_SystemSaveGame = {}

---@param SaveGameObject USaveGame
---@param SlotName FString
---@param UserIndex int32
---@param Callback FFB_AsyncSaveGameToSlotCallback
function UFB_AsyncSaveSystem:FB_AsyncSaveGameToSlot(SaveGameObject, SlotName, UserIndex, Callback) end

function UFB_SaveSubsystem:BP_GetActiveSystemSave() end

function UFB_SaveSubsystem:DeleteCurrentSaveFile() end

---@param SlotToClear int32
function UFB_SaveSubsystem:DeleteSaveFile(SlotToClear) end

function UFB_SaveSubsystem:DeleteSystemSaveFile() end

function UFB_SaveSubsystem:ForceReloadSave() end

---@param bSystem boolean
function UFB_SaveSubsystem:GetCurrentSaveFileName(bSystem) end

function UFB_SaveSubsystem:GetCurrentSaveFileSlot() end

---@param bSystem boolean
---@param Slot int32
function UFB_SaveSubsystem:GetSaveFileName(bSystem, Slot) end

---@param NewSlot int32
function UFB_SaveSubsystem:SetCurrentSaveFileSlot(NewSlot) end

---@param WorldContextObject UObject
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:ApplyOverriddenInputBindings(WorldContextObject, Defaults) end

---@param WorldContextObject UObject
---@param Action FName
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:GetBindingsForAction(WorldContextObject, Action, Defaults) end

---@param WorldContextObject UObject
---@param Action FName
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:GetBindingsForAxis(WorldContextObject, Action, Defaults) end

---@param WorldContextObject UObject
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:RevertToOverriddenInputBindings(WorldContextObject, Defaults) end

---@param WorldContextObject UObject
---@param Action FName
---@param Key FKey
---@param BindingIndex int32
---@param bSkipConflictResolution boolean
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:SetInputActionBinding(WorldContextObject, Action, Key, BindingIndex, bSkipConflictResolution, Defaults) end

---@param WorldContextObject UObject
---@param Action FName
---@param Key FKey
---@param BindingIndex int32
---@param Scale float
---@param bSkipConflictResolution boolean
---@param Defaults UFB_DefaultInputBindings
function UFB_SaveSystem_FunctionLibrary:SetInputAxisBinding(WorldContextObject, Action, Key, BindingIndex, Scale, bSkipConflictResolution, Defaults) end
