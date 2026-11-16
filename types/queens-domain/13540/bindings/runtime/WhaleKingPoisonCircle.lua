---@meta

---@class AWhaleKingPoisonCircle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Box UBoxComponent
---@field Duration float
local AWhaleKingPoisonCircle_C = {}

function AWhaleKingPoisonCircle_C:Deactivate() end

---@param EntryPoint int32
function AWhaleKingPoisonCircle_C:ExecuteUbergraph_WhaleKingPoisonCircle(EntryPoint) end

function AWhaleKingPoisonCircle_C:ReceiveBeginPlay() end
