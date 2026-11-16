---@meta

---@class AOW_Tower_RobotShutter_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpawnAdd_Open_6F86AD224CA0442F27FAD0800483A580 float
---@field SpawnAdd__Direction_6F86AD224CA0442F27FAD0800483A580 ETimelineDirection::Type
---@field SpawnAdd UTimelineComponent
---@field Spawner TScriptInterface<IActivatable_C>
---@field SpawnerThatTriggered AActor
local AOW_Tower_RobotShutter_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AOW_Tower_RobotShutter_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AOW_Tower_RobotShutter_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AOW_Tower_RobotShutter_BP_C:ExecuteUbergraph_OW_Tower_RobotShutter_BP(EntryPoint) end

function AOW_Tower_RobotShutter_BP_C:SpawnAdd__FinishedFunc() end

function AOW_Tower_RobotShutter_BP_C:SpawnAdd__OpenSound2__EventFunc() end

function AOW_Tower_RobotShutter_BP_C:SpawnAdd__Spawn__EventFunc() end

function AOW_Tower_RobotShutter_BP_C:SpawnAdd__UpdateFunc() end
