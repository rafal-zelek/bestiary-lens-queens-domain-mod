---@meta

---@class ASkullRod_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field Spline USplineComponent
---@field FadeIn_NewTrack_0_8066D5DB49A5E7BD5D96568BBD72F901 float
---@field FadeIn__Direction_8066D5DB49A5E7BD5D96568BBD72F901 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Timeline_1_Progress_A736033A49689E3219F8C0AAEBC321E9 float
---@field Timeline_1__Direction_A736033A49689E3219F8C0AAEBC321E9 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Target AActor
---@field TargetWeights TMap<AActor, float>
---@field TargetDOTWeight float
---@field TargetDistanceWeight float
---@field TargetLOSWeightMul float
---@field TargetAnimStartRot FRotator
---@field Fired boolean
local ASkullRod_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASkullRod_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Weight float
function ASkullRod_Projectile_C:CalculateTargetWeight(Target, Weight) end

function ASkullRod_Projectile_C:ConfigurePath() end

---@param EntryPoint int32
function ASkullRod_Projectile_C:ExecuteUbergraph_SkullRod_Projectile(EntryPoint) end

function ASkullRod_Projectile_C:FadeIn__FinishedFunc() end

function ASkullRod_Projectile_C:FadeIn__UpdateFunc() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ASkullRod_Projectile_C:GetDamage(FB_DamageAttributeSet) end

function ASkullRod_Projectile_C:InstantlyDissolve() end

---@param Hit FHitResult
function ASkullRod_Projectile_C:ProjectileStopped(Hit) end

function ASkullRod_Projectile_C:ReceiveBeginPlay() end

function ASkullRod_Projectile_C:SetTarget() end

function ASkullRod_Projectile_C:StartTracking() end

function ASkullRod_Projectile_C:Timeline_1__FinishedFunc() end

function ASkullRod_Projectile_C:Timeline_1__UpdateFunc() end

ASkullRod_Projectile_C['End Tracking'] = function(self) end
