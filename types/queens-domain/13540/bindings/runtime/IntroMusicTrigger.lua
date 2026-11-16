---@meta

---@class AIntroMusicTrigger_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
local AIntroMusicTrigger_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AIntroMusicTrigger_C:BndEvt__IntroMusicTrigger_Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function AIntroMusicTrigger_C:ExecuteUbergraph_IntroMusicTrigger(EntryPoint) end
