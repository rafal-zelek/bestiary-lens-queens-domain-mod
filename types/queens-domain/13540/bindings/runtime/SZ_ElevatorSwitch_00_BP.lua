---@meta

---@class ASZ_ElevatorSwitch_00_BP_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FogLightComponent UFogLightComponent_C
---@field PointLight UPointLightComponent
---@field LockedInteractBox UBoxComponent
local ASZ_ElevatorSwitch_00_BP_C = {}

---@param EntryPoint int32
function ASZ_ElevatorSwitch_00_BP_C:ExecuteUbergraph_SZ_ElevatorSwitch_00_BP(EntryPoint) end

function ASZ_ElevatorSwitch_00_BP_C:Lock() end

function ASZ_ElevatorSwitch_00_BP_C:Unlock() end
