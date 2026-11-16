---@meta

---@class AJosamiLord_ArenaOrientationActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Blocker_L_B UStaticMeshComponent
---@field Blocker_R_B UStaticMeshComponent
---@field Blocker_F UStaticMeshComponent
---@field Blocker_B UStaticMeshComponent
---@field Blocker_CT UStaticMeshComponent
---@field Blocker_C UStaticMeshComponent
---@field PillarMassagePoint_R6 UBillboardComponent
---@field PillarMassagePointL7 UBillboardComponent
---@field PillarMassagePoint_R5 UBillboardComponent
---@field PillarMassagePointL6 UBillboardComponent
---@field PillarMassagePointL5 UBillboardComponent
---@field PillarMassagePointR4 UBillboardComponent
---@field PillarMassagePointL4 UBillboardComponent
---@field PillarMassagePoint_R3 UBillboardComponent
---@field PillarMassagePoint_L3 UBillboardComponent
---@field PillarMassagePoint_R2 UBillboardComponent
---@field PillarMassagePoint_L1 UBillboardComponent
---@field PillarMassagePoint_R1 UBillboardComponent
---@field PillarMassagePoint_L UBillboardComponent
---@field PillarMassagePoint_R UBillboardComponent
---@field AllMassagePoints USceneComponent
---@field Capsule UCapsuleComponent
---@field LandingLocation USceneComponent
---@field Blocker_R UStaticMeshComponent
---@field Blocker_L UStaticMeshComponent
---@field CloseDoorsBossTrigger UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field TargetMassagePoints TArray<FVector>
local AJosamiLord_ArenaOrientationActor_C = {}

function AJosamiLord_ArenaOrientationActor_C:BossInArena() end

function AJosamiLord_ArenaOrientationActor_C:BossIntroStarted() end

---@param EntryPoint int32
function AJosamiLord_ArenaOrientationActor_C:ExecuteUbergraph_JosamiLord_ArenaOrientationActor(EntryPoint) end

function AJosamiLord_ArenaOrientationActor_C:ReceiveBeginPlay() end
