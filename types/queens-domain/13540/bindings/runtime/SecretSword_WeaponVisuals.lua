---@meta

---@class ASecretSword_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecretSword_ChargedFX UNiagaraComponent
---@field Niagara UNiagaraComponent
---@field HiddenSword_Wings1 UStaticMeshComponent
---@field HiddenSword_Wings UStaticMeshComponent
---@field Mesh UStaticMeshComponent
---@field ChargeSoundLoop UAudioComponent
local ASecretSword_WeaponVisuals_C = {}

---@param EntryPoint int32
function ASecretSword_WeaponVisuals_C:ExecuteUbergraph_SecretSword_WeaponVisuals(EntryPoint) end

function ASecretSword_WeaponVisuals_C:ReceiveBeginPlay() end

function ASecretSword_WeaponVisuals_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function ASecretSword_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

ASecretSword_WeaponVisuals_C['Update Charge Visuals'] = function(self) end
