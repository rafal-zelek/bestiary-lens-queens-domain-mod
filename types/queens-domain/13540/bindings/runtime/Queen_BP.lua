---@meta

---@class AQueen_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractSphere USphereComponent
---@field IntroShield UStaticMeshComponent
---@field SwordHitbox1 USphereComponent
---@field SwordHitbox3 USphereComponent
---@field SwordHitbox2 USphereComponent
---@field SwordHitbox USphereComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field OrbCameraTickGroup UTickGroupComponent
---@field SwordGlow3 UGlowSpriteComp_C
---@field SwordGlow2 UGlowSpriteComp_C
---@field SwordGlow1 UGlowSpriteComp_C
---@field SwordGlow UGlowSpriteComp_C
---@field Sword UEnemyAttachmentMesh_C
---@field HalfStaff UEnemySkeletalMeshAttachment_C
---@field AOEHitbox USphereComponent
---@field StaffGlow UGlowSpriteComp_C
---@field EyeGlow_L UGlowSpriteComp_C
---@field EyeGlow_R UGlowSpriteComp_C
---@field StaffBottomHitbox USphereComponent
---@field FullStaff UEnemySkeletalMeshAttachment_C
---@field Timeline_8_NewTrack_0_09AAC1534200BF9604D536A94A1689CD float
---@field Timeline_8__Direction_09AAC1534200BF9604D536A94A1689CD ETimelineDirection::Type
---@field Timeline_8 UTimelineComponent
---@field Timeline_7_NewTrack_0_E31A326746364C9615CB688ECB5B184C float
---@field Timeline_7__Direction_E31A326746364C9615CB688ECB5B184C ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field QueenSpawner AQueen_Spawner_BP_C
---@field ArenaFloorCenter FVector
---@field TeleportEQ UEnvQueryInstanceBlueprintWrapper
---@field DoingPhaseAnim boolean
---@field IntroWasAbbrev boolean
---@field SpecialSwordTriggerHP float
---@field DoinAOrb boolean
local AQueen_BP_C = {}

---@param Damaged boolean
function AQueen_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AQueen_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AQueen_BP_C:BndEvt__Queen_BP_OrbCameraTickGroup_K2Node_ComponentBoundEvent_0_Tick__DelegateSignature() end

function AQueen_BP_C:CanPossiblyAttack() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AQueen_BP_C:CustomEvent_0(QueryInstance, QueryStatus) end

function AQueen_BP_C:DoOrbAnimation() end

function AQueen_BP_C:DoStateTransition() end

function AQueen_BP_C:Ending1Complete() end

function AQueen_BP_C:Ending2CutsceneEnded() end

---@param Mode EnemyBehaviourMode::Type
function AQueen_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AQueen_BP_C:ExecuteUbergraph_Queen_BP(EntryPoint) end

---@param Point FVector
---@param Height float
function AQueen_BP_C:GetFakeFloorHeightBeneathPoint(Point, Height) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AQueen_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AQueen_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AQueen_BP_C:Kill(NoRewards, SupressDeathSound) end

function AQueen_BP_C:KillOrbs() end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_25D1A9834E1F4D0221B185A7D38C12E9(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A00BB91EF(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A00FF357A(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A076F7314(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A0EF17500(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A21D1AAF2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A476719F1(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A54B05D83(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A5ACAE35D(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A8288851F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AB1FD24C2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9ABC69004F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_25D1A9834E1F4D0221B185A7D38C12E9(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A00BB91EF(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A00FF357A(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A076F7314(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A0EF17500(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A21D1AAF2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A476719F1(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A54B05D83(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A5ACAE35D(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A8288851F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AB1FD24C2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9ABC69004F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_25D1A9834E1F4D0221B185A7D38C12E9(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A00BB91EF(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A00FF357A(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A076F7314(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A0EF17500(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A21D1AAF2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A476719F1(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A54B05D83(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A5ACAE35D(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A8288851F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AB1FD24C2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9ABC69004F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_25D1A9834E1F4D0221B185A7D38C12E9(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A00BB91EF(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A00FF357A(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A076F7314(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A0EF17500(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A21D1AAF2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A476719F1(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A54B05D83(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A5ACAE35D(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A8288851F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AB1FD24C2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9ABC69004F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_25D1A9834E1F4D0221B185A7D38C12E9(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A00BB91EF(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A00FF357A(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A076F7314(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A0EF17500(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A21D1AAF2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A476719F1(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A54B05D83(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A5ACAE35D(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A8288851F(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AB1FD24C2(NotifyName) end

---@param NotifyName FName
function AQueen_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9ABC69004F(NotifyName) end

---@param NewPhase int32
function AQueen_BP_C:OnPhaseChanged(NewPhase) end

function AQueen_BP_C:OrbApplyStatusEffects() end

function AQueen_BP_C:OrbAttack() end

function AQueen_BP_C:OrbProjectileHitPlayer() end

function AQueen_BP_C:QueenRegularGreetingEnded() end

function AQueen_BP_C:ReceiveBeginPlay() end

function AQueen_BP_C:RegisterKill() end

function AQueen_BP_C:SetUpBossForOrbCutscene() end

function AQueen_BP_C:SetUpPlayerForOrbCutscene() end

function AQueen_BP_C:ShieldBreak() end

---@param Loc FVector
function AQueen_BP_C:ShieldResistAnim(Loc) end

function AQueen_BP_C:SipehaTransitionEnded() end

---@param StartingRotationoffset FRotator
function AQueen_BP_C:SpawnFastProjectile(StartingRotationoffset) end

function AQueen_BP_C:SpecialShieldBreak() end

function AQueen_BP_C:Stagger() end

---@param InputPin USphereComponent
---@param PositionOverride FVector
---@param UseOverride boolean
---@param Hit boolean
function AQueen_BP_C:TickIndividualHitbox(InputPin, PositionOverride, UseOverride, Hit) end

function AQueen_BP_C:Timeline_7__FinishedFunc() end

function AQueen_BP_C:Timeline_7__UpdateFunc() end

function AQueen_BP_C:Timeline_8__FinishedFunc() end

function AQueen_BP_C:Timeline_8__UpdateFunc() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AQueen_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AQueen_BP_C:UnlockFromOrbStuff() end

function AQueen_BP_C:specialshieldbreakdialogueEnded() end

---@param Selection int32
AQueen_BP_C['Attempt P1 Attack'] = function(self, Selection) end

---@param Selection int32
AQueen_BP_C['Attempt P2 Attack'] = function(self, Selection) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AQueen_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

AQueen_BP_C['Init HP'] = function(self) end
