---@meta

---@class ANecro_Boss_Door_C : ANecro_Deco_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Dissolve_NewTrack_0_B7EF30E14DF6058E65CDD3A2A2695C4A float
---@field Dissolve__Direction_B7EF30E14DF6058E65CDD3A2A2695C4A ETimelineDirection::Type
---@field Dissolve UTimelineComponent
---@field MeatScript ANecroWall_Manager_BP_C
local ANecro_Boss_Door_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecro_Boss_Door_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ANecro_Boss_Door_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function ANecro_Boss_Door_C:Dissolve__FinishedFunc() end

function ANecro_Boss_Door_C:Dissolve__UpdateFunc() end

function ANecro_Boss_Door_C:EnableDoor() end

---@param EntryPoint int32
function ANecro_Boss_Door_C:ExecuteUbergraph_Necro_Boss_Door(EntryPoint) end

function ANecro_Boss_Door_C:HideDoor() end

function ANecro_Boss_Door_C:ReceiveBeginPlay() end
