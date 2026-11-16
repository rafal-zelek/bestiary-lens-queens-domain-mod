---@meta

---@class ABoner_Shrineboss_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field Box UBoxComponent
---@field EnemySkeletalMeshAttachment UEnemySkeletalMeshAttachment_C
---@field BigAttackChance float
---@field BigAttackDamageMult float
---@field BigAttackTriggerRange float
---@field DummyNPC TSubclassOf<AShrineboss-DummyNPC_BP_C>
---@field BigAttackStartTime float
---@field Music USoundCue
local ABoner_Shrineboss_BP_C = {}

---@param Damaged boolean
function ABoner_Shrineboss_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Shrineboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Shrineboss_BP_C:BaseKill() end

function ABoner_Shrineboss_BP_C:BigslashhitboxStarted() end

function ABoner_Shrineboss_BP_C:CancelSlam() end

function ABoner_Shrineboss_BP_C:DoBigAttack() end

function ABoner_Shrineboss_BP_C:DoNormalAttack() end

function ABoner_Shrineboss_BP_C:DoShrinebossKill() end

function ABoner_Shrineboss_BP_C:Ended() end

---@param EntryPoint int32
function ABoner_Shrineboss_BP_C:ExecuteUbergraph_Boner_Shrineboss_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ABoner_Shrineboss_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ABoner_Shrineboss_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Shrineboss_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnBlendOut_2E2901D44B40CD5DE8E18DB9030A8C16(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnBlendOut_7009967F488314C1FE7B4BB77A992650(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnBlendOut_BA5575B94C952C4BB24C068A171B4C37(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnBlendOut_BF5D2C344CB8919A98DCE7B4C799AF11(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnCompleted_2E2901D44B40CD5DE8E18DB9030A8C16(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnCompleted_7009967F488314C1FE7B4BB77A992650(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnCompleted_BA5575B94C952C4BB24C068A171B4C37(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnCompleted_BF5D2C344CB8919A98DCE7B4C799AF11(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnInterrupted_2E2901D44B40CD5DE8E18DB9030A8C16(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnInterrupted_7009967F488314C1FE7B4BB77A992650(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnInterrupted_BA5575B94C952C4BB24C068A171B4C37(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnInterrupted_BF5D2C344CB8919A98DCE7B4C799AF11(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyBegin_2E2901D44B40CD5DE8E18DB9030A8C16(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyBegin_7009967F488314C1FE7B4BB77A992650(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyBegin_BA5575B94C952C4BB24C068A171B4C37(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyBegin_BF5D2C344CB8919A98DCE7B4C799AF11(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyEnd_2E2901D44B40CD5DE8E18DB9030A8C16(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyEnd_7009967F488314C1FE7B4BB77A992650(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyEnd_BA5575B94C952C4BB24C068A171B4C37(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_BP_C:OnNotifyEnd_BF5D2C344CB8919A98DCE7B4C799AF11(NotifyName) end

function ABoner_Shrineboss_BP_C:ReceiveBeginPlay() end

function ABoner_Shrineboss_BP_C:Stagger() end
