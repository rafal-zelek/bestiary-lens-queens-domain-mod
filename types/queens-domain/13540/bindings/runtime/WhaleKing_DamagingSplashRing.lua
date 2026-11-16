---@meta

---@class AWhaleKing_DamagingSplashRing_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SafeCyl UStaticMeshComponent
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_scale_BD4336F946403388BFFFE0B3BB6E7E99 float
---@field Timeline_0__Direction_BD4336F946403388BFFFE0B3BB6E7E99 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Damage FFB_DamageAttributeSet
---@field ['hit player already'] boolean
---@field safecylscale float
---@field PlayerIsSafe boolean
---@field PlayerIsInDanger boolean
---@field Poison boolean
---@field Whale AActor
---@field ['Normal Mat'] UMaterialInterface
---@field ['Poison Mat'] UMaterialInterface
local AWhaleKing_DamagingSplashRing_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AWhaleKing_DamagingSplashRing_C:BndEvt__WhaleKing_DamagingSplashRing_SafeCyl_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AWhaleKing_DamagingSplashRing_C:BndEvt__WhaleKing_DamagingSplashRing_SafeCyl_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AWhaleKing_DamagingSplashRing_C:BndEvt__WhaleKing_DamagingSplashRing_StaticMesh_K2Node_ComponentBoundEvent_2_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AWhaleKing_DamagingSplashRing_C:BndEvt__WhaleKing_DamagingSplashRing_StaticMesh_K2Node_ComponentBoundEvent_3_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function AWhaleKing_DamagingSplashRing_C:ExecuteUbergraph_WhaleKing_DamagingSplashRing(EntryPoint) end

function AWhaleKing_DamagingSplashRing_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AWhaleKing_DamagingSplashRing_C:ReceiveTick(DeltaSeconds) end

function AWhaleKing_DamagingSplashRing_C:SetSafeCylSize() end

function AWhaleKing_DamagingSplashRing_C:Timeline_0__FinishedFunc() end

function AWhaleKing_DamagingSplashRing_C:Timeline_0__UpdateFunc() end

function AWhaleKing_DamagingSplashRing_C:UserConstructionScript() end
