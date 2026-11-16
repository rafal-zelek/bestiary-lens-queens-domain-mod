---@meta

---@class ARibber_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TailSlapHitbox USphereComponent
---@field TrapDirt UStaticMeshComponent
---@field Timeline_1_0_NewTrack_0_178EB0EC44C0CE5D57EAA9B1333D2526 float
---@field Timeline_1_0__Direction_178EB0EC44C0CE5D57EAA9B1333D2526 ETimelineDirection::Type
---@field Timeline_1_0 UTimelineComponent
---@field waitforsolidcapsule boolean
local ARibber_Base_BP_C = {}

---@param Damaged boolean
function ARibber_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ARibber_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Path TArray<FVector>
---@param Reverse boolean
---@param Length float
function ARibber_Base_BP_C:DoJump(Path, Reverse, Length) end

---@param Mode EnemyBehaviourMode::Type
function ARibber_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ARibber_Base_BP_C:ExecuteUbergraph_Ribber_Base_BP(EntryPoint) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnBlendOut_09F53A9C4F8113F37F013A8DAEA62BB0(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnBlendOut_3D42BC714D47195465E7F89BFDD4039B(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnBlendOut_5806C98E45A4003EFC6E82805764D1A5(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnBlendOut_D39AE5AE4B7A6884AFBC96A5B60F82CC(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnCompleted_09F53A9C4F8113F37F013A8DAEA62BB0(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnCompleted_3D42BC714D47195465E7F89BFDD4039B(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnCompleted_5806C98E45A4003EFC6E82805764D1A5(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnCompleted_D39AE5AE4B7A6884AFBC96A5B60F82CC(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnInterrupted_09F53A9C4F8113F37F013A8DAEA62BB0(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnInterrupted_3D42BC714D47195465E7F89BFDD4039B(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnInterrupted_5806C98E45A4003EFC6E82805764D1A5(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnInterrupted_D39AE5AE4B7A6884AFBC96A5B60F82CC(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyBegin_09F53A9C4F8113F37F013A8DAEA62BB0(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyBegin_3D42BC714D47195465E7F89BFDD4039B(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyBegin_5806C98E45A4003EFC6E82805764D1A5(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyBegin_D39AE5AE4B7A6884AFBC96A5B60F82CC(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyEnd_09F53A9C4F8113F37F013A8DAEA62BB0(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyEnd_3D42BC714D47195465E7F89BFDD4039B(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyEnd_5806C98E45A4003EFC6E82805764D1A5(NotifyName) end

---@param NotifyName FName
function ARibber_Base_BP_C:OnNotifyEnd_D39AE5AE4B7A6884AFBC96A5B60F82CC(NotifyName) end

function ARibber_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ARibber_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ARibber_Base_BP_C:SetUpTrapDirt() end

function ARibber_Base_BP_C:Timeline_1_0__FinishedFunc() end

function ARibber_Base_BP_C:Timeline_1_0__UpdateFunc() end

function ARibber_Base_BP_C:UptimizeTrapLocation() end

function ARibber_Base_BP_C:UserConstructionScript() end
