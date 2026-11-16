---@meta

---@class AShopTreasureActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TreasureModel UStaticMeshComponent
---@field WorldEventReceiver UWorldEventReceiver_C
---@field DefaultSceneRoot USceneComponent
---@field Item UFS_ItemData_C
---@field SellCount int32
---@field Fog UENVControlData_C
---@field Mesh UStaticMesh
---@field Material UMaterialInterface
local AShopTreasureActor_C = {}

function AShopTreasureActor_C:BndEvt__ShopTreasureActor_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldRefresh__DelegateSignature() end

---@param EntryPoint int32
function AShopTreasureActor_C:ExecuteUbergraph_ShopTreasureActor(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AShopTreasureActor_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AShopTreasureActor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AShopTreasureActor_C:SetBetaFogDA(DA) end

function AShopTreasureActor_C:UpdateFogDAValues() end

function AShopTreasureActor_C:UserConstructionScript() end
