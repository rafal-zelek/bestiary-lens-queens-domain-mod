---@meta

---@class AFS_PlayerChar_C : AFS_PlayerCharacter
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MagicRotResistStatusEffect UStatusEffectComponent_C
---@field PhotoModePostProcess UPostProcessComponent
---@field b33smentstatus UStatusEffectComponent_C
---@field CaputRingStatus UStatusEffectComponent_C
---@field Grimoire_Logic UGrimoire_Logic_C
---@field B33PunchStatusEffect UStatusEffectComponent_C
---@field WoundLogic UWoundLogic_C
---@field WaterDashSplash UNiagaraComponent
---@field ItemMergeAnim_Comp_RV UItemMergeAnim_Comp_RV_C
---@field FlyingSword_MergeComp UItemMergeAnim_Comp_C
---@field MementoMirror_EffectScript UMementoMirror_EffectScript_C
---@field StrangeMushroomLogic UStrangeMushroomLogic_C
---@field CameraManagerAttachedComp UCameraManagerAttachedComp_C
---@field TickGroup UTickGroupComponent
---@field FaceFollowComp UFaceFollowComp_C
---@field CameraAttachedComp USceneComponent
---@field ParryHitbox UBoxComponent
---@field DefaultHitbox UBoxComponent
---@field WingDashHitbox UBoxComponent
---@field UltraHitBoxCollision UBoxComponent
---@field NormalHitbox UBoxComponent
---@field WindHitbox UCapsuleComponent
---@field PlayerInteractionComponent UPlayerInteractionComponent_C
---@field Arms USkeletalMeshComponent
---@field BindingStatusEffect UStatusEffectComponent_C
---@field DiseaseStatusEffect UStatusEffectComponent_C
---@field WeakenStatusEffect UStatusEffectComponent_C
---@field HeavyStatusEffect UStatusEffectComponent_C
---@field PoisonStatusEffect UStatusEffectComponent_C
---@field RadiantFruitStatusEffect UStatusEffectComponent_C
---@field IronskinFruitStatusEffect UStatusEffectComponent_C
---@field IronskinPotionStatusEffect UStatusEffectComponent_C
---@field BerserkFruitStatusEffect UStatusEffectComponent_C
---@field BerserkPotionStatusEffect UStatusEffectComponent_C
---@field LowHealthPostProcess UPostProcessComponent
---@field DaggerDummy UDaggerDummy_C
---@field Player_HolyAmuletLight UPlayer_HolyAmuletLight_C
---@field RadiantFruitLight UPlayer_EquipmentLight_C
---@field LanternLight UPlayer_EquipmentLight_C
---@field NullDaggerChargeLogic_B UNullDaggerChargeLogic_B_C
---@field NullDaggerChargeLogic_C UNullDaggerChargeLogic_C_C
---@field NullDaggerChargeLogic_A UNullDaggerChargeLogic_A_C
---@field MagicPoisonStatusEffectVis UMagicPoisonStatusEffectVis_C
---@field MagicPoisonDebuffLogic UMagicPoisonDebuffLogic_C
---@field AcidVialAnimation UAcidVialAnimation_C
---@field WeaponEvoAnimation UWeaponEvoAnimation_C
---@field PlayerHealthRegenCalculations UPlayerHealthRegenCalculations_C
---@field Offhand_FlyingSword_WeaponScript UFlyingSword_WeaponScript_C
---@field WeaponSelection UWeaponSystem_C
---@field DialogueManager UDialogueManager_C
---@field MagicFireStatusEffectVis UMagicFireStatusEffectVis_C
---@field MagicFireEffectLogic UMagicFireEffectLogic_C
---@field TPSkySphere UStaticMeshComponent
---@field FXApplicationHandler UFXApplicationHandler_C
---@field EnergyChargeLogic UEnergyChargeLogic_C
---@field Null_WeaponScript UNull_WeaponScript_C
---@field WeaponAttachPoint_L USceneComponent
---@field PowerMeterLogic UPowerMeterLogic_C
---@field PassiveWaterFX UNiagaraComponent
---@field FlyingSwordChargeLogic UFlyingSwordChargeLogic_C
---@field CameraHelper USceneComponent
---@field StickyStatusEffectVis UStickyStatusEffectVis_C
---@field WeaponAttachPoint USceneComponent
---@field CameraOffset USceneComponent
---@field FirstPersonCamera UCameraComponent
---@field HitFlash_Flash_CC14A9B542B0CF53E0BCA6A1687FA618 float
---@field HitFlash__Direction_CC14A9B542B0CF53E0BCA6A1687FA618 ETimelineDirection::Type
---@field HitFlash UTimelineComponent
---@field Timeline_5_NewTrack_0_23AC381E42553C8BEE351EB77AF324F5 float
---@field Timeline_5__Direction_23AC381E42553C8BEE351EB77AF324F5 ETimelineDirection::Type
---@field Timeline_5 UTimelineComponent
---@field Timeline_4_NewTrack_0_C3B4A4FB441329F38CCAEC871A5B2B22 float
---@field Timeline_4__Direction_C3B4A4FB441329F38CCAEC871A5B2B22 ETimelineDirection::Type
---@field Timeline_4 UTimelineComponent
---@field Timeline_2__Direction_F24396D84FB0BACB5DD2108FE99C3FBA ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field LowHealthBlend_Fade_3EF5602444BDB8A505C438A086D7F94C float
---@field LowHealthBlend__Direction_3EF5602444BDB8A505C438A086D7F94C ETimelineDirection::Type
---@field LowHealthBlend UTimelineComponent
---@field TPSecretFadeOut_Fade_D38E5FE44A640A2F21378CB5C81545EF float
---@field TPSecretFadeOut__Direction_D38E5FE44A640A2F21378CB5C81545EF ETimelineDirection::Type
---@field TPSecretFadeOut UTimelineComponent
---@field TPSecretFadeIn_Fade_67C70F6441AC0CBBA5092AAD74FF75A3 float
---@field TPSecretFadeIn__Direction_67C70F6441AC0CBBA5092AAD74FF75A3 ETimelineDirection::Type
---@field TPSecretFadeIn UTimelineComponent
---@field QuickFadeTL_FadeWithCurve_F969F92140365B5056DC3D84625EEFC0 float
---@field QuickFadeTL_Fade_F969F92140365B5056DC3D84625EEFC0 float
---@field QuickFadeTL__Direction_F969F92140365B5056DC3D84625EEFC0 ETimelineDirection::Type
---@field QuickFadeTL UTimelineComponent
---@field introcrosshairfade_fade_F50611CC48518EC3865CF4B90BA53A8B float
---@field introcrosshairfade__Direction_F50611CC48518EC3865CF4B90BA53A8B ETimelineDirection::Type
---@field introcrosshairfade UTimelineComponent
---@field QuickTPFakeLightFade_TeleporterFade_F2D0A61C463B71D226BBB1BEE5FB1AF0 float
---@field QuickTPFakeLightFade__Direction_F2D0A61C463B71D226BBB1BEE5FB1AF0 ETimelineDirection::Type
---@field QuickTPFakeLightFade UTimelineComponent
---@field Timeline_3_NewTrack_0_97DDE729441D5529953D6B95249833E6 float
---@field Timeline_3__Direction_97DDE729441D5529953D6B95249833E6 ETimelineDirection::Type
---@field Timeline_3 UTimelineComponent
---@field Timeline_1__Direction_3CCDB09348AC0A2F9111AE8ABE24D816 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_NewTrack_0_A1AEBC7E405F42C5B48433B31D70A340 float
---@field Timeline_0__Direction_A1AEBC7E405F42C5B48433B31D70A340 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PlayerConfig UPlayerBalance_C
---@field BaseTurnRate float
---@field BaseLookUpRate float
---@field AnimBP UPlayer_FPArms_Arms_ABP_C
---@field AttackBlocked boolean
---@field FlyingSwordAttackMult float
---@field EnemiesHitThisSwipe TArray<AActor>
---@field IsPlunging boolean
---@field LastFrameVel FVector
---@field PlungingAttackMinSpeed float
---@field PlungingAttackMaxSpeed float
---@field PlungingAttackMinDamage float
---@field PlungingAttackMaxDamage float
---@field PlungeMaxRadius float
---@field PlungeMinRadius float
---@field AttackObjectChannel TArray<EObjectTypeQuery>
---@field Health float
---@field Level int32
---@field HUD UFS_PlayerHUD_C
---@field HurtBoxActive boolean
---@field ReadTextUI UReadTextUI_C
---@field PotionCount int32
---@field LastCheckpoint FTransform
---@field LastCheckpointRef UFS_LocationData
---@field OnDiedEvent FFS_PlayerChar_COnDiedEvent
---@field MaxPotionCount int32
---@field ['Current Interact Actor'] AActor
---@field InteractionDistance float
---@field MouseSensitivity float
---@field Dashing boolean
---@field CurrentlyActiveMeleeMultiplier float
---@field BaseHealth float
---@field LastAttackTime float
---@field DaggerDamageMult float
---@field MaxHPPerLevel float
---@field SelectedDaggerIndex int32
---@field LastForwardAxisValue float
---@field InterpolatedForwardAxisValue float
---@field LastLeftGroundTime float
---@field CoyoteTime float
---@field InternalDefaultMaxWalkSpeed float
---@field StickyEffectApplied boolean
---@field PoisonDamageTicked FFS_PlayerChar_CPoisonDamageTicked
---@field MagicPoisonEffectApplied boolean
---@field StickyTimer FTimerHandle
---@field CurrentHitboxRehitWallRepeatTime float
---@field ConsumableRotationOrder TArray<UFS_ItemData_C>
---@field FlyingSwordVerticalSnapRange float
---@field FlyingSwordVerticalSnapSpeed float
---@field FlyingSwordHorizontalLimit float
---@field FlyingSwordStartDir FVector
---@field UpdateStatusEffects FFS_PlayerChar_CUpdateStatusEffects
---@field SpecialAttackStartForward FTransform
---@field CurrentFSMoveIsGrounded boolean
---@field CurrentFSMoveisForward boolean
---@field LocalDelta float
---@field CurrentHitStopDuration float
---@field CurrentlyActiveHitMultiplier float
---@field UltraCharge float
---@field CurrentActiveHitbox UBoxComponent
---@field IsDead boolean
---@field LastJumpTime float
---@field ActiveTPFX UNiagaraComponent
---@field ActiveTPLoop UAudioComponent
---@field CameraRotationOffset FRotator
---@field MetalTipImpactSoundSurfaceMap TMap<UPhysicalMaterial, USoundCue>
---@field NonMetalTipImpactSoundSurfaceMap TMap<UPhysicalMaterial, USoundCue>
---@field JumpSoundSurfaceMap TMap<UPhysicalMaterial, USoundCue>
---@field LandingSoundSurfaceMap TMap<UPhysicalMaterial, USoundCue>
---@field FootstepSurfaceMap TMap<UPhysicalMaterial, USoundCue>
---@field WaterSloshDelayTime float
---@field ItemToWeaponMap TMap<UFS_Item, UWeaponScriptBase_C>
---@field SwordBonkParticleSurfaceMap TMap<UPhysicalMaterial, UNiagaraSystem>
---@field InWater boolean
---@field CurrentInHandWeapon UWeaponScriptBase_C
---@field DesiredInHandWeapon UWeaponScriptBase_C
---@field ActorsHitThisSwipe TArray<AActor>
---@field QuickDashSwordVisuals AWeaponVisuals_C
---@field LevelledUp FFS_PlayerChar_CLevelledUp
---@field UsedConsumable FFS_PlayerChar_CUsedConsumable
---@field DidSecretTeleport FFS_PlayerChar_CDidSecretTeleport
---@field Damaged FFS_PlayerChar_CDamaged
---@field WeaponLevelledUp FFS_PlayerChar_CWeaponLevelledUp
---@field CurrentEffectDurationMultiplier float
---@field InventoryUpdated FFS_PlayerChar_CInventoryUpdated
---@field LastSafeLocation FTransform
---@field CurrentTeleporterTarget ATeleporter_C
---@field TeleportStartPos FVector
---@field TeleportTimer FTimerHandle
---@field TeleporterPlayerIsLeaving ATeleporter_C
---@field BaseCamLocation FVector
---@field CurrentGameMenu UGameMenu_C
---@field LastWaterHit FHitResult
---@field FSPickupStartPos FTransform
---@field FSPickupEndPos FTransform
---@field KeyMenu UKeyUseMenu_C
---@field CurrentlyActiveKeyableObject TScriptInterface<IKeyableObject_C>
---@field HitFloor boolean
---@field FloorHit FHitResult
---@field LastlandingVel float
---@field LatestMovementInput FVector2D
---@field CurrentAltAttackIsForcedWingDash boolean
---@field NewXP float
---@field CurrentlyActiveMeleeBaseTags FGameplayTagContainer
---@field DashDistanceTravelled float
---@field DashLastRecordedPos FVector
---@field LastDashMoveDir FVector
---@field DaggerBlocked boolean
---@field NormalAttackCharging boolean
---@field UltraMoveActive boolean
---@field PowerRegenBlocked boolean
---@field Jumped boolean
---@field Teleporting boolean
---@field ReasonForCurrentFocusChangeIsHover boolean
---@field HitWaterAlready boolean
---@field HasPitInvincibility boolean
---@field DisableJump boolean
---@field SpecialAttackLookClamp boolean
---@field DoingSwordThrowAwayAnim boolean
---@field ShouldHideHUD boolean
---@field AttackPressed boolean
---@field WeaponsArePutAway boolean
---@field KnockedDown boolean
---@field DiedToDeathPit boolean
---@field WeaponsAreSwapping boolean
---@field DashStartTime float
---@field DashForceCurve UCurveFloat
---@field LastDashEndTime float
---@field LastDashEndPos FVector
---@field DashCoyoteHeightTarget float
---@field DashCoyoteHeightStart float
---@field DaggerComponents TArray<UDaggerChargeLogic_C>
---@field DaggerItemToComponent TMap<UFS_Item, UDaggerChargeLogic_C>
---@field ['Pre Pos'] FVector
---@field FlyingSwordItem UFS_ItemData_C
---@field PlayerLanded FFS_PlayerChar_CPlayerLanded
---@field PlayerJumped FFS_PlayerChar_CPlayerJumped
---@field FlyingSwordEvolvedItem UFS_ItemData_C
---@field ComboResetTime float
---@field ResourcesWereGenerated FFS_PlayerChar_CResourcesWereGenerated
---@field Daggervisuals AActor
---@field GemSockets TArray<FName>
---@field CurrentRadiusAdjustment float
---@field CurrentFadeWidthAdjustment float
---@field FLyingSwordBlockingAttacks boolean
---@field CurrentShopMenu UShopMenu_C
---@field PickupSpline AItemPutAwayCurve_C
---@field ['CurrentMelee FXConfig'] FFS_MeleeFXOverride
---@field UltraMoveLastLookDir FRotator
---@field UltraMoveStandardColors TMap<FName, FLinearColor>
---@field UltraMoveSecretColors TMap<FName, FLinearColor>
---@field DashSpeedMult float
---@field EquipmentChanged FFS_PlayerChar_CEquipmentChanged
---@field ['HoldRun Held'] boolean
---@field ToggleHoldRunWanted boolean
---@field RunningBlocked boolean
---@field Running boolean
---@field SeamlessControlRotationOffset FRotator
---@field TPLightColor FLinearColor
---@field TPLightColorWingCrystal FLinearColor
---@field OnKnockdown FFS_PlayerChar_COnKnockdown
---@field ['Internal Default Max Accel'] float
---@field CurrentHitboxIsWingDash boolean
---@field InitialFadeInRunning boolean
---@field ['CurrentAttackCharge%'] float
---@field TurnSpeedCapEnabled boolean
---@field TurnSpeedCap float
---@field CurrentFSMoveHasGravity boolean
---@field TempDisableWingSwordLookClamp boolean
---@field XPGained FFS_PlayerChar_CXPGained
---@field currentFSMoveIsRocketPunch boolean
---@field AlreadyCoyoted boolean
---@field CurrentFSMoveIsSpectral boolean
---@field CurrentFSMoveIsCursed boolean
---@field CursedGemFXColor FLinearColor
---@field DoingQuickInteraction boolean
---@field StickyTimeRemaining float
---@field CurrentMeleeAttackAggroNoiseLevel EFS_AttackAggroNoise
---@field CurrentSaveMenu USaveMenu_C
---@field TeleporterCrystalStartLoc FVector
---@field TeleporterCrystalStartRot FRotator
---@field TeleporterStartActor AActor
---@field DoingTeleportCrystal boolean
---@field ['CurrentAttack Resource Amount'] float
---@field CurrentAttackMotionValue float
---@field IntroCrosshairFadeOpacity float
---@field SafeLocationMusic UMusicTrackData_C
---@field ['SafeLocMusic is Alt'] boolean
---@field UltraMoveKingColors TMap<FName, FLinearColor>
---@field SystemSaveCached UFS_SystemSave_C
---@field LastConsumedPowerMeterAmount float
---@field CurrentHitboxGUID FGuid
---@field LastResourceGen float
---@field LastUltraGenFromResources float
---@field LastWeaponXPGenFromResources float
---@field LastWeaponAbilityPointsGeneratedFromResources float
---@field UpdateDebugResourceGen FFS_PlayerChar_CUpdateDebugResourceGen
---@field LastGroundedHSpeed float
---@field CurrentElevatorRumble UForceFeedbackComponent
---@field LastMoveUpdateWasGrounded boolean
---@field DoingSecretTP boolean
---@field LowHealthPulse FFS_PlayerChar_CLowHealthPulse
---@field HealthChanged FFS_PlayerChar_CHealthChanged
---@field LowHealthTimer FTimerHandle
---@field StatusEffectComps TArray<UStatusEffectComponent_C>
---@field CompsByName TMap<FName, UStatusEffectComponent_C>
---@field CachedHP float
---@field AttachmentActor AActor
---@field PlayerLeftGround FFS_PlayerChar_CPlayerLeftGround
---@field LastResourceGenBonus float
---@field LastBaseGeneratedResources float
---@field CurrentlyActiveStaggerDamage float
---@field MappingsToIgnoreOnMenuExit TSet<FName>
---@field LoadingScreenIsFinished boolean
---@field CurrentlyUsingTeleporterCrystalIsConsumable boolean
---@field TeleportedRecently boolean
---@field TempDisableUseItems boolean
---@field TeleportLocationTarget UFS_LocationData
---@field TempTeleporter ATeleporter_C
---@field Resting boolean
---@field ActiveSaveTPUI USaveTeleportUI_C
---@field QuickTPSFX UAudioComponent
---@field SteamOverlayStatus boolean
---@field ForceNoOverlayPause boolean
---@field AltAttackPressed boolean
---@field JumpTempDisabled boolean
---@field JosamiInAirDashConsumed boolean
---@field ActivelyResettingFromDeathPit boolean
---@field SafeLocationIsForcedMidair boolean
---@field CurrentAttackPowerMeterFill float
---@field IsInGameplayModal boolean
---@field InteractHeld boolean
---@field IsSolidlyGrounded boolean
---@field PlayerBecameGrounded FFS_PlayerChar_CPlayerBecameGrounded
---@field PhotoModePawn APhotomode_Pawn_C
---@field PhotomodeHUD UPhotoMode_HUD_C
---@field CutsceneSequencePlayer ULevelSequencePlayer
---@field InIntroCutscene boolean
---@field CurrentWaterIsThick boolean
---@field DoingAGroundCheck boolean
---@field QuickTeleporting boolean
---@field UltRegenRemaining float
---@field ['LastUltRegen%'] float
---@field UltRegenUpFront float
---@field TimeBecameGrounded float
---@field CurrentWaterPhysMat UPhysicalMaterial
---@field OnReadMessageClosed FFS_PlayerChar_COnReadMessageClosed
---@field CurrentCutsceneManager ACutsceneManagerBase_C
---@field TeleportingDisabled boolean
---@field CurDashIsOffhand boolean
---@field Grabbed boolean
---@field LastSprintButtonState boolean
local AFS_PlayerChar_C = {}

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function AFS_PlayerChar_C:ActivateBossHPBar(Enemy, Group) end

