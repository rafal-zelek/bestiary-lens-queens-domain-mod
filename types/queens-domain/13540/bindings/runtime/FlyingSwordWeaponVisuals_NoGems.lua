---@meta

---@class AFlyingSwordWeaponVisuals_NoGems_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FlyingSword UStaticMeshComponent
---@field Gems TArray<UGemVisualComp_C>
local AFlyingSwordWeaponVisuals_NoGems_C = {}

---@param EntryPoint int32
function AFlyingSwordWeaponVisuals_NoGems_C:ExecuteUbergraph_FlyingSwordWeaponVisuals_NoGems(EntryPoint) end

---@param DeltaSeconds float
function AFlyingSwordWeaponVisuals_NoGems_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AFlyingSwordWeaponVisuals_NoGems_C:Refresh(Script) end

function AFlyingSwordWeaponVisuals_NoGems_C:TickGemStates() end

AFlyingSwordWeaponVisuals_NoGems_C['Refresh Gems'] = function(self) end
