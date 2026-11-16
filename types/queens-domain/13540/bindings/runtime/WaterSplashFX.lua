---@meta

---@class AWaterSplashFX_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Droplets_new UUFB_CustomBoundsComp
---@field Splashes_New UUFB_CustomBoundsComp
---@field Box UBoxComponent
---@field CullingBox UBoxComponent
---@field Scene USceneComponent
---@field Timeline_0_Fade_5DE1B08D4D3DAC9BB85D38B7A910CE8F float
---@field Timeline_0__Direction_5DE1B08D4D3DAC9BB85D38B7A910CE8F ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field BigSplashInstMult float
---@field DropletInstMult float
---@field ParticleSize float
---@field BonusVel FVector
---@field SplashLifetimeMult float
---@field SplashOpacityMult float
---@field RandomSideForceMult float
---@field CullBoxPos FVector
---@field CullBoxWidth float
---@field CullBoxDepth float
---@field CullBoxRot float
---@field CullBoxHeightScale float
---@field VisibleCutoffPos FVector
local AWaterSplashFX_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AWaterSplashFX_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Target UInstancedStaticMeshComponent
function AWaterSplashFX_C:AddCullCornersToInstances(Target) end

---@param Target UInstancedStaticMeshComponent
function AWaterSplashFX_C:AddInst(Target) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AWaterSplashFX_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AWaterSplashFX_C:ExecuteUbergraph_WaterSplashFX(EntryPoint) end

function AWaterSplashFX_C:SetUpCullBox() end

---@param WorldTransform FTransform
---@param InputPin UInstancedStaticMeshComponent
function AWaterSplashFX_C:SetUpCullCorner(WorldTransform, InputPin) end

function AWaterSplashFX_C:Timeline_0__FinishedFunc() end

function AWaterSplashFX_C:Timeline_0__UpdateFunc() end

function AWaterSplashFX_C:UserConstructionScript() end
