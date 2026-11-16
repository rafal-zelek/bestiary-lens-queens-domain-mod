---@meta

---@class AQuestForceUpdateVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field QuestStateManager AActorQuestStateManager_C
local AQuestForceUpdateVolume_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AQuestForceUpdateVolume_C:BndEvt__QuestForceUpdateVolume_Box_K2Node_ComponentBoundEvent_0_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function AQuestForceUpdateVolume_C:ExecuteUbergraph_QuestForceUpdateVolume(EntryPoint) end
