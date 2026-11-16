---@meta

---@class ASipeha_Homing_Orb_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeIn_NewTrack_0_AE4FF20646AA2F6C6F3541824972E8CE float
---@field FadeIn__Direction_AE4FF20646AA2F6C6F3541824972E8CE ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Target AActor
---@field Fired boolean
---@field RotationRate float
---@field ['Local DT'] float
---@field RetargetCount int32
---@field Vel FVector
---@field stopped boolean
---@field CanExplode boolean
---@field GrabbedPlayer FSipeha_Homing_Orb_CGrabbedPlayer
---@field PreventPlayerHit boolean
local ASipeha_Homing_Orb_C = {}

function ASipeha_Homing_Orb_C:CheckForExplode() end

function ASipeha_Homing_Orb_C:DoMovementHitTrace() end

---@param EntryPoint int32
function ASipeha_Homing_Orb_C:ExecuteUbergraph_Sipeha_Homing_Orb(EntryPoint) end

function ASipeha_Homing_Orb_C:Explode() end

function ASipeha_Homing_Orb_C:FadeIn__FinishedFunc() end

function ASipeha_Homing_Orb_C:FadeIn__UpdateFunc() end

function ASipeha_Homing_Orb_C:Fire() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ASipeha_Homing_Orb_C:GetDamage(FB_DamageAttributeSet) end

function ASipeha_Homing_Orb_C:GrabbedPlayer__DelegateSignature() end

function ASipeha_Homing_Orb_C:HomingBehaviour() end

function ASipeha_Homing_Orb_C:InstantlyDissolve() end

---@param Hit FHitResult
function ASipeha_Homing_Orb_C:ProjectileStopped_1(Hit) end

function ASipeha_Homing_Orb_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASipeha_Homing_Orb_C:ReceiveTick(DeltaSeconds) end

function ASipeha_Homing_Orb_C:SetTarget() end

function ASipeha_Homing_Orb_C:StartReappearTimer() end

function ASipeha_Homing_Orb_C:StartTracking() end

---@param Success boolean
function ASipeha_Homing_Orb_C:TryToRetarget(Success) end

ASipeha_Homing_Orb_C['End Tracking'] = function(self) end
