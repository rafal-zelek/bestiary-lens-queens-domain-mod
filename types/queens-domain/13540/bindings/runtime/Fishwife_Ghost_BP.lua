---@meta

---@class AFishwife_Ghost_BP_C : ANPC_Ghost_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Weeping UAudioComponent
local AFishwife_Ghost_BP_C = {}

---@param EntryPoint int32
function AFishwife_Ghost_BP_C:ExecuteUbergraph_Fishwife_Ghost_BP(EntryPoint) end

function AFishwife_Ghost_BP_C:MoveOn() end

function AFishwife_Ghost_BP_C:ReceiveBeginPlay() end

function AFishwife_Ghost_BP_C:RevealGhost() end