---@param PrimaryStyleAttack boolean
---@param WingDashHitbox boolean
function AFS_PlayerChar_C:ActivateHitbox(PrimaryStyleAttack, WingDashHitbox) end

---@param Amount float
function AFS_PlayerChar_C:AddAmountTOHealth(Amount) end

---@param Item UFS_ItemData_C
function AFS_PlayerChar_C:AddItemToQuickSlots(Item) end

---@param Axes FVector2D
function AFS_PlayerChar_C:AddMovementInputAxes(Axes) end

---@param Axes FVector2D
function AFS_PlayerChar_C:AddRightAnalogueInput(Axes) end

---@param XP int32
---@param FromSteal boolean
function AFS_PlayerChar_C:AddXP(XP, FromSteal) end

---@param Restoring boolean
---@param RestoredTime float
function AFS_PlayerChar_C:ApplyBinding(Restoring, RestoredTime) end

function AFS_PlayerChar_C:ApplyDiseaseEffect() end

---@param Level int32
function AFS_PlayerChar_C:ApplyHealingPotion(Level) end

function AFS_PlayerChar_C:ApplyHeavyEffect() end

---@param Level int32
function AFS_PlayerChar_C:ApplyHerb(Level) end

---@param TotalDamage float
function AFS_PlayerChar_C:ApplyMagicFire(TotalDamage) end

