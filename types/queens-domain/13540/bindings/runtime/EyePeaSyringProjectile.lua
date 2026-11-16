---@meta

---@class AEyePeaSyringProjectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VelocityControl_Speed_882E1C9E443F1295D3D53F9E45F4DABA float
---@field VelocityControl_Return_882E1C9E443F1295D3D53F9E45F4DABA float
---@field VelocityControl__Direction_882E1C9E443F1295D3D53F9E45F4DABA ETimelineDirection::Type
---@field VelocityControl UTimelineComponent
---@field STartingVel FVector
---@field Progress float
---@field UnTouchedEnemies TSet<AActor>
---@field BOunceReturn boolean
local AEyePeaSyringProjectile_C = {}

---@param A FVector
function AEyePeaSyringProjectile_C:AlignToNormalOnEnd(A) end

---@param Hit FHitResult
function AEyePeaSyringProjectile_C:AttachToActor(Hit) end

---@param ImpactResult FHitResult
function AEyePeaSyringProjectile_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AEyePeaSyringProjectile_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

function AEyePeaSyringProjectile_C:CanCatch() end

function AEyePeaSyringProjectile_C:CancelReturnTL() end

function AEyePeaSyringProjectile_C:Catch() end

---@param EntryPoint int32
function AEyePeaSyringProjectile_C:ExecuteUbergraph_EyePeaSyringProjectile(EntryPoint) end

---@param Hit FHitResult
function AEyePeaSyringProjectile_C:ProjectileStopped(Hit) end

function AEyePeaSyringProjectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEyePeaSyringProjectile_C:ReceiveTick(DeltaSeconds) end

function AEyePeaSyringProjectile_C:StartReturning() end

function AEyePeaSyringProjectile_C:UntouchTracking() end

function AEyePeaSyringProjectile_C:VelocityControl__FinishedFunc() end

function AEyePeaSyringProjectile_C:VelocityControl__UpdateFunc() end
