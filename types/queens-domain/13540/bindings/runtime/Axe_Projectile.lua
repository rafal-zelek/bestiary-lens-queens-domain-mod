---@meta

---@class AAxe_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_0_CCF9698D4C73BC868FF714B79E5F9BCE float
---@field Timeline_0__Direction_CCF9698D4C73BC868FF714B79E5F9BCE ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field stopped boolean
local AAxe_Projectile_C = {}

---@param ImpactResult FHitResult
function AAxe_Projectile_C:BndEvt__Axe_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function AAxe_Projectile_C:ExecuteUbergraph_Axe_Projectile(EntryPoint) end

---@param DeltaSeconds float
function AAxe_Projectile_C:ReceiveTick(DeltaSeconds) end

function AAxe_Projectile_C:Timeline_0__FinishedFunc() end

function AAxe_Projectile_C:Timeline_0__UpdateFunc() end
