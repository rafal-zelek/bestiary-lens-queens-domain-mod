---@meta

---@class UWeaponScriptBase_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NormalAttackBlockDurationBase float
---@field NormalAttackDaggerBlockBase float
---@field AttackCombo TArray<FWeaponMeleeComboEntry>
---@field OverridePrimaryAttackScreenShake TSubclassOf<UCameraShakeBase>
---@field OverridePrimaryAttackRumble UForceFeedbackEffect
---@field DisableDefaultScreenShakeAndSound boolean
---@field ['Weapon Uses Non Metal Impact FX'] boolean
---@field MeleeFXColor1 FLinearColor
---@field MeleeFXColor2 FLinearColor
---@field MeleeFXLifetime float
---@field MeleeFXOverride UNiagaraSystem
---@field RootAnim UAnimSequence
---@field WalkAnim UAnimSequence
---@field InAirAnim UAnimSequence
---@field ChargeMontage UAnimMontage
---@field PlayerRef AFS_PlayerChar_C
---@field VisualsActorClass TSubclassOf<AWeaponVisuals_C>
---@field CurrentVisuals AWeaponVisuals_C
---@field PlayerConfig UPlayerBalance_C
---@field ChosenAttackIsRight boolean
---@field PutAwayAnim UAnimMontage
---@field PullOutAnim UAnimMontage
---@field AttackPlayRateBase float
---@field NormalSwingSound USoundBase
---@field AdditionalImpactSound USoundBase
---@field ItemData UFS_ItemData_C
---@field Hidden boolean
---@field OffhandWingDashAnim UAnimMontage
---@field CurrentComboIndex int32
---@field ClearComboTimer FTimerHandle
---@field ComboResetTime float
---@field NormalAttackRunning boolean
---@field CurrentVisualChargeCount int32
---@field CurrentAbilityPoints float
---@field VisualsAttachPoint USceneComponent
---@field LastPrimaryAttackPlayRate float
---@field LastPrimaryAttackMontage UAnimMontage
---@field LocalDT float
---@field LastSpentAbilityPoints float
---@field CustomDashIsActive boolean
---@field WeaponIgnoresBinding boolean
---@field GemChargedPfx UNiagaraSystem
---@field CurrentSwingSound TArray<UAudioComponent>
---@field MeleeCharge_PitchMultMin float
---@field MeleeCharge_PitchMultMax float
---@field MeleeCharge_VolumeMultMin float
---@field MeleeCharge_VolumeMultMax float
---@field HeldInHand boolean
local UWeaponScriptBase_C = {}

function UWeaponScriptBase_C:ActivateNormalHitbox() end

---@param Amt float
function UWeaponScriptBase_C:AddToCharge(Amt) end

function UWeaponScriptBase_C:AltAttackPressed() end

function UWeaponScriptBase_C:AltAttackReleased() end

function UWeaponScriptBase_C:ApplyBindingAbilityPointDegen() end

function UWeaponScriptBase_C:ApplyCooldownWeaponAbilityPointGen() end

function UWeaponScriptBase_C:AttackPressed() end

function UWeaponScriptBase_C:AttackReleased() end

function UWeaponScriptBase_C:AttackStartedCharging() end

function UWeaponScriptBase_C:CancelAllAttacks() end

function UWeaponScriptBase_C:CancelCustomDash() end

function UWeaponScriptBase_C:ChooseAttack() end

function UWeaponScriptBase_C:CleanUpSwingSounds() end

function UWeaponScriptBase_C:ClearCombo() end

function UWeaponScriptBase_C:CreateWeaponVisuals() end

function UWeaponScriptBase_C:DeactivateHitbox() end

function UWeaponScriptBase_C:DestroyWepaonVisuals() end

function UWeaponScriptBase_C:DoAttackActivationFX() end

---@param Overriding boolean
---@param SpeedMult float
function UWeaponScriptBase_C:DoWalkSpeedMods(Overriding, SpeedMult) end

