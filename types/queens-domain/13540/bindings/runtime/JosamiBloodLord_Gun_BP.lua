---@meta

---@class AJosamiBloodLord_Gun_BP_C : AJosamiLord_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BloodLords_WingsExplosion UNiagaraComponent
---@field BloodLords_WingsExplosion1 UNiagaraComponent
---@field Wings UStaticMeshComponent
---@field PlayerCloseTimer float
---@field FixGunAimStart FVector
---@field WaitingToDoDuo boolean
---@field DuoMoveTarget FVector
---@field MovingToDuoMove boolean
---@field ActivelyDoingDuoMove boolean
---@field ReachedDuoMovePos boolean
---@field GunRelocateTarget FVector
---@field RecentlyJumped boolean
local AJosamiBloodLord_Gun_BP_C = {}

---@param Damaged boolean
function AJosamiBloodLord_Gun_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiBloodLord_Gun_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AJosamiBloodLord_Gun_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AJosamiBloodLord_Gun_BP_C:CancelArenaClearAttack() end

---@param FromOther boolean
function AJosamiBloodLord_Gun_BP_C:CancelDuoMove(FromOther) end

function AJosamiBloodLord_Gun_BP_C:CancelGunState() end

function AJosamiBloodLord_Gun_BP_C:CancelNormalGunAttack() end

function AJosamiBloodLord_Gun_BP_C:CheckForStuckPath() end

function AJosamiBloodLord_Gun_BP_C:CheckGunStateConditions() end

function AJosamiBloodLord_Gun_BP_C:DoArenaClearGunAttack() end

function AJosamiBloodLord_Gun_BP_C:DoArenaClearHit() end

function AJosamiBloodLord_Gun_BP_C:DoDuoAttack() end

function AJosamiBloodLord_Gun_BP_C:DoEndGunModeJumpSlash() end

function AJosamiBloodLord_Gun_BP_C:DoJumpAway() end

function AJosamiBloodLord_Gun_BP_C:DoNormalGunAttack() end

function AJosamiBloodLord_Gun_BP_C:EnterGunState() end

---@param EntryPoint int32
function AJosamiBloodLord_Gun_BP_C:ExecuteUbergraph_JosamiBloodLord_Gun_BP(EntryPoint) end

function AJosamiBloodLord_Gun_BP_C:FireNormalLightningRound() end

---@param ArenaCenter AActor
function AJosamiBloodLord_Gun_BP_C:GetArenaCenter(ArenaCenter) end

function AJosamiBloodLord_Gun_BP_C:GetDefaultGunAimPoint() end

---@param Phase_Index int32
function AJosamiBloodLord_Gun_BP_C:GetDesiredPhase(Phase_Index) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AJosamiBloodLord_Gun_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param Other AJosamiBloodLord_Sword_BP_C
function AJosamiBloodLord_Gun_BP_C:GetOtherLord(Other) end

---@param bOverride boolean
---@param Location FVector
function AJosamiBloodLord_Gun_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param PlayerInteracting AActor
function AJosamiBloodLord_Gun_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiBloodLord_Gun_BP_C:Kill(NoRewards, SupressDeathSound) end

function AJosamiBloodLord_Gun_BP_C:MakeGunRelocateTarget() end

function AJosamiBloodLord_Gun_BP_C:NaturalChargeGunEnd() end

function AJosamiBloodLord_Gun_BP_C:NonCastleJumpStartup() end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_0E22FC9F40D196F69A0C89952CC533A6(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_4A7872EC4D335C7C988B0DBEF006D204(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_57652DBF44A3ABC7DE1A5F9551D4ACEC(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_90533D2C400A148887617289327AA374(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_B4CB5B9A47C2422B46924FB4D9420F2D(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_C2F500E44A7777109AA4A6A12FB60976(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnBlendOut_ED6C7734417C65157CFBDFBE65698D05(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_0E22FC9F40D196F69A0C89952CC533A6(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_4A7872EC4D335C7C988B0DBEF006D204(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_57652DBF44A3ABC7DE1A5F9551D4ACEC(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_90533D2C400A148887617289327AA374(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_B4CB5B9A47C2422B46924FB4D9420F2D(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_C2F500E44A7777109AA4A6A12FB60976(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnCompleted_ED6C7734417C65157CFBDFBE65698D05(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_0E22FC9F40D196F69A0C89952CC533A6(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_4A7872EC4D335C7C988B0DBEF006D204(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_57652DBF44A3ABC7DE1A5F9551D4ACEC(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_90533D2C400A148887617289327AA374(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_B4CB5B9A47C2422B46924FB4D9420F2D(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_C2F500E44A7777109AA4A6A12FB60976(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnInterrupted_ED6C7734417C65157CFBDFBE65698D05(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_0E22FC9F40D196F69A0C89952CC533A6(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_4A7872EC4D335C7C988B0DBEF006D204(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_57652DBF44A3ABC7DE1A5F9551D4ACEC(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_90533D2C400A148887617289327AA374(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_B4CB5B9A47C2422B46924FB4D9420F2D(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_C2F500E44A7777109AA4A6A12FB60976(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyBegin_ED6C7734417C65157CFBDFBE65698D05(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_0E22FC9F40D196F69A0C89952CC533A6(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_4A7872EC4D335C7C988B0DBEF006D204(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_57652DBF44A3ABC7DE1A5F9551D4ACEC(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_90533D2C400A148887617289327AA374(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_B4CB5B9A47C2422B46924FB4D9420F2D(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_C2F500E44A7777109AA4A6A12FB60976(NotifyName) end

---@param NotifyName FName
function AJosamiBloodLord_Gun_BP_C:OnNotifyEnd_ED6C7734417C65157CFBDFBE65698D05(NotifyName) end

---@param Duration float
function AJosamiBloodLord_Gun_BP_C:Paralyze(Duration) end

function AJosamiBloodLord_Gun_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJosamiBloodLord_Gun_BP_C:ReceiveTick(DeltaSeconds) end

function AJosamiBloodLord_Gun_BP_C:SetGunJumpTargetPos() end

function AJosamiBloodLord_Gun_BP_C:SnapGunAimPointTODefault() end

---@param StartingRotationoffset FRotator
function AJosamiBloodLord_Gun_BP_C:SpawnMountedProjectile(StartingRotationoffset) end

function AJosamiBloodLord_Gun_BP_C:Stagger() end

function AJosamiBloodLord_Gun_BP_C:StartActiveDuoMove() end

function AJosamiBloodLord_Gun_BP_C:StartArenaClearHitloop() end

function AJosamiBloodLord_Gun_BP_C:StartGunshotsLogic() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AJosamiBloodLord_Gun_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Does boolean
function AJosamiBloodLord_Gun_BP_C:WantsToDoDuoMove(Does) end

function AJosamiBloodLord_Gun_BP_C:killforreal() end
