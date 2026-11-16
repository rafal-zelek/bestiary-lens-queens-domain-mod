---@meta

---@class AActorQuestState_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
---@field DefaultSceneRoot USceneComponent
---@field ActorsToShow TArray<AActor>
local AActorQuestState_C = {}

---@param EntryPoint int32
function AActorQuestState_C:ExecuteUbergraph_ActorQuestState(EntryPoint) end

---@param ActorsToShow TArray<AActor>
function AActorQuestState_C:GetActors(ActorsToShow) end

function AActorQuestState_C:SetActive() end

---@param Disable boolean
---@param Array TArray<AActor>
function AActorQuestState_C:SetActorsState(Disable, Array) end

function AActorQuestState_C:SetInactive() end
