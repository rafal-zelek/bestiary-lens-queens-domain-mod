---@meta

---@class ADagger_Homing_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field Timeline_1_Progress_341EEC924FBF27C49867198B6BAFC19B float
---@field Timeline_1__Direction_341EEC924FBF27C49867198B6BAFC19B ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Target AActor
---@field TargetWeights TMap<AActor, float>
---@field TargetDOTWeight float
---@field TargetDistanceWeight float
---@field TargetLOSWeightMul float
---@field TargetAnimStartRot FRotator
---@field Fired boolean
local ADagger_Homing_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ADagger_Homing_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Weight float
function ADagger_Homing_Projectile_C:CalculateTargetWeight(Target, Weight) end

function ADagger_Homing_Projectile_C:ConfigurePath() end

---@param EntryPoint int32
function ADagger_Homing_Projectile_C:ExecuteUbergraph_Dagger_Homing_Projectile(EntryPoint) end

---@param Hit FHitResult
function ADagger_Homing_Projectile_C:ProjectileStopped(Hit) end

function ADagger_Homing_Projectile_C:ReceiveBeginPlay() end

function ADagger_Homing_Projectile_C:SetTarget() end

function ADagger_Homing_Projectile_C:StartTracking() end

function ADagger_Homing_Projectile_C:Timeline_1__FinishedFunc() end

function ADagger_Homing_Projectile_C:Timeline_1__UpdateFunc() end

ADagger_Homing_Projectile_C['End Tracking'] = function(self) end
