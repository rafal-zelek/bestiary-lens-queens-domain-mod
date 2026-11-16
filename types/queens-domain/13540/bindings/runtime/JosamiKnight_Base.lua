---@meta

---@class AJosamiKnight_Base_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DesBoss_WingsExplosion1 UNiagaraComponent
---@field DesBoss_WingsExplosion UNiagaraComponent
---@field BloodAngelWings UStaticMeshComponent
---@field InteractBox UBoxComponent
---@field KeySpot USceneComponent
---@field Head UEnemyAttachmentMesh_C
---@field Cloth_Skel UEnemySkeletalMeshAttachment_C
---@field Weapon_R UEnemyAttachmentMesh_C
---@field ReviveOrbTime_Vertical_B4E728D744D16515DCBCB6977FBA8390 float
---@field ReviveOrbTime_Overall_B4E728D744D16515DCBCB6977FBA8390 float
---@field ReviveOrbTime__Direction_B4E728D744D16515DCBCB6977FBA8390 ETimelineDirection::Type
---@field ReviveOrbTime UTimelineComponent
---@field ReviveWings_FlapBendBack_0E37CA40479A4EB6C75DFC83D5092957 float
---@field ReviveWings_FlapBendDown_0E37CA40479A4EB6C75DFC83D5092957 float
---@field ReviveWings_FadeOut_0E37CA40479A4EB6C75DFC83D5092957 float
---@field ReviveWings_FadeIn_0E37CA40479A4EB6C75DFC83D5092957 float
---@field ReviveWings__Direction_0E37CA40479A4EB6C75DFC83D5092957 ETimelineDirection::Type
---@field ReviveWings UTimelineComponent
---@field BloodPoolMode boolean
---@field ['Blood Pool'] AEnemyBase_C
---@field SummoningManta boolean
---@field SuperArmor boolean
---@field ActiveMantaSummon boolean
---@field TrulyDead boolean
---@field WaitingToGiveitem boolean
---@field HeldItem AJosami_Key_Red_BP_C
---@field BloodPoolSpawner AJosami_Des_BloodPoolSpawner_C
---@field ReviveOrb UNiagaraComponent
local AJosamiKnight_Base_C = {}

---@param Damaged boolean
function AJosamiKnight_Base_C:ActivateTrap(Damaged) end

function AJosamiKnight_Base_C:BloodReviveImmediately() end

---@param bIgnoreWeight boolean
---@param Index int32
function AJosamiKnight_Base_C:CanUseAttack(bIgnoreWeight, Index) end

function AJosamiKnight_Base_C:CancelRevive() end

function AJosamiKnight_Base_C:CustomEvent_0() end

function AJosamiKnight_Base_C:DoBloodAngelItemGive() end

---@param Mode EnemyBehaviourMode::Type
function AJosamiKnight_Base_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AJosamiKnight_Base_C:ExecuteUbergraph_JosamiKnight_Base(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AJosamiKnight_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param bOverride boolean
---@param Location FVector
function AJosamiKnight_Base_C:GetRotationTargetLocationOverride(bOverride, Location) end

function AJosamiKnight_Base_C:InitDeathFade() end

---@param PlayerInteracting AActor
function AJosamiKnight_Base_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiKnight_Base_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnBlendOut_0CB2B5A64B56D4B892D010AB6B486D6E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnBlendOut_1A90126744434F420BB91B981BE32CEA(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnBlendOut_965985D24C041A42424ACF84999F0A50(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnBlendOut_D8763CFD4563018468D1838591362215(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnBlendOut_F3E22B1B45CD6B4360962591676BB631(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnCompleted_0CB2B5A64B56D4B892D010AB6B486D6E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnCompleted_1A90126744434F420BB91B981BE32CEA(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnCompleted_965985D24C041A42424ACF84999F0A50(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnCompleted_D8763CFD4563018468D1838591362215(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnCompleted_F3E22B1B45CD6B4360962591676BB631(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AJosamiKnight_Base_C:OnFail_40520FF6457BCAA6DB38FCAAB000BE79(MovementResult) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnInterrupted_0CB2B5A64B56D4B892D010AB6B486D6E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnInterrupted_1A90126744434F420BB91B981BE32CEA(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnInterrupted_965985D24C041A42424ACF84999F0A50(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnInterrupted_D8763CFD4563018468D1838591362215(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnInterrupted_F3E22B1B45CD6B4360962591676BB631(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyBegin_0CB2B5A64B56D4B892D010AB6B486D6E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyBegin_1A90126744434F420BB91B981BE32CEA(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyBegin_965985D24C041A42424ACF84999F0A50(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyBegin_D8763CFD4563018468D1838591362215(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyBegin_F3E22B1B45CD6B4360962591676BB631(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyEnd_0CB2B5A64B56D4B892D010AB6B486D6E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyEnd_1A90126744434F420BB91B981BE32CEA(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyEnd_965985D24C041A42424ACF84999F0A50(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyEnd_D8763CFD4563018468D1838591362215(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Base_C:OnNotifyEnd_F3E22B1B45CD6B4360962591676BB631(NotifyName) end

---@param MovementResult EPathFollowingResult::Type
function AJosamiKnight_Base_C:OnSuccess_40520FF6457BCAA6DB38FCAAB000BE79(MovementResult) end

---@param Duration float
function AJosamiKnight_Base_C:Paralyze(Duration) end

function AJosamiKnight_Base_C:ProperKill() end

function AJosamiKnight_Base_C:ReceiveDestroyed() end

---@param EndPlayReason EEndPlayReason::Type
function AJosamiKnight_Base_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function AJosamiKnight_Base_C:ReceiveTick(DeltaSeconds) end

function AJosamiKnight_Base_C:ReviveOrbTime__BeginNormalReive__EventFunc() end

function AJosamiKnight_Base_C:ReviveOrbTime__FinishedFunc() end

function AJosamiKnight_Base_C:ReviveOrbTime__UpdateFunc() end

function AJosamiKnight_Base_C:ReviveWings__Explode__EventFunc() end

function AJosamiKnight_Base_C:ReviveWings__FinishedFunc() end

function AJosamiKnight_Base_C:ReviveWings__UpdateFunc() end

---@param BloodPool AEnemyBase_C
function AJosamiKnight_Base_C:SetToBloodPoolMode(BloodPool) end

function AJosamiKnight_Base_C:Stagger() end

function AJosamiKnight_Base_C:SummonManta() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AJosamiKnight_Base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AJosamiKnight_Base_C:keygot() end
