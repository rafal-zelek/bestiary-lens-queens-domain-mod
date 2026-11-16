---@meta

---@class AWindCutter_Proj_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VelocityControl_Speed_0DD3C5F74920FABEB6F22FAA214B1F1F float
---@field VelocityControl_Return_0DD3C5F74920FABEB6F22FAA214B1F1F float
---@field VelocityControl__Direction_0DD3C5F74920FABEB6F22FAA214B1F1F ETimelineDirection::Type
---@field VelocityControl UTimelineComponent
---@field STartingVel FVector
---@field Progress float
---@field UnTouchedEnemies TSet<AActor>
---@field BOunceReturn boolean
local AWindCutter_Proj_BP_C = {}

---@param A FVector
function AWindCutter_Proj_BP_C:AlignToNormalOnEnd(A) end

---@param Hit FHitResult
function AWindCutter_Proj_BP_C:AttachToActor(Hit) end

---@param ImpactResult FHitResult
function AWindCutter_Proj_BP_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AWindCutter_Proj_BP_C:BndEvt__Chakram_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

function AWindCutter_Proj_BP_C:CanCatch() end

function AWindCutter_Proj_BP_C:CancelReturnTL() end

function AWindCutter_Proj_BP_C:Catch() end

---@param EntryPoint int32
function AWindCutter_Proj_BP_C:ExecuteUbergraph_WindCutter_Proj_BP(EntryPoint) end

---@param Hit FHitResult
function AWindCutter_Proj_BP_C:ProjectileStopped(Hit) end

function AWindCutter_Proj_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AWindCutter_Proj_BP_C:ReceiveTick(DeltaSeconds) end

function AWindCutter_Proj_BP_C:StartReturning() end

function AWindCutter_Proj_BP_C:UntouchTracking() end

function AWindCutter_Proj_BP_C:VelocityControl__FinishedFunc() end

function AWindCutter_Proj_BP_C:VelocityControl__UpdateFunc() end
