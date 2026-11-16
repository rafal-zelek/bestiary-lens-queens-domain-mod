---@meta

---@class AJosamiBloodLord_Sword_BP_C : AJosamiLord_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BloodLords_WingsExplosion1 UNiagaraComponent
---@field BloodLords_WingsExplosion UNiagaraComponent
---@field Wings UStaticMeshComponent
---@field DoWingsAnim_SuperDepthFade_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim_FadeOut_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim_FoldDown_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim_Foldback_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim_Curl_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim_FadeIn_01C75CF7414CA9D663672799C7DC23FE float
---@field DoWingsAnim__Direction_01C75CF7414CA9D663672799C7DC23FE ETimelineDirection::Type
---@field DoWingsAnim UTimelineComponent
---@field WaitingToDoDuoMove boolean
---@field DuoMoveHPRemaining float
---@field ActivelyDoingDuoMove boolean
---@field MovingToDuoMove boolean
---@field DuoMoveTarget FVector
---@field ReachedDuoMovePos boolean
---@field GunmoveTarget FVector
---@field DuoPos float
---@field ExplodeAOE float
---@field FireballDamage FFB_DamageAttributeSet
local AJosamiBloodLord_Sword_BP_C = {}

---@param Damaged boolean
function AJosamiBloodLord_Sword_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AJosamiBloodLord_Sword_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiBloodLord_Sword_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Can boolean
function AJosamiBloodLord_Sword_BP_C:CanDoDuoAttack(Can) end

---@param bIgnoreWeight boolean
---@param Index int32
function AJosamiBloodLord_Sword_BP_C:CanUseAttack(bIgnoreWeight, Index) end

---@param FromOther boolean
function AJosamiBloodLord_Sword_BP_C:CancelDuoMove(FromOther) end

---@param ReceivedHPDamage float
function AJosamiBloodLord_Sword_BP_C:DamageHP(ReceivedHPDamage) end

function AJosamiBloodLord_Sword_BP_C:DoWingsAnim__FinishedFunc() end

function AJosamiBloodLord_Sword_BP_C:DoWingsAnim__UpdateFunc() end

function AJosamiBloodLord_Sword_BP_C:DoWingsAnim__basplode__EventFunc() end

---@param EntryPoint int32
function AJosamiBloodLord_Sword_BP_C:ExecuteUbergraph_JosamiBloodLord_Sword_BP(EntryPoint) end

---@param ArenaCenter AActor
function AJosamiBloodLord_Sword_BP_C:GetArenaCenter(ArenaCenter) end

---@param Phase_Index int32
function AJosamiBloodLord_Sword_BP_C:GetDesiredPhase(Phase_Index) end

---@param AngleDeg float
---@param ReturnValue2 FRotator
function AJosamiBloodLord_Sword_BP_C:GetFireballSpawnLoc(AngleDeg, ReturnValue2) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AJosamiBloodLord_Sword_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param Other AJosamiBloodLord_Gun_BP_C
function AJosamiBloodLord_Sword_BP_C:GetOtherLord(Other) end

---@param bOverride boolean
---@param Location FVector
function AJosamiBloodLord_Sword_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param Percent float
function AJosamiBloodLord_Sword_BP_C:HealFromVamping(Percent) end

---@param PlayerInteracting AActor
function AJosamiBloodLord_Sword_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiBloodLord_Sword_BP_C:Kill(NoRewards, SupressDeathSound) end

function AJosamiBloodLord_Sword_BP_C:NonCastleJumpStartup() end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnBlendOut_2494BC3E427F7B2C8BB850A417BBB954(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnBlendOut_9CF5EAEE4546196CFDF5EAB7DC09F24C(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnBlendOut_B82267C64028AF61F8EB3987A30ACB93(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnCompleted_2494BC3E427F7B2C8BB850A417BBB954(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnCompleted_9CF5EAEE4546196CFDF5EAB7DC09F24C(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnCompleted_B82267C64028AF61F8EB3987A30ACB93(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnInterrupted_2494BC3E427F7B2C8BB850A417BBB954(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnInterrupted_9CF5EAEE4546196CFDF5EAB7DC09F24C(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnInterrupted_B82267C64028AF61F8EB3987A30ACB93(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyBegin_2494BC3E427F7B2C8BB850A417BBB954(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyBegin_9CF5EAEE4546196CFDF5EAB7DC09F24C(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyBegin_B82267C64028AF61F8EB3987A30ACB93(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyEnd_2494BC3E427F7B2C8BB850A417BBB954(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyEnd_9CF5EAEE4546196CFDF5EAB7DC09F24C(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Sword_BP_C:OnNotifyEnd_B82267C64028AF61F8EB3987A30ACB93(NotifyName) end

---@param Duration float
function AJosamiBloodLord_Sword_BP_C:Paralyze(Duration) end

function AJosamiBloodLord_Sword_BP_C:PrepForDuoMove() end

function AJosamiBloodLord_Sword_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJosamiBloodLord_Sword_BP_C:ReceiveTick(DeltaSeconds) end

function AJosamiBloodLord_Sword_BP_C:RefillDuoMoveHP() end

function AJosamiBloodLord_Sword_BP_C:ShareHP() end

---@param StartingRotationoffset FRotator
function AJosamiBloodLord_Sword_BP_C:SpawnMountedProjectile(StartingRotationoffset) end

function AJosamiBloodLord_Sword_BP_C:Stagger() end

function AJosamiBloodLord_Sword_BP_C:StartActiveDuoMove() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AJosamiBloodLord_Sword_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AJosamiBloodLord_Sword_BP_C:killforreal() end
