---@meta

---@class AFlyingSwordEvolvedWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecretSword_ChargedFX UNiagaraComponent
---@field Gem1 UGemVisualComp_C
---@field Gem3 UGemVisualComp_C
---@field Gem0 UGemVisualComp_C
---@field UltraGem UGemVisualComp_C
---@field Gem4 UGemVisualComp_C
---@field Gem2 UGemVisualComp_C
---@field FlyingSword UStaticMeshComponent
---@field Gems TArray<UGemVisualComp_C>
---@field ChargeSoundLoop UAudioComponent
---@field Inspect boolean
local AFlyingSwordEvolvedWeaponVisuals_C = {}

---@param EntryPoint int32
function AFlyingSwordEvolvedWeaponVisuals_C:ExecuteUbergraph_FlyingSwordEvolvedWeaponVisuals(EntryPoint) end

---@param DeltaSeconds float
function AFlyingSwordEvolvedWeaponVisuals_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AFlyingSwordEvolvedWeaponVisuals_C:Refresh(Script) end

function AFlyingSwordEvolvedWeaponVisuals_C:TickGemStates() end

AFlyingSwordEvolvedWeaponVisuals_C['Refresh Gems'] = function(self) end
