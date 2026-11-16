---@meta

---@class AMetal_Gargler_Halberd_BP_C : AGargler_Halberd_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerBLockerBox UBoxComponent
local AMetal_Gargler_Halberd_BP_C = {}

---@param Damaged boolean
function AMetal_Gargler_Halberd_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function AMetal_Gargler_Halberd_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMetal_Gargler_Halberd_BP_C:ExecuteUbergraph_Metal_Gargler_Halberd_BP(EntryPoint) end

---@param Dissolve float
function AMetal_Gargler_Halberd_BP_C:SetTrapDissolve(Dissolve) end
