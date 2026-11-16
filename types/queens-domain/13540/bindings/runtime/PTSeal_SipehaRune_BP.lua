---@meta

---@class APTSeal_SipehaRune_BP_C : ASipehaRune_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SealUniqueNSD FName
local APTSeal_SipehaRune_BP_C = {}

---@param EntryPoint int32
function APTSeal_SipehaRune_BP_C:ExecuteUbergraph_PTSeal_SipehaRune_BP(EntryPoint) end

function APTSeal_SipehaRune_BP_C:IncrementIfCan() end

---@param PlayerInteracting AActor
function APTSeal_SipehaRune_BP_C:Interact(PlayerInteracting) end

APTSeal_SipehaRune_BP_C['Restore to switched'] = function(self) end
