---@meta

---@class AQueenDoortempBlocker_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cube UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
local AQueenDoortempBlocker_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AQueenDoortempBlocker_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AQueenDoortempBlocker_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AQueenDoortempBlocker_C:ExecuteUbergraph_QueenDoortempBlocker(EntryPoint) end

function AQueenDoortempBlocker_C:ReceiveBeginPlay() end
