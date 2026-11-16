---@meta

---@class AFlyingSwordWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Gem1 UGemVisualComp_C
---@field Gem3 UGemVisualComp_C
---@field Gem0 UGemVisualComp_C
---@field UltraGem UGemVisualComp_C
---@field Gem4 UGemVisualComp_C
---@field Gem2 UGemVisualComp_C
---@field FlyingSword UStaticMeshComponent
---@field Gems TArray<UGemVisualComp_C>
---@field CurrentCursed boolean
---@field Inspect boolean
local AFlyingSwordWeaponVisuals_C = {}

---@param EntryPoint int32
function AFlyingSwordWeaponVisuals_C:ExecuteUbergraph_FlyingSwordWeaponVisuals(EntryPoint) end

function AFlyingSwordWeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFlyingSwordWeaponVisuals_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AFlyingSwordWeaponVisuals_C:Refresh(Script) end

function AFlyingSwordWeaponVisuals_C:TickGemStates() end

AFlyingSwordWeaponVisuals_C['Refresh Gems'] = function(self) end
