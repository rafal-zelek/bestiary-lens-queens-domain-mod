---@meta

---@class ALargeRobot_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RamHitbox1 USphereComponent
---@field RamHitbox USphereComponent
---@field MagicHitbox USphereComponent
---@field SmallExhaustSmoke_R UNiagaraComponent
---@field SmallExhaustSmoke_L UNiagaraComponent
---@field Laser_R UStaticMeshComponent
---@field Laser_L UStaticMeshComponent
---@field CrosslasersTL_cross_75F1DA0A4D6F317CDFA5528D796D59AC float
---@field CrosslasersTL__Direction_75F1DA0A4D6F317CDFA5528D796D59AC ETimelineDirection::Type
---@field CrosslasersTL UTimelineComponent
---@field TrapMontage UAnimMontage
---@field DrillSound UAudioComponent
---@field CurrentLeftTarget FVector
---@field CurrentRightTarget FVector
---@field DoingSHootingAttack boolean
---@field TargetDistance float
---@field OuterTargetOffset float
---@field OuterTargetOffset_Inner float
---@field InnerOffset float
---@field TargetHeight float
---@field PlayerInCenterTime float
---@field Firing boolean
---@field FireRate float
---@field LastSeenPlayerLoc FVector
---@field LastSeenPlayerVel FVector
---@field RemainingShootingRounds int32
---@field ShootingMoveRepeatTimes int32
---@field NextSlamAllowedTime float
---@field LaserWidth float
---@field RemainingBulletsInBurst int32
---@field AddsList TArray<AEnemyBase_C>
---@field SpawnAddsCount int32
---@field CurrentGunfire UAudioComponent
local ALargeRobot_Base_BP_C = {}

---@param Damaged boolean
function ALargeRobot_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALargeRobot_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ALargeRobot_Base_BP_C:BeginBulletRounds() end

---@param LeadStr float
---@param Loc FVector
function ALargeRobot_Base_BP_C:CalculateAttackTargetLocation(LeadStr, Loc) end

function ALargeRobot_Base_BP_C:CancelFiringloop() end

function ALargeRobot_Base_BP_C:CrossLasers() end

function ALargeRobot_Base_BP_C:CrosslasersTL__FinishedFunc() end

function ALargeRobot_Base_BP_C:CrosslasersTL__UpdateFunc() end

function ALargeRobot_Base_BP_C:DetectedPlayerWithLaser() end

function ALargeRobot_Base_BP_C:DoHeavyAOE() end

function ALargeRobot_Base_BP_C:DoRamAttack() end

function ALargeRobot_Base_BP_C:DoShootingAttack() end

function ALargeRobot_Base_BP_C:DoSlamOrJump() end

---@param Mode EnemyBehaviourMode::Type
function ALargeRobot_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ALargeRobot_Base_BP_C:ExecuteUbergraph_LargeRobot_Base_BP(EntryPoint) end

---@param Right boolean
function ALargeRobot_Base_BP_C:FireBullet(Right) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALargeRobot_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function ALargeRobot_Base_BP_C:KillAllAdds() end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_0EDA4945463AF417CBE0579E09B8B114(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_1A30CDCF473742285607AAABF016110B(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_315BC4604418161EFFE3F4B273344B07(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_447EDA85482BDC3ABC0EDA854FF2B6F6(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_503646374B0CD242C2C9D7A83CBCBD7A(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_543187C54D578D4F1C46CC97F1563CA9(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_ADF916364DEB3B7D5FA8978E333FE1AC(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_BB2E889B4BEEE92B6116F38D3157BFA5(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_D783C2F64245736DFF67C381B13D2939(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A6A5DE98D(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_0EDA4945463AF417CBE0579E09B8B114(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_1A30CDCF473742285607AAABF016110B(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_315BC4604418161EFFE3F4B273344B07(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_447EDA85482BDC3ABC0EDA854FF2B6F6(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_503646374B0CD242C2C9D7A83CBCBD7A(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_543187C54D578D4F1C46CC97F1563CA9(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_ADF916364DEB3B7D5FA8978E333FE1AC(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_BB2E889B4BEEE92B6116F38D3157BFA5(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_D783C2F64245736DFF67C381B13D2939(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A6A5DE98D(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_0EDA4945463AF417CBE0579E09B8B114(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_1A30CDCF473742285607AAABF016110B(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_315BC4604418161EFFE3F4B273344B07(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_447EDA85482BDC3ABC0EDA854FF2B6F6(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_503646374B0CD242C2C9D7A83CBCBD7A(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_543187C54D578D4F1C46CC97F1563CA9(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_ADF916364DEB3B7D5FA8978E333FE1AC(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_BB2E889B4BEEE92B6116F38D3157BFA5(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_D783C2F64245736DFF67C381B13D2939(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A6A5DE98D(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_0EDA4945463AF417CBE0579E09B8B114(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_1A30CDCF473742285607AAABF016110B(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_315BC4604418161EFFE3F4B273344B07(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_447EDA85482BDC3ABC0EDA854FF2B6F6(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_503646374B0CD242C2C9D7A83CBCBD7A(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_543187C54D578D4F1C46CC97F1563CA9(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_ADF916364DEB3B7D5FA8978E333FE1AC(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_BB2E889B4BEEE92B6116F38D3157BFA5(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_D783C2F64245736DFF67C381B13D2939(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A6A5DE98D(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_0EDA4945463AF417CBE0579E09B8B114(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_1A30CDCF473742285607AAABF016110B(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_315BC4604418161EFFE3F4B273344B07(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_447EDA85482BDC3ABC0EDA854FF2B6F6(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_503646374B0CD242C2C9D7A83CBCBD7A(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_543187C54D578D4F1C46CC97F1563CA9(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_ADF916364DEB3B7D5FA8978E333FE1AC(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_BB2E889B4BEEE92B6116F38D3157BFA5(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_D783C2F64245736DFF67C381B13D2939(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A6A5DE98D(NotifyName) end

function ALargeRobot_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ALargeRobot_Base_BP_C:ReceiveTick(DeltaSeconds) end

---@param SpawnedAdd AEnemyBase_C
function ALargeRobot_Base_BP_C:RegisterSpawnedAdd(SpawnedAdd) end

function ALargeRobot_Base_BP_C:ShouldCancelFiringEarly() end

function ALargeRobot_Base_BP_C:SpawnAddsAttack() end

---@param Right boolean
---@param Range float
function ALargeRobot_Base_BP_C:SpawnBulletFX(Right, Range) end

function ALargeRobot_Base_BP_C:Stagger() end

function ALargeRobot_Base_BP_C:StartFireBurst() end

function ALargeRobot_Base_BP_C:UpdateLasers() end

function ALargeRobot_Base_BP_C:UserConstructionScript() end

function ALargeRobot_Base_BP_C:WrapUpShootingFlags() end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
ALargeRobot_Base_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

ALargeRobot_Base_BP_C['Update Targets'] = function(self) end
