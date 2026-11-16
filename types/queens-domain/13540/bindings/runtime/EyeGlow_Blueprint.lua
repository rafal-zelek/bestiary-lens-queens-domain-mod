---@meta

---@class AEyeGlow_Blueprint_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp1 UGlowSpriteComp_C
---@field GlowSpriteComp UGlowSpriteComp_C
---@field DefaultSceneRoot USceneComponent
---@field Color1 FLinearColor
---@field Fade float
local AEyeGlow_Blueprint_C = {}

---@param EntryPoint int32
function AEyeGlow_Blueprint_C:ExecuteUbergraph_EyeGlow_Blueprint(EntryPoint) end

function AEyeGlow_Blueprint_C:ReceiveBeginPlay() end

function AEyeGlow_Blueprint_C:UserConstructionScript() end
