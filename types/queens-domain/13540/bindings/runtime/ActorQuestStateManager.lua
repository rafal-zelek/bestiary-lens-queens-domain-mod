---@meta

---@class AActorQuestStateManager_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
---@field WorldEventReceiver UWorldEventReceiver_C
---@field NoRefreshAreas TSet<UFS_LocationData>
---@field StateSaveDataname FName
---@field InternalState int32
---@field States TArray<AActorQuestState_C>
---@field DesiredState int32
---@field DisableWorldRefreshUpdate boolean
local AActorQuestStateManager_C = {}

function AActorQuestStateManager_C:BndEvt__ActorQuestStateManager_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldRefresh__DelegateSignature() end

---@param NewValue int32
function AActorQuestStateManager_C:BndEvt__ActorQuestStateManager_WorldEventReceiver_K2Node_ComponentBoundEvent_1_OnQuestStateUpdated__DelegateSignature(NewValue) end

---@param EntryPoint int32
function AActorQuestStateManager_C:ExecuteUbergraph_ActorQuestStateManager(EntryPoint) end

function AActorQuestStateManager_C:ForceRefresh() end

function AActorQuestStateManager_C:ForceSyncUpdate() end

function AActorQuestStateManager_C:ReceiveBeginPlay() end

function AActorQuestStateManager_C:RefreshStates() end

function AActorQuestStateManager_C:UpdateDesiredState() end

function AActorQuestStateManager_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AActorQuestStateManager_C['Restore State From Save Data'] = function(self, Data) end