function UWeaponScriptBase_C:EnteredHand() end

function UWeaponScriptBase_C:EvolveWeapon() end

---@param EntryPoint int32
function UWeaponScriptBase_C:ExecuteUbergraph_WeaponScriptBase(EntryPoint) end

---@param Power_Meter float
---@param ChargeAmount float
function UWeaponScriptBase_C:GetActiveAttackPowerMeterFillAndCharge(Power_Meter, ChargeAmount) end

---@param Tags FGameplayTagContainer
function UWeaponScriptBase_C:GetAdditionalTags(Tags) end

---@param Secondary boolean
function UWeaponScriptBase_C:GetAttackAggroSizeData(Secondary) end

---@param Secondary boolean
---@param Map TMap<FGameplayTag, float>
---@param Value float
function UWeaponScriptBase_C:GetAttackAggroSizeDataTags(Secondary, Map, Value) end

---@param CharacterMovement UCharacterMovementComponent
function UWeaponScriptBase_C:GetCharMovement(CharacterMovement) end

---@param Mult float
function UWeaponScriptBase_C:GetChargedNormalAttackMultiplier(Mult) end

---@param Count int32
function UWeaponScriptBase_C:GetCurrentChargeCount(Count) end

---@param Damage_Types FGameplayTagContainer
function UWeaponScriptBase_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param Name FName
---@param Val float
function UWeaponScriptBase_C:GetCustomWeaponStat(Name, Val) end

---@param FS_MeleeFXOverride FFS_MeleeFXOverride
function UWeaponScriptBase_C:GetDefaultMeleeFXConfig(FS_MeleeFXOverride) end

function UWeaponScriptBase_C:GetDexScaledAttackPlayRate() end

---@param Montage UAnimMontage
function UWeaponScriptBase_C:GetDexScaledPrimaryAttackPlayRate(Montage) end

---@param Mult float
function UWeaponScriptBase_C:GetHitResourceGainMultiplier(Mult) end

---@param HUDWeapon UTexture2D
---@param ItemIcon UTexture2D
---@param StatusWeapon UTexture2D
function UWeaponScriptBase_C:GetIcons(HUDWeapon, ItemIcon, StatusWeapon) end

---@param Charges int32
function UWeaponScriptBase_C:GetMaxCharges(Charges) end

---@param Multiplier float
---@param Attack float
---@param DaggerBlock float
---@param PowerMeterTime float
function UWeaponScriptBase_C:GetNormalAttackBlockTimes(Multiplier, Attack, DaggerBlock, PowerMeterTime) end

---@param LastFrameVel FVector
function UWeaponScriptBase_C:GetPlayerLastVel(LastFrameVel) end

---@param Duration float
function UWeaponScriptBase_C:GetPowerMeterRechargeDuration(Duration) end

---@param UnchargedValScaler float
---@param Charge_Val float
function UWeaponScriptBase_C:GetWeaponChargeValue(UnchargedValScaler, Charge_Val) end

---@param Level int32
function UWeaponScriptBase_C:GetWeaponLevel(Level) end

function UWeaponScriptBase_C:GetWeaponStatsData() end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UWeaponScriptBase_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

function UWeaponScriptBase_C:Hide() end

---@param Equipped boolean
function UWeaponScriptBase_C:IsEquipped(Equipped) end

function UWeaponScriptBase_C:LeftHand() end

