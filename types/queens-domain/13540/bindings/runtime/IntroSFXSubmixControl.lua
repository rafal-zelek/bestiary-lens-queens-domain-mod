---@meta

---@class AIntroSFXSubmixControl_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Wet float
---@field Dry float
---@field LowPass float
---@field SubmixToManage USoundSubmix
---@field SoundLPFilter USubmixEffectFilterPreset
local AIntroSFXSubmixControl_C = {}

---@param EntryPoint int32
function AIntroSFXSubmixControl_C:ExecuteUbergraph_IntroSFXSubmixControl(EntryPoint) end

---@param DeltaSeconds float
function AIntroSFXSubmixControl_C:ReceiveTick(DeltaSeconds) end

function AIntroSFXSubmixControl_C:Update() end

function AIntroSFXSubmixControl_C:UserConstructionScript() end
