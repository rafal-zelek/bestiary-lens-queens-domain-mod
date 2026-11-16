---@meta

---@class AMimic_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_ChestCharm_SM UStaticMeshComponent
---@field Box UBoxComponent
---@field LArmHitbox4 USphereComponent
---@field RArmHitbox4 USphereComponent
---@field RArmHitbox3 USphereComponent
---@field LArmHitbox3 USphereComponent
---@field LArmHitbox USphereComponent
---@field LArmHitbox2 USphereComponent
---@field LArmHitbox1 USphereComponent
---@field RArmHitbox2 USphereComponent
---@field RArmHitbox1 USphereComponent
---@field RArmHitbox USphereComponent
---@field LidAttach UEnemyAttachmentMesh_C
---@field ChestAttach UEnemyAttachmentMesh_C
---@field OpenSound USoundBase
---@field ['Phys Mat'] UPhysicalMaterial
local AMimic_BP_C = {}

---@param Damaged boolean
function AMimic_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AMimic_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AMimic_BP_C:Ended() end

---@param Mode EnemyBehaviourMode::Type
function AMimic_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMimic_BP_C:ExecuteUbergraph_Mimic_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMimic_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AMimic_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMimic_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AMimic_BP_C:OnBlendOut_0CA9936247C24C09C20EAAB433739A65(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnBlendOut_1768182149CD1DBF0936BF81C671EA3C(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnBlendOut_462481944AEF30576CBEBCBA5E879A42(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnBlendOut_764B5C9646B283E2D56E7A9A39417EC2(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnCompleted_0CA9936247C24C09C20EAAB433739A65(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnCompleted_1768182149CD1DBF0936BF81C671EA3C(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnCompleted_462481944AEF30576CBEBCBA5E879A42(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnCompleted_764B5C9646B283E2D56E7A9A39417EC2(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnInterrupted_0CA9936247C24C09C20EAAB433739A65(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnInterrupted_1768182149CD1DBF0936BF81C671EA3C(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnInterrupted_462481944AEF30576CBEBCBA5E879A42(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnInterrupted_764B5C9646B283E2D56E7A9A39417EC2(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyBegin_0CA9936247C24C09C20EAAB433739A65(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyBegin_1768182149CD1DBF0936BF81C671EA3C(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyBegin_462481944AEF30576CBEBCBA5E879A42(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyBegin_764B5C9646B283E2D56E7A9A39417EC2(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyEnd_0CA9936247C24C09C20EAAB433739A65(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyEnd_1768182149CD1DBF0936BF81C671EA3C(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyEnd_462481944AEF30576CBEBCBA5E879A42(NotifyName) end

---@param NotifyName FName
function AMimic_BP_C:OnNotifyEnd_764B5C9646B283E2D56E7A9A39417EC2(NotifyName) end

---@param Duration float
function AMimic_BP_C:Paralyze(Duration) end

function AMimic_BP_C:ReceiveBeginPlay() end

function AMimic_BP_C:Stagger() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AMimic_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