---@param Base UAnimMontage
function UWeaponScriptBase_C:ModifyAttackMontage(Base) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UWeaponScriptBase_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnBlendOut_0486F5744A80E388592ED28F526AE7C7(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnBlendOut_1F9C0B754F765949070007A3C0AB89AE(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnBlendOut_BBD82C9E43AB0CB100ED8387EBE1942F(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnCompleted_0486F5744A80E388592ED28F526AE7C7(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnCompleted_1F9C0B754F765949070007A3C0AB89AE(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnCompleted_BBD82C9E43AB0CB100ED8387EBE1942F(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnInterrupted_0486F5744A80E388592ED28F526AE7C7(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnInterrupted_1F9C0B754F765949070007A3C0AB89AE(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnInterrupted_BBD82C9E43AB0CB100ED8387EBE1942F(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyBegin_0486F5744A80E388592ED28F526AE7C7(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyBegin_1F9C0B754F765949070007A3C0AB89AE(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyBegin_BBD82C9E43AB0CB100ED8387EBE1942F(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyEnd_0486F5744A80E388592ED28F526AE7C7(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyEnd_1F9C0B754F765949070007A3C0AB89AE(NotifyName) end

---@param NotifyName FName
function UWeaponScriptBase_C:OnNotifyEnd_BBD82C9E43AB0CB100ED8387EBE1942F(NotifyName) end

function UWeaponScriptBase_C:OnPrimaryAttackReleased() end

function UWeaponScriptBase_C:OnPrimaryAttackStartedCharging() end

---@param Hit FHitResult
function UWeaponScriptBase_C:PlayAdditionalImpactSound(Hit) end

---@param Shake TSubclassOf<UCameraShakeBase>
---@param ForceFeedbackEffect UForceFeedbackEffect
function UWeaponScriptBase_C:PlayWeaponCamShake(Shake, ForceFeedbackEffect) end

function UWeaponScriptBase_C:PreChargeAltPressed() end

function UWeaponScriptBase_C:ReadChargeDataFromSaveFile() end

function UWeaponScriptBase_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UWeaponScriptBase_C:ReceiveTick(DeltaSeconds) end

---@param Level int32
---@param WeaponItemData UFS_ItemData_C
function UWeaponScriptBase_C:ReceiveWeaponLevelledEvent(Level, WeaponItemData) end

function UWeaponScriptBase_C:RefreshVisualState() end

---@param Multiplier float
---@param Weapon UFS_ItemData_C
---@param GeneratedByConsumignAbilityPoints boolean
function UWeaponScriptBase_C:ResourcesGenerated(Multiplier, Weapon, GeneratedByConsumignAbilityPoints) end

function UWeaponScriptBase_C:Show() end

---@param Amt int32
---@param Success boolean
---@param Points_Spent float
function UWeaponScriptBase_C:TryToConsumeCharges(Amt, Success, Points_Spent) end

function UWeaponScriptBase_C:UnblockAttack() end

function UWeaponScriptBase_C:UpdateChargeFX() end

---@param Amount float
function UWeaponScriptBase_C:WeaponGainedXP(Amount) end

---@param Level int32
---@param WeaponItemData UFS_ItemData_C
function UWeaponScriptBase_C:WeaponLevelledUp(Level, WeaponItemData) end

function UWeaponScriptBase_C:WriteChargeDataToSaveFile() end

UWeaponScriptBase_C['Activate Hitbox'] = function(self) end

UWeaponScriptBase_C['Gained A Charge'] = function(self) end

---@param Melee_FX_Offset FTransform
UWeaponScriptBase_C['Get Current Combo Attack Config'] = function(self, Melee_FX_Offset) end

---@param Attack_Power float
UWeaponScriptBase_C['Get Weapon Primary Attack Power'] = function(self, Attack_Power) end

---@param Hit FHitResult
---@param Damage_To_Apply FFB_DamageAttributeSet
---@param Applier AActor
---@param Hit_Location FVector
---@param Hit_Location_Valid boolean
---@param Nullify_Damage boolean
---@param Received_Damage_Reduction float
UWeaponScriptBase_C['Handle Player Took Damage'] = function(self, Hit, Damage_To_Apply, Applier, Hit_Location, Hit_Location_Valid, Nullify_Damage, Received_Damage_Reduction) end

UWeaponScriptBase_C['Init Weapon Charges'] = function(self) end
