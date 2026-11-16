---@meta

---@class ASavableActor_C : AFS_Actor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SaveHelper USaveHelper_C
---@field DefaultSceneRoot USceneComponent
---@field GUIDs TArray<FGuid>
---@field SaveDataCount int32
---@field MySaveData TArray<FSavableActorState>
local ASavableActor_C = {}

function ASavableActor_C:BndEvt__SavableActor_SaveHelper_K2Node_ComponentBoundEvent_1_SaveDataLoaded__DelegateSignature() end

function ASavableActor_C:CacheSaveData() end

function ASavableActor_C:CheckGUID() end

---@param EntryPoint int32
function ASavableActor_C:ExecuteUbergraph_SavableActor(EntryPoint) end

---@param CurrentIndex int32
---@param ItemToFind FGuid
function ASavableActor_C:FixDuplicateGUIDs(CurrentIndex, ItemToFind) end

---@param Index int32
---@param IsSet boolean
---@param ValueAsBool boolean
---@param Value int32
function ASavableActor_C:GetSavableActorDataAtIndex(Index, IsSet, ValueAsBool, Value) end

function ASavableActor_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ASavableActor_C:ReceiveEndPlay(EndPlayReason) end

function ASavableActor_C:RestoreFromSave() end

function ASavableActor_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ASavableActor_C['Restore State From Save Data'] = function(self, Data) end

---@param Index int32
---@param Data int32
ASavableActor_C['Save Data Index to World Save'] = function(self, Index, Data) end
