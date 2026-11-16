---@meta

---@class AFlyingSwordEvolvedWeaponVisuals_NoGems_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FlyingSword UStaticMeshComponent
---@field Gems TArray<UGemVisualComp_C>
local AFlyingSwordEvolvedWeaponVisuals_NoGems_C = {}

---@param EntryPoint int32
function AFlyingSwordEvolvedWeaponVisuals_NoGems_C:ExecuteUbergraph_FlyingSwordEvolvedWeaponVisuals_NoGems(EntryPoint) end

---@param DeltaSeconds float
function AFlyingSwordEvolvedWeaponVisuals_NoGems_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AFlyingSwordEvolvedWeaponVisuals_NoGems_C:Refresh(Script) end

function AFlyingSwordEvolvedWeaponVisuals_NoGems_C:TickGemStates() end

AFlyingSwordEvolvedWeaponVisuals_NoGems_C['Refresh Gems'] = function(self) end
