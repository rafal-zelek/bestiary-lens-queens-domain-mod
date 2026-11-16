---@meta

---@class ARattyBugger_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DeadWingsMat UMaterialInterface
local ARattyBugger_Base_BP_C = {}

---@param Damaged boolean
function ARattyBugger_Base_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function ARattyBugger_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ARattyBugger_Base_BP_C:ExecuteUbergraph_RattyBugger_Base_BP(EntryPoint) end

function ARattyBugger_Base_BP_C:InitDeathFade() end
