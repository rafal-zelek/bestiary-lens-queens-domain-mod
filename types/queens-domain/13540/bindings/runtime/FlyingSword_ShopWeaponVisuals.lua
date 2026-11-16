---@meta

---@class AFlyingSword_ShopWeaponVisuals_C : AWeaponVisuals_C
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
local AFlyingSword_ShopWeaponVisuals_C = {}

---@param EntryPoint int32
function AFlyingSword_ShopWeaponVisuals_C:ExecuteUbergraph_FlyingSword_ShopWeaponVisuals(EntryPoint) end

function AFlyingSword_ShopWeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFlyingSword_ShopWeaponVisuals_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AFlyingSword_ShopWeaponVisuals_C:Refresh(Script) end

function AFlyingSword_ShopWeaponVisuals_C:TickGemStates() end

AFlyingSword_ShopWeaponVisuals_C['Refresh Gems'] = function(self) end
