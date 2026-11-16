---@meta

---@class AShopkeeper_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['Shop Data'] UShopConfigData
---@field CurrentFogAlphaDA UENVControlData_C
---@field CurrentFogBetaDA UENVControlData_C
---@field Guid FGuid
---@field ShopMusic UMusicTrackData_C
---@field AreaDA UAreaName_C
---@field ['Player Interacting'] AFS_PlayerChar_C
local AShopkeeper_C = {}

---@param EntryPoint int32
function AShopkeeper_C:ExecuteUbergraph_Shopkeeper(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AShopkeeper_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AShopkeeper_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AShopkeeper_C:Interact(PlayerInteracting) end

---@param DA UENVControlData_C
function AShopkeeper_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AShopkeeper_C:SetBetaFogDA(DA) end

function AShopkeeper_C:UpdateFogDAValues() end

function AShopkeeper_C:UserConstructionScript() end
