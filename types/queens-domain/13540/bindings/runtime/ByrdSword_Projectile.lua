---@meta

---@class AByrdSword_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field Spline USplineComponent
---@field FadeIn_NewTrack_0_D180B72D444403D2194CFF8D2EF00314 float
---@field FadeIn__Direction_D180B72D444403D2194CFF8D2EF00314 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Timeline_1_Progress_0A64D95343A8B8E133CBDF85569B5B07 float
---@field Timeline_1__Direction_0A64D95343A8B8E133CBDF85569B5B07 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Target AActor
---@field TargetWeights TMap<AActor, float>
---@field TargetDOTWeight float
---@field TargetDistanceWeight float
---@field TargetLOSWeightMul float
---@field TargetAnimStartRot FRotator
---@field Fired boolean
local AByrdSword_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AByrdSword_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Weight float
function AByrdSword_Projectile_C:CalculateTargetWeight(Target, Weight) end

function AByrdSword_Projectile_C:ConfigurePath() end

---@param EntryPoint int32
function AByrdSword_Projectile_C:ExecuteUbergraph_ByrdSword_Projectile(EntryPoint) end

function AByrdSword_Projectile_C:FadeIn__FinishedFunc() end

function AByrdSword_Projectile_C:FadeIn__UpdateFunc() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AByrdSword_Projectile_C:GetDamage(FB_DamageAttributeSet) end

---@param Hit FHitResult
---@param Applied_Damage FFB_DamageAttributeSet
function AByrdSword_Projectile_C:HandleAppliedDamage(Hit, Applied_Damage) end

function AByrdSword_Projectile_C:InstantlyDissolve() end

---@param Hit FHitResult
function AByrdSword_Projectile_C:ProjectileStopped(Hit) end

function AByrdSword_Projectile_C:ReceiveBeginPlay() end

function AByrdSword_Projectile_C:SetTarget() end

function AByrdSword_Projectile_C:StartTracking() end

function AByrdSword_Projectile_C:Timeline_1__FinishedFunc() end

function AByrdSword_Projectile_C:Timeline_1__UpdateFunc() end

AByrdSword_Projectile_C['End Tracking'] = function(self) end
