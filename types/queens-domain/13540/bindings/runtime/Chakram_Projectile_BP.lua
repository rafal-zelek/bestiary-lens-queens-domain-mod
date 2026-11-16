---@meta

---@class AChakram_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VelocityControl_Speed_16950F5D4FFE2BFC5B6646B7402C14F8 float
---@field VelocityControl_Return_16950F5D4FFE2BFC5B6646B7402C14F8 float
---@field VelocityControl__Direction_16950F5D4FFE2BFC5B6646B7402C14F8 ETimelineDirection::Type
---@field VelocityControl UTimelineComponent
---@field STartingVel FVector
---@field Progress float
---@field UnTouchedEnemies TSet<AActor>
---@field BOunceReturn boolean
local AChakram_Projectile_BP_C = {}

---@param ImpactResult FHitResult
function AChakram_Projectile_BP_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AChakram_Projectile_BP_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

function AChakram_Projectile_BP_C:CanCatch() end

function AChakram_Projectile_BP_C:CancelReturnTL() end

function AChakram_Projectile_BP_C:Catch() end

---@param EntryPoint int32
function AChakram_Projectile_BP_C:ExecuteUbergraph_Chakram_Projectile_BP(EntryPoint) end

---@param Hit FHitResult
function AChakram_Projectile_BP_C:ProjectileStopped(Hit) end

function AChakram_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AChakram_Projectile_BP_C:ReceiveTick(DeltaSeconds) end

function AChakram_Projectile_BP_C:StartReturning() end

function AChakram_Projectile_BP_C:UntouchTracking() end

function AChakram_Projectile_BP_C:VelocityControl__FinishedFunc() end

function AChakram_Projectile_BP_C:VelocityControl__UpdateFunc() end
