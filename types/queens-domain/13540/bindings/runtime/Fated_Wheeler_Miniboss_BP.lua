---@meta

---@class AFated_Wheeler_Miniboss_BP_C : AFated_Wheeler_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpinHitbox USphereComponent
---@field OpenCurtainInteract UBoxComponent
---@field MySpawner AFated_Wheeler_MinibossSpawner_C
---@field Spiker ALordly_Spiker_Miniboss_BP_C
---@field SpikerSnapStartPos FVector
---@field SpikerSnapStartRot FRotator
---@field comboattacking boolean
---@field SpinningSFX UAudioComponent
---@field SuperArmored boolean
local AFated_Wheeler_Miniboss_BP_C = {}

---@param Damaged boolean
function AFated_Wheeler_Miniboss_BP_C:ActivateTrap(Damaged) end

function AFated_Wheeler_Miniboss_BP_C:ActualComboAttack() end

function AFated_Wheeler_Miniboss_BP_C:AttachSpiker() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFated_Wheeler_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AFated_Wheeler_Miniboss_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AFated_Wheeler_Miniboss_BP_C:CancelComboAttack() end

---@param Can boolean
function AFated_Wheeler_Miniboss_BP_C:CheckCanBeginActualCombo(Can) end

function AFated_Wheeler_Miniboss_BP_C:ComboTimedOut() end

function AFated_Wheeler_Miniboss_BP_C:DetachSpiker() end

function AFated_Wheeler_Miniboss_BP_C:EndComboAttackNaturally() end

function AFated_Wheeler_Miniboss_BP_C:EndRunning() end

---@param Mode EnemyBehaviourMode::Type
function AFated_Wheeler_Miniboss_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AFated_Wheeler_Miniboss_BP_C:ExecuteUbergraph_Fated_Wheeler_Miniboss_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFated_Wheeler_Miniboss_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param bOverride boolean
---@param Location FVector
function AFated_Wheeler_Miniboss_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param PlayerInteracting AActor
function AFated_Wheeler_Miniboss_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFated_Wheeler_Miniboss_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_075ABFDD43941B9FDD21DBA76679816D(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_18CA11D84382E1014F0F258A0F52EF9E(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_27823C8C42B363EB30D6AB944467CDF8(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_DC1C834C46270CD14D8B93847CBE1C2A(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_EEB91180467EEA128279D29C6552250C(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9ACA0F7B48(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_075ABFDD43941B9FDD21DBA76679816D(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_18CA11D84382E1014F0F258A0F52EF9E(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_27823C8C42B363EB30D6AB944467CDF8(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_DC1C834C46270CD14D8B93847CBE1C2A(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_EEB91180467EEA128279D29C6552250C(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9ACA0F7B48(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_075ABFDD43941B9FDD21DBA76679816D(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_18CA11D84382E1014F0F258A0F52EF9E(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_27823C8C42B363EB30D6AB944467CDF8(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_DC1C834C46270CD14D8B93847CBE1C2A(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_EEB91180467EEA128279D29C6552250C(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9ACA0F7B48(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_075ABFDD43941B9FDD21DBA76679816D(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_18CA11D84382E1014F0F258A0F52EF9E(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_27823C8C42B363EB30D6AB944467CDF8(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_DC1C834C46270CD14D8B93847CBE1C2A(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_EEB91180467EEA128279D29C6552250C(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9ACA0F7B48(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_075ABFDD43941B9FDD21DBA76679816D(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_18CA11D84382E1014F0F258A0F52EF9E(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_27823C8C42B363EB30D6AB944467CDF8(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_DC1C834C46270CD14D8B93847CBE1C2A(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_EEB91180467EEA128279D29C6552250C(NotifyName) end

---@param NotifyName FName
function AFated_Wheeler_Miniboss_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9ACA0F7B48(NotifyName) end

---@param Duration float
function AFated_Wheeler_Miniboss_BP_C:Paralyze(Duration) end

function AFated_Wheeler_Miniboss_BP_C:ReadyForCombo() end

function AFated_Wheeler_Miniboss_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFated_Wheeler_Miniboss_BP_C:ReceiveTick(DeltaSeconds) end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AFated_Wheeler_Miniboss_BP_C:SpikerDied(bNoRewards, EnemyThatDied) end

---@param EnemyThatStaggered AFS_EnemyCharacterBase
function AFated_Wheeler_Miniboss_BP_C:SpikerStaggered(EnemyThatStaggered) end

function AFated_Wheeler_Miniboss_BP_C:Stagger() end

function AFated_Wheeler_Miniboss_BP_C:SyncBounceAnims() end

function AFated_Wheeler_Miniboss_BP_C:fadeoutcurrentspinsfx() end

AFated_Wheeler_Miniboss_BP_C['Shoot Spiker attack'] = function(self) end
