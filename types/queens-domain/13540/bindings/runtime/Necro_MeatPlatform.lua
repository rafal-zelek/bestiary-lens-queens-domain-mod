---@meta

---@class ANecro_MeatPlatform_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox UCapsuleComponent
---@field Niagara UNiagaraComponent
---@field HitboxRoot USceneComponent
---@field LaserTargetLoc USceneComponent
---@field Platform UStaticMeshComponent
---@field SpawnerLoc USceneComponent
---@field Root USceneComponent
---@field RaiseTL_NewTrack_0_E57B26014F6E68998FC04CBDDA8A06E3 float
---@field RaiseTL__Direction_E57B26014F6E68998FC04CBDDA8A06E3 ETimelineDirection::Type
---@field RaiseTL UTimelineComponent
---@field explosionjiggle_GlowColor_0EDF3E3D488BF85625965994AF5993B0 FLinearColor
---@field explosionjiggle_GlowFlash_0EDF3E3D488BF85625965994AF5993B0 float
---@field explosionjiggle_Progress_0EDF3E3D488BF85625965994AF5993B0 float
---@field explosionjiggle__Direction_0EDF3E3D488BF85625965994AF5993B0 ETimelineDirection::Type
---@field explosionjiggle UTimelineComponent
---@field UpperPos FVector
---@field LowerPos FVector
---@field Fog UENVControlData_C
---@field StartingScale FVector
---@field Raised boolean
---@field LaserHeight float
---@field PreviewLaser boolean
---@field TestMode boolean
---@field Damage FFB_DamageAttributeSet
local ANecro_MeatPlatform_C = {}

function ANecro_MeatPlatform_C:ActivateLaser() end

function ANecro_MeatPlatform_C:CancelLaser() end

function ANecro_MeatPlatform_C:ConfigureLaser() end

function ANecro_MeatPlatform_C:DeactivateLaser() end

---@param EntryPoint int32
function ANecro_MeatPlatform_C:ExecuteUbergraph_Necro_MeatPlatform(EntryPoint) end

---@param Delay float
---@param Damage FFB_DamageAttributeSet
function ANecro_MeatPlatform_C:Explode(Delay, Damage) end

function ANecro_MeatPlatform_C:ForceReset() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ANecro_MeatPlatform_C:GetCurrentFogDAs(Alpha, Beta) end

function ANecro_MeatPlatform_C:Lower() end

function ANecro_MeatPlatform_C:Raise() end

function ANecro_MeatPlatform_C:RaiseTL__FinishedFunc() end

function ANecro_MeatPlatform_C:RaiseTL__UpdateFunc() end

function ANecro_MeatPlatform_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ANecro_MeatPlatform_C:ReceiveEndPlay(EndPlayReason) end

function ANecro_MeatPlatform_C:ResetTL() end

---@param DA UENVControlData_C
function ANecro_MeatPlatform_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ANecro_MeatPlatform_C:SetBetaFogDA(DA) end

function ANecro_MeatPlatform_C:SetLowerPosition() end

function ANecro_MeatPlatform_C:UpdateFogDAValues() end

function ANecro_MeatPlatform_C:UserConstructionScript() end

function ANecro_MeatPlatform_C:explosionjiggle__FinishedFunc() end

function ANecro_MeatPlatform_C:explosionjiggle__UpdateFunc() end

ANecro_MeatPlatform_C['Preview Lower Position'] = function(self) end

ANecro_MeatPlatform_C['Preview Upper Position'] = function(self) end

ANecro_MeatPlatform_C['Set Upper Position'] = function(self) end
