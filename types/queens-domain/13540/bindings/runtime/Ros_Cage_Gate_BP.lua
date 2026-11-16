---@meta

---@class ARos_Cage_Gate_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveSound UAudioComponent
---@field Timeline_0_OpenAmount_233FD872484DF32AD78DB4824B19B5AA float
---@field Timeline_0__Direction_233FD872484DF32AD78DB4824B19B5AA ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field DeactivateWhenOpened TArray<TScriptInterface<IActivatable_C>>
---@field SetPuzzleNSD boolean
local ARos_Cage_Gate_BP_C = {}

function ARos_Cage_Gate_BP_C:CloseDoor() end

---@param EntryPoint int32
function ARos_Cage_Gate_BP_C:ExecuteUbergraph_Ros_Cage_Gate_BP(EntryPoint) end

function ARos_Cage_Gate_BP_C:OpenDoor() end

function ARos_Cage_Gate_BP_C:SetToOpenState() end

function ARos_Cage_Gate_BP_C:Timeline_0__FinishedFunc() end

function ARos_Cage_Gate_BP_C:Timeline_0__UpdateFunc() end
