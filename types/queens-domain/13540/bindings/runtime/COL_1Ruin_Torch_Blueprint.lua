---@meta

---@class ACOL_1Ruin_Torch_Blueprint_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field Niagara UNiagaraComponent
---@field BonusTicks boolean
local ACOL_1Ruin_Torch_Blueprint_C = {}

---@param EntryPoint int32
function ACOL_1Ruin_Torch_Blueprint_C:ExecuteUbergraph_COL_1Ruin_Torch_Blueprint(EntryPoint) end

---@param DialoguePickup boolean
function ACOL_1Ruin_Torch_Blueprint_C:Pickup(DialoguePickup) end

---@param DeltaSeconds float
function ACOL_1Ruin_Torch_Blueprint_C:ReceiveTick(DeltaSeconds) end
