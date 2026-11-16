---@meta

---@class AEntry_Torch_Sipeha_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DamagingCollision UDamagingCollision_C
---@field BrazierFlame_Mesh_Comp UBrazierFlame_Mesh_Comp_C
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_NewTrack_0_E765C27D467FB5FD14B5CFB1C5A1E511 float
---@field Timeline_0__Direction_E765C27D467FB5FD14B5CFB1C5A1E511 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ['light 1 intensity'] float
---@field ['light 2 intensity'] float
---@field ['flame color'] FLinearColor
local AEntry_Torch_Sipeha_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AEntry_Torch_Sipeha_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AEntry_Torch_Sipeha_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AEntry_Torch_Sipeha_BP_C:ExecuteUbergraph_Entry_Torch_Sipeha_BP(EntryPoint) end

function AEntry_Torch_Sipeha_BP_C:ReceiveBeginPlay() end

function AEntry_Torch_Sipeha_BP_C:Timeline_0__FinishedFunc() end

function AEntry_Torch_Sipeha_BP_C:Timeline_0__UpdateFunc() end

function AEntry_Torch_Sipeha_BP_C:UserConstructionScript() end

AEntry_Torch_Sipeha_BP_C['Cache Starting State'] = function(self) end

AEntry_Torch_Sipeha_BP_C['Turn Off Instantly'] = function(self) end

AEntry_Torch_Sipeha_BP_C['Turn Off With Animation'] = function(self) end

AEntry_Torch_Sipeha_BP_C['Turn On Instantly'] = function(self) end

AEntry_Torch_Sipeha_BP_C['Turn On With Animation'] = function(self) end
