---@meta

---@class ASG_Pedestal_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field SG_Pedestal_Gem_SM UStaticMeshComponent
---@field Message FText
local ASG_Pedestal_00_BP_C = {}

---@param EntryPoint int32
function ASG_Pedestal_00_BP_C:ExecuteUbergraph_SG_Pedestal_00_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASG_Pedestal_00_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ASG_Pedestal_00_BP_C:Interact(PlayerInteracting) end
