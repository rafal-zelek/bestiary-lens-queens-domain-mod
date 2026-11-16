---@meta

---@class AQueenLaser_GroundWave_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field Wave UStaticMeshComponent
---@field FX UNiagaraComponent
---@field Root USceneComponent
---@field Damage FFB_DamageAttributeSet
---@field Speed float
---@field AlreadyHit boolean
---@field Audio UAudioComponent
local AQueenLaser_GroundWave_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AQueenLaser_GroundWave_C:BndEvt__QueenLaser_GroundWave_Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function AQueenLaser_GroundWave_C:Deactivate() end

---@param EntryPoint int32
function AQueenLaser_GroundWave_C:ExecuteUbergraph_QueenLaser_GroundWave(EntryPoint) end

function AQueenLaser_GroundWave_C:GetSFXLoc() end

function AQueenLaser_GroundWave_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AQueenLaser_GroundWave_C:ReceiveTick(DeltaSeconds) end
