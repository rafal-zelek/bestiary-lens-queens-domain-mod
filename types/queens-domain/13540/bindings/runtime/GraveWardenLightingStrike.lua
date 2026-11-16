---@meta

---@class AGraveWardenLightingStrike_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere USphereComponent
---@field GraveWarden_TellFX UParticleSystemComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field DefaultSceneRoot USceneComponent
---@field Fadein_NewTrack_0_98081D01426B5F97BD8A3384C6AA65F4 float
---@field Fadein__Direction_98081D01426B5F97BD8A3384C6AA65F4 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field StrikeDelay float
---@field Damage FFB_DamageAttributeSet
local AGraveWardenLightingStrike_C = {}

---@param EntryPoint int32
function AGraveWardenLightingStrike_C:ExecuteUbergraph_GraveWardenLightingStrike(EntryPoint) end

function AGraveWardenLightingStrike_C:FadeIn__FinishedFunc() end

function AGraveWardenLightingStrike_C:FadeIn__UpdateFunc() end

function AGraveWardenLightingStrike_C:ReceiveBeginPlay() end
