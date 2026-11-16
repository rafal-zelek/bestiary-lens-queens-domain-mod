---@meta

---@class ADemonSpider_MagmaPuddle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cylinder UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Grow_Width_B35422324575DE5A76582CA32C453009 float
---@field Grow_Height_B35422324575DE5A76582CA32C453009 float
---@field Grow__Direction_B35422324575DE5A76582CA32C453009 ETimelineDirection::Type
---@field Grow UTimelineComponent
---@field Duration float
---@field Finished FDemonSpider_MagmaPuddle_CFinished
local ADemonSpider_MagmaPuddle_C = {}

---@param EntryPoint int32
function ADemonSpider_MagmaPuddle_C:ExecuteUbergraph_DemonSpider_MagmaPuddle(EntryPoint) end

---@param Puddle ADemonSpider_MagmaPuddle_C
function ADemonSpider_MagmaPuddle_C:Finished__DelegateSignature(Puddle) end

function ADemonSpider_MagmaPuddle_C:Grow__FinishedFunc() end

function ADemonSpider_MagmaPuddle_C:Grow__UpdateFunc() end

function ADemonSpider_MagmaPuddle_C:ReceiveBeginPlay() end
