---@meta

---@class AFishman_Gasball_Attack_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Playerhitbox USphereComponent
---@field PlayerPresent boolean
---@field DamageTickTimer FTimerHandle
local AFishman_Gasball_Attack_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFishman_Gasball_Attack_C:BndEvt__Fishman_Gasball_Attack_Playerhitbox_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFishman_Gasball_Attack_C:BndEvt__Fishman_Gasball_Attack_Playerhitbox_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function AFishman_Gasball_Attack_C:DamageTick() end

---@param EntryPoint int32
function AFishman_Gasball_Attack_C:ExecuteUbergraph_Fishman_Gasball_Attack(EntryPoint) end

function AFishman_Gasball_Attack_C:ReceiveBeginPlay() end

function AFishman_Gasball_Attack_C:durationexpired() end
