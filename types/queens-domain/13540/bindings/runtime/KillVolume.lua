---@meta

---@class AKillVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAndProjectileBox UBoxComponent
---@field PlayerOnlyBox UBoxComponent
---@field PPBox UBoxComponent
---@field Cube UStaticMeshComponent
---@field PhotomodeBlocker UBoxComponent
---@field PPBoxDisplay UStaticMeshComponent
---@field PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field KillRules KillVolumeRules::Type
---@field WaterDeathpit boolean
---@field StatusEffectToApply EnemyStatusType::Type
local AKillVolume_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AKillVolume_C:BndEvt__Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AKillVolume_C:BndEvt__KillVolume_PlayerOnlyBox_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param EntryPoint int32
function AKillVolume_C:ExecuteUbergraph_KillVolume(EntryPoint) end
