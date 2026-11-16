---@meta

---@class ABloodRitualDoor_BP_C : AForbiddenDoor_BaseClass_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp1 UGlowSpriteComp_C
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field LightIntensities float
---@field LightGlowColor FLinearColor
local ABloodRitualDoor_BP_C = {}

---@param Amt float
function ABloodRitualDoor_BP_C:DoorProgress(Amt) end

---@param EntryPoint int32
function ABloodRitualDoor_BP_C:ExecuteUbergraph_BloodRitualDoor_BP(EntryPoint) end

function ABloodRitualDoor_BP_C:ReceiveBeginPlay() end

function ABloodRitualDoor_BP_C:UpdateMesh() end
