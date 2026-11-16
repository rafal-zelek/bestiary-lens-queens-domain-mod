---@meta

---@class ALightControlBP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_BrightnessMul_95C8E4614EAB277D3CA2FE9C27D630F7 float
---@field Timeline_0__Direction_95C8E4614EAB277D3CA2FE9C27D630F7 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field DirectionalLightToControl ADirectionalLight
---@field StartIntensity float
---@field Initted boolean
local ALightControlBP_C = {}

---@param EntryPoint int32
function ALightControlBP_C:ExecuteUbergraph_LightControlBP(EntryPoint) end

function ALightControlBP_C:FadeInDirectionalAmbientLight() end

function ALightControlBP_C:FadeOutDirectionalAmbientLight() end

function ALightControlBP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ALightControlBP_C:ReceiveTick(DeltaSeconds) end

function ALightControlBP_C:Timeline_0__FinishedFunc() end

function ALightControlBP_C:Timeline_0__UpdateFunc() end

ALightControlBP_C['grab light settings'] = function(self) end
