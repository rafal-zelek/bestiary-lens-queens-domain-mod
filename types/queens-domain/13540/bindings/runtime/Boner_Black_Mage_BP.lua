---@meta

---@class ABoner_Black_Mage_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field AOEHitbox USphereComponent
---@field WandGlow UGlowSpriteComp_C
---@field Bottom UEnemySkeletalMeshAttachment_C
---@field Top UEnemySkeletalMeshAttachment_C
---@field Hat UEnemyAttachmentMesh_C
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field DummyNPC TSubclassOf<AShrineboss-DummyNPC_BP_C>
local ABoner_Black_Mage_BP_C = {}

---@param Damaged boolean
function ABoner_Black_Mage_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Black_Mage_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Black_Mage_BP_C:BaseKill() end

function ABoner_Black_Mage_BP_C:DoAOEAttack() end

function ABoner_Black_Mage_BP_C:DoShrinebossKill() end

function ABoner_Black_Mage_BP_C:DoSkullsAttack() end

function ABoner_Black_Mage_BP_C:Ended() end

---@param EntryPoint int32
function ABoner_Black_Mage_BP_C:ExecuteUbergraph_Boner_Black_Mage_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ABoner_Black_Mage_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ABoner_Black_Mage_BP_C:GetProjectileSpawnLoc() end

---@param PlayerInteracting AActor
function ABoner_Black_Mage_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Black_Mage_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnBlendOut_A678EC2A4FAFE271CCB1D4B74F85BA46(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A5991A1C5(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A63EF3DB7(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AA96033FE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnCompleted_A678EC2A4FAFE271CCB1D4B74F85BA46(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A5991A1C5(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A63EF3DB7(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AA96033FE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnInterrupted_A678EC2A4FAFE271CCB1D4B74F85BA46(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A5991A1C5(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A63EF3DB7(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AA96033FE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyBegin_A678EC2A4FAFE271CCB1D4B74F85BA46(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A5991A1C5(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A63EF3DB7(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AA96033FE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyEnd_A678EC2A4FAFE271CCB1D4B74F85BA46(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A5991A1C5(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A63EF3DB7(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Mage_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AA96033FE(NotifyName) end

function ABoner_Black_Mage_BP_C:ReceiveBeginPlay() end

function ABoner_Black_Mage_BP_C:SpawnSkull() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABoner_Black_Mage_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABoner_Black_Mage_BP_C:UserConstructionScript() end