---@param Restoring boolean
---@param Active boolean
---@param Amount float
function AFS_PlayerChar_C:ApplyMagicPoison(Restoring, Active, Amount) end

function AFS_PlayerChar_C:ApplyPanacea() end

---@param Status EnemyStatusType::Type
---@param Crushing boolean
function AFS_PlayerChar_C:ApplyPitDamage(Status, Crushing) end

function AFS_PlayerChar_C:ApplyPoison() end

function AFS_PlayerChar_C:ApplyRejuvenatingPotion() end

---@param Damage FFB_DamageAttributeSet
---@param Applier AActor
function AFS_PlayerChar_C:ApplyStatusEffectsFromDamageTick(Damage, Applier) end

---@param Restoring boolean
---@param RestoredTime float
function AFS_PlayerChar_C:ApplyStickyEffect(Restoring, RestoredTime) end

---@param TargetControlRotation FRotator
function AFS_PlayerChar_C:ApplyTeleportSkyRotation(TargetControlRotation) end

function AFS_PlayerChar_C:ApplyWeakenEffect() end

function AFS_PlayerChar_C:ApplyWeaponXPOrb() end

---@param Amount float
function AFS_PlayerChar_C:ApplyWounds(Amount) end

---@param AllAreDisabled boolean
function AFS_PlayerChar_C:AreAllConsumablesDisabled(AllAreDisabled) end

function AFS_PlayerChar_C:AreWeaponsDisabled() end

---@param Item UFS_ItemData_C
function AFS_PlayerChar_C:AutoEquipItem(Item) end

function AFS_PlayerChar_C:B33smentDeath() end

---@param Manager ACutsceneManagerBase_C
function AFS_PlayerChar_C:BeginCutsceneWithManager(Manager) end

---@param Teleporter UFS_LocationData
function AFS_PlayerChar_C:BeginTeleport(Teleporter) end

function AFS_PlayerChar_C:BeginWindDash() end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_CharacterMovement_K2Node_ComponentBoundEvent_0_CharacterStuckEvent__DelegateSignature() end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_EnergyChargeLogic_K2Node_ComponentBoundEvent_4_FailedConsumption__DelegateSignature() end

---@param Cells int32
function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_GunPowerLogic_K2Node_ComponentBoundEvent_1_FullCellsConsumed__DelegateSignature(Cells) end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_MagicFireEffectLogic_K2Node_ComponentBoundEvent_4_MagicFireStarted__DelegateSignature() end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_MagicFireEffectLogic_K2Node_ComponentBoundEvent_5_MagicFireStopped__DelegateSignature() end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_MagicFireEffectLogic_K2Node_ComponentBoundEvent_6_MagicFireDamageTick__DelegateSignature() end

---@param Value float
---@param Max float
---@param Active boolean
function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_MagicPoisonDebuffLogic_K2Node_ComponentBoundEvent_3_Updated__DelegateSignature(Value, Max, Active) end

---@param Applied boolean
function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_RadiantFruitStatusEffect_K2Node_ComponentBoundEvent_5_Updated__DelegateSignature(Applied) end

---@param NewWeapon UWeaponScriptBase_C
function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_WeaponSelection_K2Node_ComponentBoundEvent_2_SwappedWeapon__DelegateSignature(NewWeapon) end

function AFS_PlayerChar_C:BndEvt__FS_PlayerChar_WeaponSelection_K2Node_ComponentBoundEvent_3_PostWeaponSwap__DelegateSignature() end

function AFS_PlayerChar_C:CalcStartupMagicPoisonDamageTotal() end

---@param Mult float
---@param Alpha float
function AFS_PlayerChar_C:CalculateChargeMultiplier_Impure(Mult, Alpha) end

function AFS_PlayerChar_C:CalculateEquipmentDefenseMult() end

---@param Level int32
---@param CurrentLevelXPRequirement int32
---@param CurrentLevelXPProgress int32
function AFS_PlayerChar_C:CalculateLevel(Level, CurrentLevelXPRequirement, CurrentLevelXPProgress) end

function AFS_PlayerChar_C:CalculatePoisonTickDamage() end

---@param Value float
function AFS_PlayerChar_C:CalculateTurnRateCap(Value) end

---@param DeltaTime float
function AFS_PlayerChar_C:CameraEvent(DeltaTime) end

---@param Return_Value boolean
function AFS_PlayerChar_C:CanInteract(Return_Value) end

function AFS_PlayerChar_C:CanInteractFlags() end

function AFS_PlayerChar_C:CanUsePanacea() end

function AFS_PlayerChar_C:CanUseTeleportItem() end

---@param CustomDash boolean
function AFS_PlayerChar_C:CancelActiveCustomDash(CustomDash) end

function AFS_PlayerChar_C:CancelAdvancedAttackActivation() end

function AFS_PlayerChar_C:CancelCrystalTP() end

function AFS_PlayerChar_C:CancelCurrentAttacks() end

---@param HitEnemty boolean
function AFS_PlayerChar_C:CancelDash(HitEnemty) end

function AFS_PlayerChar_C:CancelGrounded() end

function AFS_PlayerChar_C:CancelInitialFadeIn() end

function AFS_PlayerChar_C:CancelLockInPlaceForLoad() end

function AFS_PlayerChar_C:CancelSwordBonk() end

function AFS_PlayerChar_C:CancelTP() end

---@param Old_Equip UFS_ItemData_C
---@param NewlyEquipped UFS_ItemData_C
---@param Swap boolean
---@param OldSlotID int32
---@param NewSlotID int32
function AFS_PlayerChar_C:ChangedDaggerEquip(Old_Equip, NewlyEquipped, Swap, OldSlotID, NewSlotID) end

---@param Hit FHitResult
---@param Can boolean
function AFS_PlayerChar_C:CheckCanUseHitForMelee(Hit, Can) end

---@param InputPin UFS_ItemData_C
function AFS_PlayerChar_C:CheckForNeededPickupAnimsOnItemAcquisition(InputPin) end

function AFS_PlayerChar_C:CheckForOverlayPause() end

function AFS_PlayerChar_C:CheckPostDashGrounded() end

function AFS_PlayerChar_C:CheckPreChargeAttack() end

---@param Grounded boolean
function AFS_PlayerChar_C:CheckPreDashGrounded(Grounded) end

function AFS_PlayerChar_C:CheckUltSound() end

function AFS_PlayerChar_C:CheckWeaponEquipTicks() end

---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function AFS_PlayerChar_C:CheckedLaunch(LaunchVelocity, bXYOverride, bZOverride) end

function AFS_PlayerChar_C:ClampControlRotationVert() end

function AFS_PlayerChar_C:CleanUpTeleportProcess() end

function AFS_PlayerChar_C:ClearAllWeaponCombos() end

function AFS_PlayerChar_C:ClosedSaveMenu() end

function AFS_PlayerChar_C:ClosedShopmenu() end

---@param Loaded TArray<UObject>
function AFS_PlayerChar_C:Completed_19C391584C20E145010C188D6516D6F0(Loaded) end

---@param Loaded TArray<UObject>
function AFS_PlayerChar_C:Completed_2EAA3364499E8077EB6C6FAAFF8B95A8(Loaded) end

---@param Range EFS_WeaponRange
---@param Width EFS_WeaponWidth
---@param BonusRange float
---@param BonusWidth float
function AFS_PlayerChar_C:ConfigureNormalMeleeHitbox(Range, Width, BonusRange, BonusWidth) end

---@param VFX UNiagaraComponent
function AFS_PlayerChar_C:ConfigureUltraVFX(VFX) end

function AFS_PlayerChar_C:ConfirmCrystalTp() end

---@param Dist float
function AFS_PlayerChar_C:CorrectDashDistance(Dist) end

function AFS_PlayerChar_C:CountUsedConsumable() end

function AFS_PlayerChar_C:CurDashIsJosamiSword() end

function AFS_PlayerChar_C:CureAllNegativeEffects() end

function AFS_PlayerChar_C:CureBinding() end

function AFS_PlayerChar_C:CureBindingNoFX() end

function AFS_PlayerChar_C:CureDisease() end

function AFS_PlayerChar_C:CureDisease_NoFX() end

function AFS_PlayerChar_C:CureHeavy() end

function AFS_PlayerChar_C:CureHeavyNoFX() end

function AFS_PlayerChar_C:CurePoison() end

function AFS_PlayerChar_C:CurePoisonNoFX() end

function AFS_PlayerChar_C:CureSticky() end

function AFS_PlayerChar_C:CureSticky_NoFX() end

function AFS_PlayerChar_C:CureWeaken() end

function AFS_PlayerChar_C:CureWeakenNoFX() end

