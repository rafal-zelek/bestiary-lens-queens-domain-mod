---@meta

---@class Aor_pot_tall_bp_C : APot_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local Aor_pot_tall_bp_C = {}

function Aor_pot_tall_bp_C:Break() end

---@param EntryPoint int32
function Aor_pot_tall_bp_C:ExecuteUbergraph_or_pot_tall_bp(EntryPoint) end

function Aor_pot_tall_bp_C:Restored() end
