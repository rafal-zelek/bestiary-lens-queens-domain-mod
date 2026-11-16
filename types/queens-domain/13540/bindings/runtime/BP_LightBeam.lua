---@meta

---@class ABP_LightBeam_C : AActor
---@field UISprite UBillboardComponent
---@field GodRayMesh UStaticMeshComponent
---@field Light AActor
---@field Width float
---@field Length float
---@field Color FLinearColor
---@field Brightness float
---@field ['Fade distance'] float
---@field ['Use light for rotation'] boolean
---@field ['Source Material'] UMaterialInterface
---@field FacingFadePow float
---@field FacingFadePowInv float
---@field AngleFadeStr float
---@field OutputBoundsScale float
---@field ['Translucent Sort Priority'] int32
local ABP_LightBeam_C = {}

function ABP_LightBeam_C:UserConstructionScript() end
