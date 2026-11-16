---@meta

---@class AFireball_Visuals_C : ADagger_Visuals_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RingMesh UStaticMeshComponent
---@field Fireball_InHandFX UNiagaraComponent
local AFireball_Visuals_C = {}

---@param EntryPoint int32
function AFireball_Visuals_C:ExecuteUbergraph_Fireball_Visuals(EntryPoint) end

function AFireball_Visuals_C:ReceiveBeginPlay() end

function AFireball_Visuals_C:SetHide() end

function AFireball_Visuals_C:SetShow() end
