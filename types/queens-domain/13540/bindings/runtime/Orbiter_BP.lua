---@meta

---@class AOrbiter_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field FootHitbox USphereComponent
---@field Orbiter_AOE UNiagaraComponent
---@field AOEHitbox USphereComponent
---@field Ball1 UEnemyAttachmentMesh_C
---@field Ball UEnemyAttachmentMesh_C
---@field Mace UEnemyAttachmentMesh_C
local AOrbiter_BP_C = {}

function AOrbiter_BP_C:AOE() end

---@param Damaged boolean
function AOrbiter_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AOrbiter_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AOrbiter_BP_C:CancelAOE() end

---@param Allow_Multi_Drop boolean
---@param Force boolean
function AOrbiter_BP_C:DropItem(Allow_Multi_Drop, Force) end

function AOrbiter_BP_C:Ended() end

---@param Mode EnemyBehaviourMode::Type
function AOrbiter_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AOrbiter_BP_C:ExecuteUbergraph_Orbiter_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AOrbiter_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AOrbiter_BP_C:InitDeathFade() end

---@param PlayerInteracting AActor
function AOrbiter_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AOrbiter_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AOrbiter_BP_C:OnBlendOut_5D76D61348B7C294B30CC1BA3FBCDA8E(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnBlendOut_6E649A6C4B0C988D159D59810D7B19F7(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A02646535(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AD9D586AB(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AF69808DF(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnCompleted_5D76D61348B7C294B30CC1BA3FBCDA8E(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnCompleted_6E649A6C4B0C988D159D59810D7B19F7(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A02646535(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AD9D586AB(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AF69808DF(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnInterrupted_5D76D61348B7C294B30CC1BA3FBCDA8E(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnInterrupted_6E649A6C4B0C988D159D59810D7B19F7(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A02646535(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AD9D586AB(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AF69808DF(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyBegin_5D76D61348B7C294B30CC1BA3FBCDA8E(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyBegin_6E649A6C4B0C988D159D59810D7B19F7(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A02646535(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AD9D586AB(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AF69808DF(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyEnd_5D76D61348B7C294B30CC1BA3FBCDA8E(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyEnd_6E649A6C4B0C988D159D59810D7B19F7(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A02646535(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AD9D586AB(NotifyName) end

---@param NotifyName FName
function AOrbiter_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AF69808DF(NotifyName) end

function AOrbiter_BP_C:Slam() end

---@param Size float
---@param ExpandDuration float
function AOrbiter_BP_C:StartAOE(Size, ExpandDuration) end

function AOrbiter_BP_C:UserConstructionScript() end

function AOrbiter_BP_C:grabblemace() end
