---@meta

---@class ATorch_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field Niagara UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
local ATorch_WeaponVisuals_C = {}

---@param EntryPoint int32
function ATorch_WeaponVisuals_C:ExecuteUbergraph_Torch_WeaponVisuals(EntryPoint) end

function ATorch_WeaponVisuals_C:ReceiveBeginPlay() end

---@param Script UWeaponScriptBase_C
function ATorch_WeaponVisuals_C:Refresh(Script) end
