---@meta

---@class AQueen_Orb_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeIn_NewTrack_0_269997AF4A23F55B1EC4399DACCF693A float
---@field FadeIn__Direction_269997AF4A23F55B1EC4399DACCF693A ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Target AActor
---@field Fired boolean
---@field RotationRate float
---@field ['Local DT'] float
---@field RetargetCount int32
---@field Vel FVector
---@field stopped boolean
---@field CanExplode boolean
---@field GrabbedPlayer FQueen_Orb_Projectile_CGrabbedPlayer
---@field PreventPlayerHit boolean
local AQueen_Orb_Projectile_C = {}

function AQueen_Orb_Projectile_C:CheckForExplode() end

function AQueen_Orb_Projectile_C:DoMovementHitTrace() end

---@param EntryPoint int32
function AQueen_Orb_Projectile_C:ExecuteUbergraph_Queen_Orb_Projectile(EntryPoint) end

function AQueen_Orb_Projectile_C:Explode() end

function AQueen_Orb_Projectile_C:FadeIn__FinishedFunc() end

function AQueen_Orb_Projectile_C:FadeIn__UpdateFunc() end

function AQueen_Orb_Projectile_C:Fire() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AQueen_Orb_Projectile_C:GetDamage(FB_DamageAttributeSet) end

function AQueen_Orb_Projectile_C:GrabbedPlayer__DelegateSignature() end

function AQueen_Orb_Projectile_C:HomingBehaviour() end

function AQueen_Orb_Projectile_C:InstantlyDissolve() end

---@param Hit FHitResult
function AQueen_Orb_Projectile_C:ProjectileStopped_1(Hit) end

function AQueen_Orb_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AQueen_Orb_Projectile_C:ReceiveTick(DeltaSeconds) end

function AQueen_Orb_Projectile_C:SetTarget() end

function AQueen_Orb_Projectile_C:StartReappearTimer() end

function AQueen_Orb_Projectile_C:StartTracking() end

---@param Success boolean
function AQueen_Orb_Projectile_C:TryToRetarget(Success) end

AQueen_Orb_Projectile_C['End Tracking'] = function(self) end
