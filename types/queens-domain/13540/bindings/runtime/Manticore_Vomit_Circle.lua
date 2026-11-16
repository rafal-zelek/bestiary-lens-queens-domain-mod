---@meta

---@class AManticore_Vomit_Circle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Box UBoxComponent
---@field Duration float
---@field Finished FManticore_Vomit_Circle_CFinished
local AManticore_Vomit_Circle_C = {}

function AManticore_Vomit_Circle_C:Deactivate() end

---@param EntryPoint int32
function AManticore_Vomit_Circle_C:ExecuteUbergraph_Manticore_Vomit_Circle(EntryPoint) end

---@param Vomit AManticore_Vomit_Circle_C
function AManticore_Vomit_Circle_C:Finished__DelegateSignature(Vomit) end

function AManticore_Vomit_Circle_C:ReceiveBeginPlay() end
