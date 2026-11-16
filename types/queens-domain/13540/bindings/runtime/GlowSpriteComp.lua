---@meta

---@class UGlowSpriteComp_C : UFS_ConfigurableStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Color FLinearColor
---@field Flickeriness float
---@field CameraOffset float
local UGlowSpriteComp_C = {}

function UGlowSpriteComp_C:BP_Registered() end

---@param EntryPoint int32
function UGlowSpriteComp_C:ExecuteUbergraph_GlowSpriteComp(EntryPoint) end

function UGlowSpriteComp_C:Refresh() end

---@param Color FLinearColor
function UGlowSpriteComp_C:SetColor(Color) end

function UGlowSpriteComp_C:SetColors() end
