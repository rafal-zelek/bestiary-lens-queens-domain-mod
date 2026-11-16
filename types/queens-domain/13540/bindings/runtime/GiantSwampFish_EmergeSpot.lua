---@meta

---@class AGiantSwampFish_EmergeSpot_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Deadcollider5 UBoxComponent
---@field Deadcollider4 UBoxComponent
---@field Deadcollider3 UBoxComponent
---@field Deadcollider2 UBoxComponent
---@field Deadcollider1 UBoxComponent
---@field Deadcollider0 UBoxComponent
---@field DeadColliders USceneComponent
---@field SkeletonPreviewLoc USkeletalMeshComponent
---@field FleshMound UStaticMeshComponent
---@field DeadStuff USceneComponent
---@field DeadMesh USkeletalMeshComponent
---@field HitArea USphereComponent
---@field TriggerArea USphereComponent
---@field PreviewBiteMesh USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field ShowBitePreview boolean
---@field EmergeLocationTriggered FGiantSwampFish_EmergeSpot_CEmergeLocationTriggered
---@field Index int32
---@field ShowDeadPreview boolean
---@field ObjectInMouth AActor
local AGiantSwampFish_EmergeSpot_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AGiantSwampFish_EmergeSpot_C:BndEvt__GiantSwampFish_EmergeSpot_TriggerArea_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function AGiantSwampFish_EmergeSpot_C:DoDeathSequence() end

---@param Spot AGiantSwampFish_EmergeSpot_C
function AGiantSwampFish_EmergeSpot_C:EmergeLocationTriggered__DelegateSignature(Spot) end

---@param EntryPoint int32
function AGiantSwampFish_EmergeSpot_C:ExecuteUbergraph_GiantSwampFish_EmergeSpot(EntryPoint) end

function AGiantSwampFish_EmergeSpot_C:Init() end

function AGiantSwampFish_EmergeSpot_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AGiantSwampFish_EmergeSpot_C:ReceiveTick(DeltaSeconds) end

---@param NewType ECollisionEnabled::Type
function AGiantSwampFish_EmergeSpot_C:SetCollisionOnDeadColliders(NewType) end

function AGiantSwampFish_EmergeSpot_C:UserConstructionScript() end

AGiantSwampFish_EmergeSpot_C['Snap Treasure  to Loc'] = function(self) end
