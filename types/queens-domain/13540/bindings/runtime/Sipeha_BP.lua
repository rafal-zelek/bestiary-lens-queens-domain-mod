---@meta

---@class ASipeha_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeadInteract UBoxComponent
---@field Head USphereComponent
---@field Tail_8 USphereComponent
---@field Tail_7 USphereComponent
---@field Tail_6 USphereComponent
---@field Tail_5 USphereComponent
---@field Tail_4 USphereComponent
---@field Tail_3 USphereComponent
---@field Tail_2 USphereComponent
---@field Tail_1 USphereComponent
---@field Tail_0 USphereComponent
---@field MeshRelativeLoc FVector
---@field RemainingOrbsToShoot int32
---@field EmergencyLightning boolean
local ASipeha_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASipeha_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ASipeha_BP_C:CancelHoming() end

function ASipeha_BP_C:CheckForEmergencyLightning() end

function ASipeha_BP_C:DoHominOrbsAttack() end

function ASipeha_BP_C:Ending_Banish() end

function ASipeha_BP_C:Ending_Eat() end

---@param EntryPoint int32
function ASipeha_BP_C:ExecuteUbergraph_Sipeha_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASipeha_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ASipeha_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASipeha_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param AttackIndex int32
---@param BaseWeight float
function ASipeha_BP_C:ModifyAttackWeight(AttackIndex, BaseWeight) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_64E5E5AD49DDEC23A67A7592F2D47BDE(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_9450C5D24BC94E20A5F5C598506DF034(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_C794EB244DA99A18C1E6388DF5DE5D81(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A486D18D1(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A94379165(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A9788560A(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_64E5E5AD49DDEC23A67A7592F2D47BDE(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_9450C5D24BC94E20A5F5C598506DF034(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_C794EB244DA99A18C1E6388DF5DE5D81(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A486D18D1(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A94379165(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A9788560A(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_64E5E5AD49DDEC23A67A7592F2D47BDE(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_9450C5D24BC94E20A5F5C598506DF034(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_C794EB244DA99A18C1E6388DF5DE5D81(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A486D18D1(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A94379165(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A9788560A(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_64E5E5AD49DDEC23A67A7592F2D47BDE(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_9450C5D24BC94E20A5F5C598506DF034(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_C794EB244DA99A18C1E6388DF5DE5D81(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A486D18D1(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A94379165(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A9788560A(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_64E5E5AD49DDEC23A67A7592F2D47BDE(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_9450C5D24BC94E20A5F5C598506DF034(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_C794EB244DA99A18C1E6388DF5DE5D81(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A486D18D1(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A94379165(NotifyName) end

---@param NotifyName FName
function ASipeha_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A9788560A(NotifyName) end

---@param Duration float
function ASipeha_BP_C:Paralyze(Duration) end

function ASipeha_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASipeha_BP_C:ReceiveTick(DeltaSeconds) end

function ASipeha_BP_C:SkyLightningAttack() end

---@param Location FVector
function ASipeha_BP_C:SpawnLightningStrike(Location) end

function ASipeha_BP_C:Stagger() end

function ASipeha_BP_C:UpdateMeshSmoothing() end

function ASipeha_BP_C:killforreal() end
