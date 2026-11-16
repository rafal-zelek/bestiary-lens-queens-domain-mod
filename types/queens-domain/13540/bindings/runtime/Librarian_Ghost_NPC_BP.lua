---@meta

---@class ALibrarian_Ghost_NPC_BP_C : ANPC_Ghost_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field Timeline_0_rot_A164B7644A3928F89945F79C9257095B float
---@field Timeline_0__Direction_A164B7644A3928F89945F79C9257095B ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field StartringRot FRotator
---@field DesireRot FRotator
local ALibrarian_Ghost_NPC_BP_C = {}

---@param EntryPoint int32
function ALibrarian_Ghost_NPC_BP_C:ExecuteUbergraph_Librarian_Ghost_NPC_BP(EntryPoint) end

---@param PlayerInteracting AActor
function ALibrarian_Ghost_NPC_BP_C:Interact(PlayerInteracting) end

function ALibrarian_Ghost_NPC_BP_C:ReceiveBeginPlay() end

---@param ParameterValue float
---@param ParameterValue2 float
---@param ParameterValue3 float
---@param ParameterValue4 float
---@param FadeOut float
---@param EarlyFadeOptional float
function ALibrarian_Ghost_NPC_BP_C:SetPropFadeOut(ParameterValue, ParameterValue2, ParameterValue3, ParameterValue4, FadeOut, EarlyFadeOptional) end

function ALibrarian_Ghost_NPC_BP_C:Timeline_0__FinishedFunc() end

function ALibrarian_Ghost_NPC_BP_C:Timeline_0__UpdateFunc() end