function AFS_PlayerChar_C:CursedChargeConsumed() end

function AFS_PlayerChar_C:CustomEvent() end

function AFS_PlayerChar_C:DaggerThrowAction() end

function AFS_PlayerChar_C:DamagedHitFX() end

---@param Amount float
function AFS_PlayerChar_C:Damaged__DelegateSignature(Amount) end

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function AFS_PlayerChar_C:DeactivateBossHPBar(Enemy, Group) end

function AFS_PlayerChar_C:DeactivateHitbox() end

function AFS_PlayerChar_C:DeathAnim() end

---@param X float
function AFS_PlayerChar_C:DebugRawRightXStickInput(X) end

---@param Y float
function AFS_PlayerChar_C:DebugRawRightYStickInput(Y) end

function AFS_PlayerChar_C:DialogueEnded() end

---@param Did boolean
function AFS_PlayerChar_C:DidRecentlyTeleport(Did) end

function AFS_PlayerChar_C:DidSecretTeleport__DelegateSignature() end

---@param Old UFS_ItemData_C
---@param New UFS_ItemData_C
---@param Swap boolean
---@param OldSlot int32
---@param NewSlot int32
function AFS_PlayerChar_C:DoDaggerEquipChargeTimeSwap(Old, New, Swap, OldSlot, NewSlot) end

function AFS_PlayerChar_C:DoFlyingSwordGetAnim() end

---@param TraceChannel ETraceTypeQuery
---@param Target UBoxComponent
---@param OutHits TArray<FHitResult>
---@param FirstHitWasEnv boolean
function AFS_PlayerChar_C:DoHitboxTrace(TraceChannel, Target, OutHits, FirstHitWasEnv) end

---@param DoIntro boolean
function AFS_PlayerChar_C:DoIntro(DoIntro) end

function AFS_PlayerChar_C:DoJumpSound() end

function AFS_PlayerChar_C:DoLoadFadeIn() end

function AFS_PlayerChar_C:DoMovingPlatformCollisionHack() end

function AFS_PlayerChar_C:DoSafeZoneResetTeleport() end

function AFS_PlayerChar_C:DoSecretTeleport() end

---@param Duration float
---@param DaggerBlockTime float
---@param PowerMeterBlockTime float
---@param FlyingSwordBlockTime boolean
---@param DisableMeleeResponseAdditive boolean
function AFS_PlayerChar_C:DoSimpleAttackBlockDuration(Duration, DaggerBlockTime, PowerMeterBlockTime, FlyingSwordBlockTime, DisableMeleeResponseAdditive) end

---@param ForceHorizontal boolean
function AFS_PlayerChar_C:DoSpecialAttackLookClamp(ForceHorizontal) end

---@param Consumable boolean
function AFS_PlayerChar_C:DoTeleporterWingStone(Consumable) end

---@param Progress float
function AFS_PlayerChar_C:DoUltRegen(Progress) end

function AFS_PlayerChar_C:DoUltraHitbox() end

function AFS_PlayerChar_C:DoWakeUpOnSpot() end

---@param Weapon UWeaponScriptBase_C
function AFS_PlayerChar_C:DoWeaponEvolution(Weapon) end

function AFS_PlayerChar_C:EditorSkipInitLoadSetup() end

function AFS_PlayerChar_C:EndGrabAttack() end

---@param Manager ACutsceneManagerBase_C
function AFS_PlayerChar_C:EndManagerCutscene(Manager) end

function AFS_PlayerChar_C:EndQuickTPLightFade() end

function AFS_PlayerChar_C:EndedLowHealth() end

function AFS_PlayerChar_C:EndingWakeOnBeach() end

---@param EnemyData UQD_EnemyData_base
function AFS_PlayerChar_C:EnemyRegistered(EnemyData) end

---@param Damage float
---@param Enemy ACharacter
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param AdditionalData TSet<UPrimaryDataAsset>
---@param SourceGUID FGuid
function AFS_PlayerChar_C:EnemyWasDamaged(Damage, Enemy, Tags, Data_Tags, AdditionalData, SourceGUID) end

function AFS_PlayerChar_C:EnsureValidSafeZone() end

function AFS_PlayerChar_C:EnterPhotoMode() end

---@param FocusTarget UWidget
function AFS_PlayerChar_C:EnterUIMode(FocusTarget) end

function AFS_PlayerChar_C:EnteredLowHealth() end

function AFS_PlayerChar_C:EquipFirstEquippedItem() end

---@param Item UFS_ItemData_C
---@param SlotIndex int32
function AFS_PlayerChar_C:EquipItem(Item, SlotIndex) end

---@param Item UFS_ItemData_C
function AFS_PlayerChar_C:EquipItemWeapon(Item) end

---@param Changed_Item UFS_ItemData_C
function AFS_PlayerChar_C:EquipmentChanged__DelegateSignature(Changed_Item) end

function AFS_PlayerChar_C:EquippedGun() end

---@param EntryPoint int32
function AFS_PlayerChar_C:ExecuteUbergraph_FS_PlayerChar(EntryPoint) end

function AFS_PlayerChar_C:ExitSaveTPUI() end

---@param CutsceneSkip boolean
function AFS_PlayerChar_C:ExitUIMode(CutsceneSkip) end

function AFS_PlayerChar_C:ExitedTeleportWingStoneUI() end

---@param GreenTPMode boolean
---@param Duck boolean
---@param WorldSpaceStarProjection boolean
function AFS_PlayerChar_C:FadeInQuickTPOverlay(GreenTPMode, Duck, WorldSpaceStarProjection) end

function AFS_PlayerChar_C:FadeInSecretTPOverlay() end

---@param LeaveSwordAway boolean
function AFS_PlayerChar_C:FadeOutQuickTPOverlay(LeaveSwordAway) end

function AFS_PlayerChar_C:FadeOutSecretTPOverlay() end

function AFS_PlayerChar_C:FadeinCrosshair() end

---@param PhysMat UPhysicalMaterial
---@param Pos FVector
function AFS_PlayerChar_C:FakeEnvBonk(PhysMat, Pos) end

---@param Pos FVector
---@param Normal FVector
---@param PhysMat UPhysicalMaterial
function AFS_PlayerChar_C:FakeSwordBonk(Pos, Normal, PhysMat) end

---@param WaterPit boolean
---@param StatusType EnemyStatusType::Type
---@param Crushing boolean
function AFS_PlayerChar_C:FellInDeathPit(WaterPit, StatusType, Crushing) end

---@param Guid FGuid
---@param Checkpoint ACheckpoint_C
function AFS_PlayerChar_C:FindCheckpointWithGUID(Guid, Checkpoint) end

---@param Location UFS_LocationData
---@param Checkpoint ACheckpoint_C
function AFS_PlayerChar_C:FindCheckpointWithLocationData(Location, Checkpoint) end

---@param Checkpoint ACheckpoint_C
function AFS_PlayerChar_C:FindSavedCheckpoint(Checkpoint) end

---@param Data UObject
---@param Teleporter ATeleporter_C
function AFS_PlayerChar_C:FindTeleporterActorFromData(Data, Teleporter) end

function AFS_PlayerChar_C:FinishTeleport() end

---@param Class TSubclassOf<ADagger_Projectile_Base_C>
---@param Success boolean
function AFS_PlayerChar_C:FireDagger(Class, Success) end

---@param PowerMeterFill float
---@param ChargeAmount float
---@param MotionValue float
---@param TotalHitMultiplier float
---@param DurationMultiplier float
function AFS_PlayerChar_C:GetActiveAttackInfo(PowerMeterFill, ChargeAmount, MotionValue, TotalHitMultiplier, DurationMultiplier) end

---@param AnimBP UPlayer_FPArms_Arms_ABP_C
function AFS_PlayerChar_C:GetAnimBP(AnimBP) end

---@param AnimBP UAnimInstance
function AFS_PlayerChar_C:GetAnimBP_Fast(AnimBP) end

function AFS_PlayerChar_C:GetBestFLyingSword() end

---@param Charge float
---@param Ready boolean
function AFS_PlayerChar_C:GetCurrentUltraCharge(Charge, Ready) end

---@param DaggerType UFS_ItemData_C
function AFS_PlayerChar_C:GetCurrentlySelectedDaggerType(DaggerType) end

function AFS_PlayerChar_C:GetDaggerChargeComp() end

---@param Item UFS_ItemData_C
function AFS_PlayerChar_C:GetDaggerChargeCompFromItem(Item) end

---@param Damage FFB_DamageAttributeSet
function AFS_PlayerChar_C:GetDamageForCurrentAttack(Damage) end

function AFS_PlayerChar_C:GetDashDist() end

---@param Direction FVector
function AFS_PlayerChar_C:GetDashFX(Direction) end

---@param Mul float
function AFS_PlayerChar_C:GetDashTurnRateMult(Mul) end

function AFS_PlayerChar_C:GetDiseaseResistDurationReduction() end

---@param WeaponSlot int32
---@param HasAnyWeaponsEquipped boolean
---@param WeaponItem UFS_Item
---@param ThrowWepSlot int32
---@param HasAnyThrowWepsEquipped boolean
---@param ThrowWepItem UFS_Item
function AFS_PlayerChar_C:GetEquippedWeaponItems(WeaponSlot, HasAnyWeaponsEquipped, WeaponItem, ThrowWepSlot, HasAnyThrowWepsEquipped, ThrowWepItem) end

function AFS_PlayerChar_C:GetFSMoveDirection() end

---@param Comp UCameraComponent
function AFS_PlayerChar_C:GetFirstPersonCamera(Comp) end

---@param PhysMat UPhysicalMaterial
function AFS_PlayerChar_C:GetFloorPhysMat(PhysMat) end

---@param Count int32
function AFS_PlayerChar_C:GetFlyingSwordChargeCount(Count) end

function AFS_PlayerChar_C:GetHealingEffectMult() end

function AFS_PlayerChar_C:GetHeavyResistDurationReduction() end

---@param Weapon UWeaponScriptBase_C
function AFS_PlayerChar_C:GetInHandWeapon(Weapon) end

---@param bPosOverridden boolean
function AFS_PlayerChar_C:GetLOSCheckPos(bPosOverridden) end

