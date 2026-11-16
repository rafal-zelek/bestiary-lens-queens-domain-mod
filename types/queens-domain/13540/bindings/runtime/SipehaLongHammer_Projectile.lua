---@meta

---@class ASipehaLongHammer_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Loop UAudioComponent
---@field Niagara UNiagaraComponent
---@field Sphere1 UStaticMeshComponent
---@field FadeIn_NewTrack_0_1E7803654CC346DCA0F164AF4206C4B4 float
---@field FadeIn__Direction_1E7803654CC346DCA0F164AF4206C4B4 ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Target AActor
---@field Fired boolean
---@field RotationRate float
---@field ['Local DT'] float
---@field RetargetCount int32
---@field Vel FVector
---@field stopped boolean
---@field CanExplode boolean
local ASipehaLongHammer_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASipehaLongHammer_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

function ASipehaLongHammer_Projectile_C:CheckForExplode() end

function ASipehaLongHammer_Projectile_C:DoMovementHitTrace() end

---@param EntryPoint int32
function ASipehaLongHammer_Projectile_C:ExecuteUbergraph_SipehaLongHammer_Projectile(EntryPoint) end

function ASipehaLongHammer_Projectile_C:Explode() end

function ASipehaLongHammer_Projectile_C:FadeIn__FinishedFunc() end

function ASipehaLongHammer_Projectile_C:FadeIn__UpdateFunc() end

function ASipehaLongHammer_Projectile_C:Fire() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ASipehaLongHammer_Projectile_C:GetDamage(FB_DamageAttributeSet) end

function ASipehaLongHammer_Projectile_C:HomingBehaviour() end

function ASipehaLongHammer_Projectile_C:InstantlyDissolve() end

---@param Hit FHitResult
function ASipehaLongHammer_Projectile_C:ProjectileStopped(Hit) end

function ASipehaLongHammer_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASipehaLongHammer_Projectile_C:ReceiveTick(DeltaSeconds) end

function ASipehaLongHammer_Projectile_C:ReturnToNormalMovement() end

function ASipehaLongHammer_Projectile_C:SetTarget() end

function ASipehaLongHammer_Projectile_C:StartExplodeMinTimer() end

function ASipehaLongHammer_Projectile_C:StartReappearTimer() end

function ASipehaLongHammer_Projectile_C:StartTracking() end

---@param Success boolean
function ASipehaLongHammer_Projectile_C:TryToRetarget(Success) end

ASipehaLongHammer_Projectile_C['End Tracking'] = function(self) end
