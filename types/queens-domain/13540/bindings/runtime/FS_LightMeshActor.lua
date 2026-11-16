---@meta

---@class AFS_LightMeshActor_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight UPointLightComponent
---@field ActivateAnim_NewTrack_0_51BC881D40A810118A7C96A713E606AA float
---@field ActivateAnim__Direction_51BC881D40A810118A7C96A713E606AA ETimelineDirection::Type
---@field ActivateAnim UTimelineComponent
---@field DeactivatedColor FColor
---@field ActivatedColor FColor
---@field GlowColor FColor
---@field DeactivatedIntensity float
---@field ActivatedIntensity float
---@field GlowSpriteAlphaDeactivated float
---@field GlowSpriteAlphaActivated float
---@field FadeTime float
---@field PreviewActivated boolean
---@field GlowFlickeriness float
---@field MaterialSlot int32
---@field SetMaterialOnMesh boolean
---@field LitMaterial UMaterialInterface
---@field UnlitMaterial UMaterialInterface
---@field SetCustomPrimDataOnMesh boolean
---@field CPDIndex int32
---@field SetDynamicParamOnMesh boolean
---@field DynamicParamName FName
---@field HasEverBeenSetByScript boolean
local AFS_LightMeshActor_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_LightMeshActor_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AFS_LightMeshActor_C:ActivateAnim__FinishedFunc() end

function AFS_LightMeshActor_C:ActivateAnim__UpdateFunc() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_LightMeshActor_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFS_LightMeshActor_C:ExecuteUbergraph_FS_LightMeshActor(EntryPoint) end

function AFS_LightMeshActor_C:ReceiveBeginPlay() end

---@param InputPin float
function AFS_LightMeshActor_C:SetInterp(InputPin) end

function AFS_LightMeshActor_C:UserConstructionScript() end