function AFS_PlayerChar_C:GetLevelForStats() end

---@param Recache boolean
---@param HP float
---@param HP_NoWounds float
function AFS_PlayerChar_C:GetMaxHP(Recache, HP, HP_NoWounds) end

---@param AddedDurationReduction float
function AFS_PlayerChar_C:GetNegativeEffectDurationMultiplier(AddedDurationReduction) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AFS_PlayerChar_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param PPC UPostProcessComponent
---@param Mid UMaterialInstanceDynamic
---@param HUD UPhotoMode_HUD_C
function AFS_PlayerChar_C:GetPhotoModeData(PPC, Mid, HUD) end

---@param Spline AItemPutAwayCurve_C
function AFS_PlayerChar_C:GetPickupSpline(Spline) end

---@param Crushing boolean
function AFS_PlayerChar_C:GetPitDamage(Crushing) end

---@param DoingIt boolean
function AFS_PlayerChar_C:GetPlayerDoingQuickInteraction(DoingIt) end

---@param SecondaryAttack boolean
---@param WeaponStats UFS_WeaponStats
function AFS_PlayerChar_C:GetPowerMeterSecondsToSpendOnUpcomingAttack(SecondaryAttack, WeaponStats) end

function AFS_PlayerChar_C:GetStickyResistDurationReduction() end

function AFS_PlayerChar_C:GetStrength() end

---@param Mouse boolean
function AFS_PlayerChar_C:GetVerticalInputMultiplier(Mouse) end

function AFS_PlayerChar_C:GetWeakenResistDurationReduction() end

---@param Key UFS_Item
---@param Value UWeaponScriptBase_C
function AFS_PlayerChar_C:GetWeaponScriptFromWeaponItem(Key, Value) end

---@param Mult float
function AFS_PlayerChar_C:GetWeaponXPMultiplier(Mult) end

---@param DamageMul float
function AFS_PlayerChar_C:GetWingSlashAnim(DamageMul) end

---@param Mult float
function AFS_PlayerChar_C:GetXPMultiplier(Mult) end

---@param Level int32
---@param XP int32
function AFS_PlayerChar_C:GetXPUpToLevel(Level, XP) end

function AFS_PlayerChar_C:GotAcidVialAnim() end

function AFS_PlayerChar_C:GrantFinalSword() end

---@param XP float
---@param Weapon UFS_ItemData_C
function AFS_PlayerChar_C:GrantXPDirectlyToWeapon(XP, Weapon) end

function AFS_PlayerChar_C:HandleAdvancedAttackActivation() end

---@param ChangedWep UFS_ItemData_C
function AFS_PlayerChar_C:HandleAutoEquipEdgeCase(ChangedWep) end

---@param Hit_Anything boolean
---@param Hit FHitResult
---@param NoBonk boolean
function AFS_PlayerChar_C:HandleHitboxTraceResult(Hit_Anything, Hit, NoBonk) end

---@param Pitch float
function AFS_PlayerChar_C:HandlePitchInput(Pitch) end

---@param InputPin float
function AFS_PlayerChar_C:HandleYawInput(InputPin) end

---@param Amount float
function AFS_PlayerChar_C:HealForAmount(Amount) end

---@param Percent float
function AFS_PlayerChar_C:HealForPercent(Percent) end

function AFS_PlayerChar_C:HealToFull() end

---@param Old float
---@param New float
function AFS_PlayerChar_C:HealthChanged__DelegateSignature(Old, New) end

function AFS_PlayerChar_C:HideHUD() end

function AFS_PlayerChar_C:HideHUDNextFrame() end

function AFS_PlayerChar_C:HideQuickDashSwrod() end

function AFS_PlayerChar_C:HitFlash__FinishedFunc() end

function AFS_PlayerChar_C:HitFlash__UpdateFunc() end

function AFS_PlayerChar_C:InitPhotoMode() end

function AFS_PlayerChar_C:InitPickupSpline() end

