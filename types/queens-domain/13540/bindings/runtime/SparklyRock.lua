---@meta

---@class ASparklyRock_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NSD_ActorHider UNSD_ActorHider_C
---@field TreasureSparkleComp UTreasureSparkleComp_C
---@field ['NSD to Track'] FName
local ASparklyRock_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASparklyRock_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ASparklyRock_C:AutoAssociate() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASparklyRock_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASparklyRock_C:ExecuteUbergraph_SparklyRock(EntryPoint) end

function ASparklyRock_C:FindAndSetCurseFountain() end

function ASparklyRock_C:UserConstructionScript() end
