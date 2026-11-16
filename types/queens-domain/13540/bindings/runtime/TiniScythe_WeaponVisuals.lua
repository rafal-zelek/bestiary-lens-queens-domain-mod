---@meta

---@class ATiniScythe_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TiniScythe USkeletalMeshComponent
---@field BGM0_Comp UNiagaraComponent
---@field BGM0_0_Comp UNiagaraComponent
local ATiniScythe_WeaponVisuals_C = {}

---@param EntryPoint int32
function ATiniScythe_WeaponVisuals_C:ExecuteUbergraph_TiniScythe_WeaponVisuals(EntryPoint) end

function ATiniScythe_WeaponVisuals_C:ReceiveBeginPlay() end

function ATiniScythe_WeaponVisuals_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function ATiniScythe_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

ATiniScythe_WeaponVisuals_C['Update Charge Visuals'] = function(self) end
