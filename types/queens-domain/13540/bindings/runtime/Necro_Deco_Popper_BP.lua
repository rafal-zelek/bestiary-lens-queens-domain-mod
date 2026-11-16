---@meta

---@class ANecro_Deco_Popper_BP_C : ANecro_Deco_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PopOffset float
---@field PopRadius float
---@field Popped boolean
---@field DissolveOffset float
local ANecro_Deco_Popper_BP_C = {}

function ANecro_Deco_Popper_BP_C:DissolveStarted() end

---@param Radius float
function ANecro_Deco_Popper_BP_C:DissolveUpdated(Radius) end

---@param EntryPoint int32
function ANecro_Deco_Popper_BP_C:ExecuteUbergraph_Necro_Deco_Popper_BP(EntryPoint) end

function ANecro_Deco_Popper_BP_C:ReceiveBeginPlay() end