function AFS_PlayerChar_C:InitalizeComponents() end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Attack_K2Node_InputActionEvent_4(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Attack_K2Node_InputActionEvent_5(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipThrowWeapon1_K2Node_InputActionEvent_15(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipThrowWeapon2_K2Node_InputActionEvent_16(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipThrowWeapon3_K2Node_InputActionEvent_17(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipWeapon1_K2Node_InputActionEvent_18(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipWeapon2_K2Node_InputActionEvent_19(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_EquipWeapon3_K2Node_InputActionEvent_20(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Interact_K2Node_InputActionEvent_25(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Interact_K2Node_InputActionEvent_26(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Jump_K2Node_InputActionEvent_0(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Jump_K2Node_InputActionEvent_1(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_LastDagger_K2Node_InputActionEvent_7(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_LastItem_K2Node_InputActionEvent_23(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_LastWeapon_K2Node_InputActionEvent_11(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_NextDagger_K2Node_InputActionEvent_6(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_NextItem_K2Node_InputActionEvent_24(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_NextWeapon_K2Node_InputActionEvent_10(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_NormalDaggerThrow_K2Node_InputActionEvent_8(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Pause_K2Node_InputActionEvent_3(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_PhotoMode_K2Node_InputActionEvent_22(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_SecondaryAttack_K2Node_InputActionEvent_12(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_SecondaryAttack_K2Node_InputActionEvent_13(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_Status_K2Node_InputActionEvent_2(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_UltraAttack_K2Node_InputActionEvent_9(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_UseItem_K2Node_InputActionEvent_21(Key) end

---@param Key FKey
function AFS_PlayerChar_C:InpActEvt_WindDash_K2Node_InputActionEvent_14(Key) end

---@param AxisValue float
function AFS_PlayerChar_C:InpAxisEvt_LookUpMouse_K2Node_InputAxisEvent_2(AxisValue) end

---@param AxisValue float
function AFS_PlayerChar_C:InpAxisEvt_TurnMouse_K2Node_InputAxisEvent_3(AxisValue) end

function AFS_PlayerChar_C:Intro_PlacePlayerOnBeach() end

function AFS_PlayerChar_C:Intro_StartSequence() end

function AFS_PlayerChar_C:Intro_WakeOnBeach() end

---@param ItemThatChanged UFS_ItemData_C
---@param Added boolean
---@param NewItem boolean
function AFS_PlayerChar_C:InventoryChanged(ItemThatChanged, Added, NewItem) end

---@param ItemData UFS_ItemData_C
function AFS_PlayerChar_C:InventoryUpdated__DelegateSignature(ItemData) end

function AFS_PlayerChar_C:IsFinalSwordEquipped() end

---@param IsIn boolean
function AFS_PlayerChar_C:IsInModalMenu(IsIn) end

---@param In boolean
function AFS_PlayerChar_C:IsInReadTextMenu(In) end

---@param Berserk boolean
---@param WeakEffect boolean
function AFS_PlayerChar_C:IsPlayerBerserking(Berserk, WeakEffect) end

---@param Bounded boolean
function AFS_PlayerChar_C:IsPlayerBindinged(Bounded) end

---@param Dashing boolean
function AFS_PlayerChar_C:IsPlayerDashing(Dashing) end

---@param Diseased boolean
function AFS_PlayerChar_C:IsPlayerDiseased(Diseased) end

---@param Heavy boolean
function AFS_PlayerChar_C:IsPlayerHeavy(Heavy) end

---@param Iron boolean
---@param WeakEffect boolean
function AFS_PlayerChar_C:IsPlayerIron(Iron, WeakEffect) end

---@param Poisoned boolean
function AFS_PlayerChar_C:IsPlayerPoisoned(Poisoned) end

---@param Resting boolean
function AFS_PlayerChar_C:IsPlayerResting(Resting) end

---@param RotResist boolean
function AFS_PlayerChar_C:IsPlayerRotResisting(RotResist) end

---@param Teleporting boolean
function AFS_PlayerChar_C:IsPlayerTeleporting(Teleporting) end

---@param Weak boolean
function AFS_PlayerChar_C:IsPlayerWeakened(Weak) end

---@param Invulnerable boolean
function AFS_PlayerChar_C:IsSupposedToBeInvulnerable(Invulnerable) end

function AFS_PlayerChar_C:IsUseItemDisabled() end

---@param Changed_Item UFS_ItemData_C
---@param Equipped boolean
function AFS_PlayerChar_C:ItemEquipChanged(Changed_Item, Equipped) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function AFS_PlayerChar_C:ItemSortOrderComparator(ObjectA, ObjectB, Result) end

---@param RelativeWaterHeight float
function AFS_PlayerChar_C:IterateWaterSlosh(RelativeWaterHeight) end

---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode uint8
---@param NewCustomMode uint8
function AFS_PlayerChar_C:K2_OnMovementModeChanged(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end

function AFS_PlayerChar_C:KeymenuClosed() end

---@param B33smentDeath boolean
function AFS_PlayerChar_C:Kill(B33smentDeath) end

function AFS_PlayerChar_C:LevelledUp__DelegateSignature() end

---@param AssetClass TSoftClassPtr<UObject>
function AFS_PlayerChar_C:LoadAndAddDagger(AssetClass) end

---@param DaggerItem UFS_Item
function AFS_PlayerChar_C:LoadDaggerBLocking(DaggerItem) end

function AFS_PlayerChar_C:LoadGameAndPrepareForGameplay() end

function AFS_PlayerChar_C:LoadIntoPosition() end

---@param AssetClass TSoftClassPtr<UObject>
function AFS_PlayerChar_C:LoadWeaponClassAsync(AssetClass) end

function AFS_PlayerChar_C:LockInPlaceForLoad() end

function AFS_PlayerChar_C:LockInputForLoadingOrCutscene() end

function AFS_PlayerChar_C:LowHealthBlend__FinishedFunc() end

function AFS_PlayerChar_C:LowHealthBlend__UpdateFunc() end

function AFS_PlayerChar_C:LowHealthHeartbeat() end

function AFS_PlayerChar_C:LowHealthPulse__DelegateSignature() end

---@param Base_Stagger_Damage float
---@param Charge_Attack_Alpha float
function AFS_PlayerChar_C:ModifyBaseStaggerDamage(Base_Stagger_Damage, Charge_Attack_Alpha) end

function AFS_PlayerChar_C:MovePlayerToTempTeleporter() end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_03F7C7CB46E94A61B83E91A0887EA124(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_16DC167B4920651AF81D879915A06B4A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_2FA246A24B2B24C383C3D79130EFE154(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_3B01FD28479042401871EBB16C80F2E6(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_43888E0646BE4D77FD8EDB9703D355B8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_4F59CC3440887F4576B316B67166D9F8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_5547E9E94E2CFFC92396CF86896E92FB(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_598820254B23ABCB4EFD01A2C1DA3DE3(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_8B0C88354A18CA1F8136A9BDB6E1183F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_9389B4314A401AA556B558A0E323CCB0(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_95293251429181A7DDAAA0AE8788A50A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_B20D37D8411F49D3F3200E9533E7E695(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_B63C92DB4A03EFB5750C54972BC7A9A5(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_CC8502F44ECFB71A6FE3A7ACFBD296DA(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnBlendOut_CFD32B764518AC94C62D3CA15F18832F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_03F7C7CB46E94A61B83E91A0887EA124(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_16DC167B4920651AF81D879915A06B4A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_2FA246A24B2B24C383C3D79130EFE154(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_3B01FD28479042401871EBB16C80F2E6(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_43888E0646BE4D77FD8EDB9703D355B8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_4F59CC3440887F4576B316B67166D9F8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_5547E9E94E2CFFC92396CF86896E92FB(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_598820254B23ABCB4EFD01A2C1DA3DE3(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_8B0C88354A18CA1F8136A9BDB6E1183F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_9389B4314A401AA556B558A0E323CCB0(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_95293251429181A7DDAAA0AE8788A50A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_B20D37D8411F49D3F3200E9533E7E695(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_B63C92DB4A03EFB5750C54972BC7A9A5(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_CC8502F44ECFB71A6FE3A7ACFBD296DA(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnCompleted_CFD32B764518AC94C62D3CA15F18832F(NotifyName) end

function AFS_PlayerChar_C:OnDiedEvent__DelegateSignature() end

---@param Old float
---@param New float
function AFS_PlayerChar_C:OnHealthChanged(Old, New) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_03F7C7CB46E94A61B83E91A0887EA124(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_16DC167B4920651AF81D879915A06B4A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_2FA246A24B2B24C383C3D79130EFE154(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_3B01FD28479042401871EBB16C80F2E6(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_43888E0646BE4D77FD8EDB9703D355B8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_4F59CC3440887F4576B316B67166D9F8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_5547E9E94E2CFFC92396CF86896E92FB(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_598820254B23ABCB4EFD01A2C1DA3DE3(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_8B0C88354A18CA1F8136A9BDB6E1183F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_9389B4314A401AA556B558A0E323CCB0(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_95293251429181A7DDAAA0AE8788A50A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_B20D37D8411F49D3F3200E9533E7E695(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_B63C92DB4A03EFB5750C54972BC7A9A5(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_CC8502F44ECFB71A6FE3A7ACFBD296DA(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnInterrupted_CFD32B764518AC94C62D3CA15F18832F(NotifyName) end

function AFS_PlayerChar_C:OnJumped() end

function AFS_PlayerChar_C:OnKnockdown__DelegateSignature() end

---@param Hit FHitResult
function AFS_PlayerChar_C:OnLanded(Hit) end

---@param Loaded UClass
function AFS_PlayerChar_C:OnLoaded_2E4AA6BA497BE3746CCA86BC5D425250(Loaded) end

---@param Loaded UClass
function AFS_PlayerChar_C:OnLoaded_F484A0484937B7C6D9D023B689C20B7E(Loaded) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_03F7C7CB46E94A61B83E91A0887EA124(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_16DC167B4920651AF81D879915A06B4A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_2FA246A24B2B24C383C3D79130EFE154(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_3B01FD28479042401871EBB16C80F2E6(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_43888E0646BE4D77FD8EDB9703D355B8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_4F59CC3440887F4576B316B67166D9F8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_5547E9E94E2CFFC92396CF86896E92FB(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_598820254B23ABCB4EFD01A2C1DA3DE3(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_8B0C88354A18CA1F8136A9BDB6E1183F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_9389B4314A401AA556B558A0E323CCB0(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_95293251429181A7DDAAA0AE8788A50A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_B20D37D8411F49D3F3200E9533E7E695(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_B63C92DB4A03EFB5750C54972BC7A9A5(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_CC8502F44ECFB71A6FE3A7ACFBD296DA(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyBegin_CFD32B764518AC94C62D3CA15F18832F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_03F7C7CB46E94A61B83E91A0887EA124(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_16DC167B4920651AF81D879915A06B4A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_2FA246A24B2B24C383C3D79130EFE154(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_3B01FD28479042401871EBB16C80F2E6(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_43888E0646BE4D77FD8EDB9703D355B8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_4F59CC3440887F4576B316B67166D9F8(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_5547E9E94E2CFFC92396CF86896E92FB(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_598820254B23ABCB4EFD01A2C1DA3DE3(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_8B0C88354A18CA1F8136A9BDB6E1183F(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_9389B4314A401AA556B558A0E323CCB0(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_95293251429181A7DDAAA0AE8788A50A(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_B20D37D8411F49D3F3200E9533E7E695(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_B63C92DB4A03EFB5750C54972BC7A9A5(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_CC8502F44ECFB71A6FE3A7ACFBD296DA(NotifyName) end

---@param NotifyName FName
function AFS_PlayerChar_C:OnNotifyEnd_CFD32B764518AC94C62D3CA15F18832F(NotifyName) end

function AFS_PlayerChar_C:OnReadMessageClosed__DelegateSignature() end

---@param KeyableObject TScriptInterface<IKeyableObject_C>
function AFS_PlayerChar_C:OpenKeymenu(KeyableObject) end

---@param QuickJournal boolean
function AFS_PlayerChar_C:OpenPauseMenu(QuickJournal) end

---@param Area UAreaName_C
---@param DisableShopButton boolean
---@param Checkpoint ACheckpoint_C
function AFS_PlayerChar_C:OpenSaveMenu(Area, DisableShopButton, Checkpoint) end

function AFS_PlayerChar_C:OpenSaveTPUI() end

---@param Shop UShopConfigData
---@param SellMode boolean
---@param NPC AMerchant_NPC_BP_C
function AFS_PlayerChar_C:OpenShopmenu(Shop, SellMode, NPC) end

function AFS_PlayerChar_C:OpenStatus() end

function AFS_PlayerChar_C:PanaceaCure() end

---@param CurrentTeleportationTarget ATeleporter_C
function AFS_PlayerChar_C:PlayEndOfTeleport(CurrentTeleportationTarget) end

function AFS_PlayerChar_C:PlayerBecameGrounded__DelegateSignature() end

function AFS_PlayerChar_C:PlayerJumped__DelegateSignature() end

function AFS_PlayerChar_C:PlayerLanded__DelegateSignature() end

function AFS_PlayerChar_C:PlayerLeftGround__DelegateSignature() end

---@param Message FText
---@param Title FText
---@param Note_DA UReadableText_DataAsset_C
---@param Inspect boolean
function AFS_PlayerChar_C:PlayerReadMessage(Message, Title, Note_DA, Inspect) end

---@param Location FTransform
---@param ForcedMidair boolean
function AFS_PlayerChar_C:Player_GetSafeLocationInfo(Location, ForcedMidair) end

---@param Amt int32
function AFS_PlayerChar_C:Player_GiveXP(Amt) end

function AFS_PlayerChar_C:Player_RecapHP() end

function AFS_PlayerChar_C:Player_SkipCutscene() end

function AFS_PlayerChar_C:Player_WriteStatusToSave() end

function AFS_PlayerChar_C:PoisonDamageTicked__DelegateSignature() end

function AFS_PlayerChar_C:PostEndingWakeOnBeach() end

function AFS_PlayerChar_C:PostLoadRefreshState() end

function AFS_PlayerChar_C:PostLoadRefreshStats() end

function AFS_PlayerChar_C:PostRuneVisionUpgradeRefresh() end

function AFS_PlayerChar_C:PostTPUpdateCamera() end

function AFS_PlayerChar_C:PreLoadWeapons() end

---@param NPC ANPC_Base_C
function AFS_PlayerChar_C:PrepareForDialogue(NPC) end

function AFS_PlayerChar_C:ProcessDamageDealing() end

function AFS_PlayerChar_C:PutWeaponsAway() end

---@param Location UFS_LocationData
function AFS_PlayerChar_C:QueueTeleportLevelLoad(Location) end

function AFS_PlayerChar_C:QuickFadeTL__FinishedFunc() end

function AFS_PlayerChar_C:QuickFadeTL__UpdateFunc() end

function AFS_PlayerChar_C:QuickTPFakeLightFade__FinishedFunc() end

function AFS_PlayerChar_C:QuickTPFakeLightFade__UpdateFunc() end

---@param Message FText
---@param Title FText
---@param Note_DA UReadableText_DataAsset_C
---@param InspectMode boolean
---@param ProcessMessage boolean
function AFS_PlayerChar_C:ReadMessage(Message, Title, Note_DA, InspectMode, ProcessMessage) end

function AFS_PlayerChar_C:ReadMessageClosed() end

function AFS_PlayerChar_C:ReceiveBeginPlay() end

---@param NewController AController
function AFS_PlayerChar_C:ReceivePossessed(NewController) end

---@param DeltaSeconds float
function AFS_PlayerChar_C:ReceiveTick(DeltaSeconds) end

function AFS_PlayerChar_C:RefillAllCooldowns() end

---@param Refill boolean
function AFS_PlayerChar_C:RefreshChargeCounts(Refill) end

function AFS_PlayerChar_C:RefreshEquippedAccessory() end

function AFS_PlayerChar_C:RefreshEquippedItemEffects() end

function AFS_PlayerChar_C:RefreshRuneVisionEffect() end

function AFS_PlayerChar_C:RefreshSelectedConsumable() end

---@param NewItem UDaggerChargeLogic_C
function AFS_PlayerChar_C:RegisterDaggerComponent(NewItem) end

function AFS_PlayerChar_C:RemoveAllPositiveEffects() end

---@param Item UFS_ItemData_C
function AFS_PlayerChar_C:RemoveItemFromQuickSlots(Item) end

function AFS_PlayerChar_C:ResetPowerMeter() end

---@param OriginalHit FHitResult
---@param FinalLocation FHitResult
function AFS_PlayerChar_C:ResolveEnemyHitLocation(OriginalHit, FinalLocation) end

---@param Multiplier float
---@param Weapon UFS_ItemData_C
---@param GeneratedByConsumignAbilityPoints boolean
function AFS_PlayerChar_C:ResourcesWereGenerated__DelegateSignature(Multiplier, Weapon, GeneratedByConsumignAbilityPoints) end

function AFS_PlayerChar_C:Respawn() end

function AFS_PlayerChar_C:RestoreSuspend() end

function AFS_PlayerChar_C:RestoreToSavePoint() end

function AFS_PlayerChar_C:RunHoldPressed() end

function AFS_PlayerChar_C:RunHoldReleased() end

function AFS_PlayerChar_C:RunTapPressed() end

---@param Point FVector
---@param ProjectedLocation FVector
function AFS_PlayerChar_C:SafeZoneProject(Point, ProjectedLocation) end

---@param Consumable UFS_ItemData_C
function AFS_PlayerChar_C:ScriptUseItem(Consumable) end

function AFS_PlayerChar_C:SeamlessMoveTeleporterFX() end

---@param DaggerClass TSubclassOf<ADagger_Projectile_Base_C>
---@param Success boolean
function AFS_PlayerChar_C:SelectDaggerTypeAndDamage(DaggerClass, Success) end

function AFS_PlayerChar_C:SelectLastConsumable() end

function AFS_PlayerChar_C:SelectNextConsumable() end

---@param DoingIt boolean
function AFS_PlayerChar_C:SetPlayerDoingQuickInteraction(DoingIt) end

---@param Checkpoint ACheckpoint_C
function AFS_PlayerChar_C:SetSaveCheckpoint(Checkpoint) end

function AFS_PlayerChar_C:SetTeleportedRecently() end

---@param TP AActor
---@param GreenMode boolean
function AFS_PlayerChar_C:SetTeleporterFakeLightParamsForTP(TP, GreenMode) end

function AFS_PlayerChar_C:SetToInitialState() end

function AFS_PlayerChar_C:SetUpDashParameters() end

function AFS_PlayerChar_C:SetUpOptimizeAttachments() end

function AFS_PlayerChar_C:SetUpStatusEffectComps() end

---@param Pos FVector
---@param TPLightRadius float
---@param wingcrystalcolor boolean
function AFS_PlayerChar_C:SetUpTPFakeLight(Pos, TPLightRadius, wingcrystalcolor) end

---@param GreenMode boolean
function AFS_PlayerChar_C:SetUpTeleportVFX(GreenMode) end

---@param Tags FGameplayTagContainer
function AFS_PlayerChar_C:ShouldNotBeTargetedByHoming(Tags) end

function AFS_PlayerChar_C:ShouldUseOffhandFSDash() end

---@param GameOverVariant int32
function AFS_PlayerChar_C:ShowGameOverScreen(GameOverVariant) end

---@param ForceRightHand boolean
function AFS_PlayerChar_C:ShowQuickDashSword(ForceRightHand) end

function AFS_PlayerChar_C:SkipIntroCutscene() end

function AFS_PlayerChar_C:SlightDelayEnableInput() end

function AFS_PlayerChar_C:SnapToSafeLoc() end

---@param Class TSubclassOf<AActor>
---@param Visuals AActor
function AFS_PlayerChar_C:SpawnDaggerVisuals(Class, Visuals) end

function AFS_PlayerChar_C:StartBecomingGrounded() end

---@param NPC ANPC_Base_C
---@param Dialogue UFS_DialogueData
function AFS_PlayerChar_C:StartDialogue(NPC, Dialogue) end

function AFS_PlayerChar_C:StartGameInitStats() end

function AFS_PlayerChar_C:StartGameWaitForLoadingScreenToFinish() end

function AFS_PlayerChar_C:StartIntroCutscene() end

---@param Pos FVector
function AFS_PlayerChar_C:StartQucikTPLightFade(Pos) end

function AFS_PlayerChar_C:StartUltraAttackHitboxTick() end

---@param Applied boolean
function AFS_PlayerChar_C:StatusEffectUpdated(Applied) end

---@param bActive boolean
function AFS_PlayerChar_C:SteamOverlayStatusChanged(bActive) end

function AFS_PlayerChar_C:StopUltraAttackHitboxTick() end

---@param Loc FVector
---@param Rot FRotator
function AFS_PlayerChar_C:SuperFastTeleport(Loc, Rot) end

---@param NoAnim boolean
function AFS_PlayerChar_C:SwapDagger(NoAnim) end

---@param Pos FVector
---@param Normal FVector
---@param PhysMat UPhysicalMaterial
---@param Non_Metal_Tip boolean
function AFS_PlayerChar_C:SwordBonk(Pos, Normal, PhysMat, Non_Metal_Tip) end

function AFS_PlayerChar_C:TPSecretFadeIn__FinishedFunc() end

function AFS_PlayerChar_C:TPSecretFadeIn__UpdateFunc() end

function AFS_PlayerChar_C:TPSecretFadeOut__FinishedFunc() end

function AFS_PlayerChar_C:TPSecretFadeOut__UpdateFunc() end

function AFS_PlayerChar_C:TakeOutWeapons() end

---@param Teleporter AMiniTeleporter_C
function AFS_PlayerChar_C:TeleportBackFromShop(Teleporter) end

---@param NewRotation FRotator
function AFS_PlayerChar_C:TeleportControlRotation(NewRotation) end

---@param Target UObject
function AFS_PlayerChar_C:TeleportCrystalGoToTarget(Target) end

---@param Location_Data UFS_LocationData
---@param GreenFX boolean
function AFS_PlayerChar_C:TeleportToLocation(Location_Data, GreenFX) end

---@param Target UFS_LocationData
function AFS_PlayerChar_C:TeleportToSave(Target) end

---@param From ACheckpoint_C
function AFS_PlayerChar_C:TeleportToShop(From) end

function AFS_PlayerChar_C:TeleportToSipehaArena() end

---@param Data UFS_LocationData
function AFS_PlayerChar_C:TeleportToTeleporterData(Data) end

---@param Target UFS_LocationData
function AFS_PlayerChar_C:TeleportWingStoneTargetChosen(Target) end

function AFS_PlayerChar_C:TempBlockItems() end

---@param Duration float
function AFS_PlayerChar_C:TempDisablePlayerJump(Duration) end

function AFS_PlayerChar_C:TickAttackKey() end

function AFS_PlayerChar_C:TickCombos() end

function AFS_PlayerChar_C:TickFallWind() end

---@param UpdateCache boolean
function AFS_PlayerChar_C:TickMoveSpeed(UpdateCache) end

function AFS_PlayerChar_C:TickPoison() end

function AFS_PlayerChar_C:TickRunning() end

function AFS_PlayerChar_C:TickSticky() end

function AFS_PlayerChar_C:Timeline_0__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_0__UpdateFunc() end

function AFS_PlayerChar_C:Timeline_1__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_1__UpdateFunc() end

function AFS_PlayerChar_C:Timeline_2__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_2__UpdateFunc() end

function AFS_PlayerChar_C:Timeline_3__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_3__UpdateFunc() end

function AFS_PlayerChar_C:Timeline_4__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_4__UpdateFunc() end

function AFS_PlayerChar_C:Timeline_5__FinishedFunc() end

function AFS_PlayerChar_C:Timeline_5__UpdateFunc() end

function AFS_PlayerChar_C:TogglePhotoMode() end

---@param ItemData UFS_ItemData_C
function AFS_PlayerChar_C:ToggleQuickSlotItem(ItemData) end

function AFS_PlayerChar_C:TotalAchievementTreasures() end

function AFS_PlayerChar_C:TriggerGrabAttack() end

---@param Variant int32
function AFS_PlayerChar_C:TriggerKnockdown(Variant) end

---@param DamagePostApplication FFB_DamageAttributeSet
---@param OutgoingDamage FFB_DamageAttributeSet
function AFS_PlayerChar_C:TriggerMeleeHitstopBasedOnDamage(DamagePostApplication, OutgoingDamage) end

function AFS_PlayerChar_C:TriggerPitInvincibility() end

function AFS_PlayerChar_C:TriggerWeaponTickRefresh() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AFS_PlayerChar_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AFS_PlayerChar_C:TryApplyRejuvPotion() end

function AFS_PlayerChar_C:TryApplyWeaponXPPotion() end

function AFS_PlayerChar_C:TryAutoPause() end

---@param Consume boolean
function AFS_PlayerChar_C:TryTeleportingBackToLastSave(Consume) end

function AFS_PlayerChar_C:TryToUnstickCharacter() end

function AFS_PlayerChar_C:UltraAttack() end

function AFS_PlayerChar_C:UltraAttackTickLoop() end

---@param Item UFS_ItemData_C
---@param Slot int32
function AFS_PlayerChar_C:UnequipItem(Item, Slot) end

function AFS_PlayerChar_C:UnequippedGun() end

function AFS_PlayerChar_C:UnhideHUD() end

function AFS_PlayerChar_C:UnlockInputForLoadingOrCutscene() end

---@param InputPin UFS_ItemData_C
function AFS_PlayerChar_C:UpdateAchievementItemTotals(InputPin) end

function AFS_PlayerChar_C:UpdateAttachments() end

function AFS_PlayerChar_C:UpdateCaputRing() end

function AFS_PlayerChar_C:UpdateCurrentDashMove() end

---@param Base float
---@param WAP float
---@param XP float
---@param Ult float
function AFS_PlayerChar_C:UpdateDebugResourceGen__DelegateSignature(Base, WAP, XP, Ult) end

function AFS_PlayerChar_C:UpdateElevatorRumble() end

function AFS_PlayerChar_C:UpdateFloor() end

function AFS_PlayerChar_C:UpdateGuideNotifs() end

function AFS_PlayerChar_C:UpdateJumpStats() end

function AFS_PlayerChar_C:UpdateLightRadius() end

---@param Force boolean
function AFS_PlayerChar_C:UpdateSafeLocation(Force) end

function AFS_PlayerChar_C:UpdateSelectedDagger() end

function AFS_PlayerChar_C:UpdateSolidlygrounded() end

function AFS_PlayerChar_C:UpdateStatusEffects__DelegateSignature() end

function AFS_PlayerChar_C:UpdateWaterType() end

function AFS_PlayerChar_C:UseFallbackCheckpoint() end

---@param Item UFS_ItemData_C
---@param Potion boolean
function AFS_PlayerChar_C:UseHealingItem(Item, Potion) end

function AFS_PlayerChar_C:UsedConsumable__DelegateSignature() end

function AFS_PlayerChar_C:WaitForSwap() end

function AFS_PlayerChar_C:WakeOnBeachAnim() end

---@param Level int32
---@param WeaponItemData UFS_ItemData_C
function AFS_PlayerChar_C:WeaponLevelledUp__DelegateSignature(Level, WeaponItemData) end

---@param Location UFS_LocationData
function AFS_PlayerChar_C:WingCrystalToLocation(Location) end

function AFS_PlayerChar_C:WriteStatusToSave() end

---@param Amount int32
---@param FromSteal boolean
function AFS_PlayerChar_C:XPGained__DelegateSignature(Amount, FromSteal) end

function AFS_PlayerChar_C:introcrosshairfade__FinishedFunc() end

function AFS_PlayerChar_C:introcrosshairfade__UpdateFunc() end

---@param TurnSpeedCap float
AFS_PlayerChar_C['Apply Turn Rate Cap'] = function(self, TurnSpeedCap) end

AFS_PlayerChar_C['Cache Consumable Items'] = function(self) end

AFS_PlayerChar_C['Cache Important Refs'] = function(self) end

AFS_PlayerChar_C['Cache Input States'] = function(self) end

---@param Checkpoint ACheckpoint_C
AFS_PlayerChar_C['Cache Shop Return Location'] = function(self, Checkpoint) end

AFS_PlayerChar_C['Calc Current FLying Sword Dir'] = function(self) end

---@param Attack_Power float
---@param MinPowerMult float
---@param MaxPowerMult float
---@param MeleeFXConfig FFS_MeleeFXOverride
---@param ConsumingCharges boolean
---@param Aggro_Noise_Level EFS_AttackAggroNoise
---@param Total_Resource_Amount float
---@param FakeFullPowerMeter boolean
---@param AbilityPointsWereSpent boolean
---@param DoNotDrainPowerMeter boolean
---@param StaggerBaseDamage float
---@param StaggerIgnoreDamageType boolean
AFS_PlayerChar_C['Calculate And Apply Melee Damage Properties'] = function(self, Attack_Power, MinPowerMult, MaxPowerMult, MeleeFXConfig, ConsumingCharges, Aggro_Noise_Level, Total_Resource_Amount, FakeFullPowerMeter, AbilityPointsWereSpent, DoNotDrainPowerMeter, StaggerBaseDamage, StaggerIgnoreDamageType) end

---@param MeleeFXConfig FFS_MeleeFXOverride
---@param ConsumingCharges boolean
---@param Weapon_Stats UFS_WeaponStats
---@param Secondary boolean
---@param AttackPowMult float
---@param Weapon_Ability_Points_Spent float
---@param Power_Meter_Spent float
---@param FakeFullPowerMeter boolean
---@param DoNotDrainPowerMeter boolean
---@param AOE_ResourceGen boolean
---@param StaggerOverrideForce boolean
---@param StaggerIgnoreDamageType boolean
---@param Weapon_Data UFS_ItemData_C
AFS_PlayerChar_C['Calculate And Apply Melee Damage PropertiesFromWeaponStats'] = function(self, MeleeFXConfig, ConsumingCharges, Weapon_Stats, Secondary, AttackPowMult, Weapon_Ability_Points_Spent, Power_Meter_Spent, FakeFullPowerMeter, DoNotDrainPowerMeter, AOE_ResourceGen, StaggerOverrideForce, StaggerIgnoreDamageType, Weapon_Data) end

---@param ActualMult float
---@param Alpha float
AFS_PlayerChar_C['Calculate Charge Multiplier'] = function(self, ActualMult, Alpha) end

AFS_PlayerChar_C['Cancel Run Hold'] = function(self) end

AFS_PlayerChar_C['Cap HP'] = function(self) end

---@param Can_t_Attack boolean
AFS_PlayerChar_C['Check Attack Flags'] = function(self, Can_t_Attack) end

AFS_PlayerChar_C['Disable Turn Rate Cap'] = function(self) end

---@param StartTeleporter AActor
---@param DestinationTeleporter AActor
AFS_PlayerChar_C['Do Seamless Relative Teleport'] = function(self, StartTeleporter, DestinationTeleporter) end

AFS_PlayerChar_C['Entered Water'] = function(self) end

AFS_PlayerChar_C['Exited Water'] = function(self) end

---@param Name UFS_LocationData
---@param Teleporter TScriptInterface<IFS_Destination>
AFS_PlayerChar_C['Find Mini Teleporter with Location'] = function(self, Name, Teleporter) end

AFS_PlayerChar_C['Flying Sword Move Is Unlocked'] = function(self) end

---@param Amount float
---@param Weapon UFS_ItemData_C
---@param ConsumedWeaponAbilityPoints boolean
AFS_PlayerChar_C['Generate on Hit Resources'] = function(self, Amount, Weapon, ConsumedWeaponAbilityPoints) end

---@param Damage float
AFS_PlayerChar_C['Get Base Damage'] = function(self, Damage) end

---@param Primary float
---@param Secondary float
---@param Stat_Data UFS_WeaponStats
AFS_PlayerChar_C['Get Best FS Stats'] = function(self, Primary, Secondary, Stat_Data) end

---@param Time float
AFS_PlayerChar_C['Get Current Weapon Power Meter Duration'] = function(self, Time) end

AFS_PlayerChar_C['Get Defense Damage Mult'] = function(self) end

---@param Mouse boolean
AFS_PlayerChar_C['Get Horizontal Input Multiplier'] = function(self, Mouse) end

AFS_PlayerChar_C['Get Poison Resist'] = function(self) end

---@param Mult float
AFS_PlayerChar_C['Get Power Meter %'] = function(self, Mult) end

---@param Amount float
AFS_PlayerChar_C['Grant Grimoire Ink Points Via Resource Gen'] = function(self, Amount) end

---@param Amount float
AFS_PlayerChar_C['Grant Ultra Charge Via Resource Gen'] = function(self, Amount) end

---@param Amount float
---@param Weapon UFS_ItemData_C
AFS_PlayerChar_C['Grant XP Via Resource Gen to Weapon'] = function(self, Amount, Weapon) end

---@param Hit FHitResult
---@param Applied_Damage FFB_DamageAttributeSet
AFS_PlayerChar_C['Handle Hit Vampirism'] = function(self, Hit, Applied_Damage) end

---@param Item UFS_ItemData_C
---@param Unequip boolean
AFS_PlayerChar_C['Handle Replacing Equipped Dagger'] = function(self, Item, Unequip) end

AFS_PlayerChar_C['Init Daggers'] = function(self) end

AFS_PlayerChar_C['Initialize Weapon Systems'] = function(self) end

---@param Grounded boolean
AFS_PlayerChar_C['Is Player Grounded'] = function(self, Grounded) end

AFS_PlayerChar_C['Player Closed KeyMenu'] = function(self) end

---@param NewGuide UReadableText_DataAsset_C
AFS_PlayerChar_C['Player Grant Guide'] = function(self, NewGuide) end

---@param Keyable TScriptInterface<IKeyableObject_C>
AFS_PlayerChar_C['Player Open Keymenu'] = function(self, Keyable) end

AFS_PlayerChar_C['Player Update Aspect Ratio'] = function(self) end

---@param Success boolean
---@param Class TSubclassOf<ADagger_Projectile_Base_C>
AFS_PlayerChar_C['Prepare To Fire Dagger'] = function(self, Success, Class) end

AFS_PlayerChar_C['Refresh Secret Vision Effects'] = function(self) end

AFS_PlayerChar_C['Refresh Selected Weapon'] = function(self) end

---@param InputPin UFS_ItemData_C
AFS_PlayerChar_C['Reset Dagger Charges On Equip'] = function(self, InputPin) end

AFS_PlayerChar_C['Restore Cached Input States'] = function(self) end

AFS_PlayerChar_C['Restore Status from Save'] = function(self) end

AFS_PlayerChar_C['Select Next Dagger Type'] = function(self) end

AFS_PlayerChar_C['Select Previous DaggerType'] = function(self) end

---@param Index int32
AFS_PlayerChar_C['Select Specified Dagger'] = function(self, Index) end

---@param NewVal float
AFS_PlayerChar_C['Set Health Points'] = function(self, NewVal) end

---@param InWidgetToFocus UWidget
AFS_PlayerChar_C['Set Input Mode to UIOnly with Mouselock Setting'] = function(self, InWidgetToFocus) end

AFS_PlayerChar_C['Should Do Normal Position Load'] = function(self) end

AFS_PlayerChar_C['Start Game'] = function(self) end

---@param NewLocation FVector
---@param NewRotation FRotator
---@param UpdateTPLight boolean
---@param TPLightRadius float
---@param TPLightWingCrystalColor boolean
AFS_PlayerChar_C['Teleport to Loc'] = function(self, NewLocation, NewRotation, UpdateTPLight, TPLightRadius, TPLightWingCrystalColor) end

---@param DT float
AFS_PlayerChar_C['Tick Camera'] = function(self, DT) end

AFS_PlayerChar_C['Tick Liquid Stuff'] = function(self) end

AFS_PlayerChar_C['Update Binding Ultra Degen'] = function(self) end

AFS_PlayerChar_C['Update Camera Aspect Ratio Options'] = function(self) end
