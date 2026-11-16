---@meta

---@class AGlobalPP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field Settings FPostProcessSettings
---@field Post UMaterialInstanceDynamic
---@field BaseDItherMat UMaterialInterface
local AGlobalPP_C = {}

---@param EntryPoint int32
function AGlobalPP_C:ExecuteUbergraph_GlobalPP(EntryPoint) end

function AGlobalPP_C:ReceiveBeginPlay() end

function AGlobalPP_C:UpdateFromSave() end
