---@meta

---@class AMetal_Gargler_Crossbow_C : AGargler_Crossbow_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerBLockerBox UBoxComponent
local AMetal_Gargler_Crossbow_C = {}

---@param Damaged boolean
function AMetal_Gargler_Crossbow_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function AMetal_Gargler_Crossbow_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMetal_Gargler_Crossbow_C:ExecuteUbergraph_Metal_Gargler_Crossbow(EntryPoint) end

---@param Dissolve float
function AMetal_Gargler_Crossbow_C:SetTrapDissolve(Dissolve) end
