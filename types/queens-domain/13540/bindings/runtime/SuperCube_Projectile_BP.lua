---@meta

---@class ASuperCube_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ASuperCube_Projectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASuperCube_Projectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param ImpactResult FHitResult
function ASuperCube_Projectile_BP_C:BndEvt__SuperCube_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ASuperCube_Projectile_BP_C:ExecuteUbergraph_SuperCube_Projectile_BP(EntryPoint) end

function ASuperCube_Projectile_BP_C:InstantlyDissolve() end

function ASuperCube_Projectile_BP_C:ReceiveBeginPlay() end
