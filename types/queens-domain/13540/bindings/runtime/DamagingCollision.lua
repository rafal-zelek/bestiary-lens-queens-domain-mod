---@meta

---@class UDamagingCollision_C : UStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActorsToTickHitsOn TSet<AActor>
---@field Damage FFB_DamageAttributeSet
---@field HitSound USoundCue
---@field ActorHitCDs TMap<TSoftObjectPtr<AActor>, float>
local UDamagingCollision_C = {}

---@param EntryPoint int32
function UDamagingCollision_C:ExecuteUbergraph_DamagingCollision(EntryPoint) end

---@param InputPin AActor
function UDamagingCollision_C:HitTarget(InputPin) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UDamagingCollision_C:OnComponentBeginOverlap_Event_0(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UDamagingCollision_C:OnComponentEndOverlap_Event_0(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function UDamagingCollision_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UDamagingCollision_C:ReceiveTick(DeltaSeconds) end
