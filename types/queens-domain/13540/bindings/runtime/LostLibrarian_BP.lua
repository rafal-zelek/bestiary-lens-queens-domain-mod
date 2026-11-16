---@meta

---@class ALostLibrarian_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
local ALostLibrarian_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALostLibrarian_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ALostLibrarian_BP_C:ExecuteUbergraph_LostLibrarian_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ALostLibrarian_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ALostLibrarian_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALostLibrarian_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ALostLibrarian_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A89E86A12(NotifyName) end

---@param NotifyName FName
function ALostLibrarian_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A89E86A12(NotifyName) end

---@param NotifyName FName
function ALostLibrarian_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A89E86A12(NotifyName) end

---@param NotifyName FName
function ALostLibrarian_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A89E86A12(NotifyName) end

---@param NotifyName FName
function ALostLibrarian_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A89E86A12(NotifyName) end

function ALostLibrarian_BP_C:ReceiveBeginPlay() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ALostLibrarian_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
