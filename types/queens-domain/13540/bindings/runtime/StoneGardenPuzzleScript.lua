---@meta

---@class AStoneGardenPuzzleScript_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MeshesToActivateWhenPuzzleDone TArray<AActor>
---@field LightsToActivateWhenPuzzleDone TArray<AFS_Light_Activatable_C>
---@field ActivateWhenPuzzleDone TArray<TScriptInterface<IActivatable_C>>
---@field Pedestals TArray<ASG_Pedestal_TridentKeyReceptacle_C>
local AStoneGardenPuzzleScript_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AStoneGardenPuzzleScript_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AStoneGardenPuzzleScript_C:ConsumePedestalKeys() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AStoneGardenPuzzleScript_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AStoneGardenPuzzleScript_C:ExecuteUbergraph_StoneGardenPuzzleScript(EntryPoint) end

function AStoneGardenPuzzleScript_C:PreviewOff() end

function AStoneGardenPuzzleScript_C:PreviewOn() end

---@param Data TArray<FSavableActorState>
AStoneGardenPuzzleScript_C['Restore State From Save Data'] = function(self, Data) end
