---@meta

---@class AFB_GameState : AGameStateBase
---@field RegisteredDamageableActors TSet<AActor>
---@field RegisteredDamageableTargets TSet<UFB_DamageableTarget>
local AFB_GameState = {}

---@class FAttributeSettings
---@field AttributeTag FGameplayTag
---@field BaseValue float
---@field Clamped boolean
---@field ClampByAttribute boolean
---@field ClampAttributeName FGameplayTag
---@field MaxValue float
local FAttributeSettings = {}

---@class FFB_AttributeModifier
---@field ID FFB_AttributeModifierUID
---@field Priority int32
---@field Modifier float
---@field ModifierMode EFB_AttributeModifierMode
local FFB_AttributeModifier = {}

---@class FFB_AttributeModifierUID
local FFB_AttributeModifierUID = {}

---@class FFB_BaseAttributeValueSet
---@field CurrentHealth float
---@field MaxHealth float
---@field HealthRegen float
---@field MaxMana float
---@field ManaRegen float
---@field MaxStamina float
---@field StaminaRegen float
local FFB_BaseAttributeValueSet = {}

---@class FFB_DamageAttributeSet
---@field DamageAmount float
---@field DamageTags FGameplayTagContainer
---@field DataTags TMap<FGameplayTag, float>
---@field AdditionalData TSet<UPrimaryDataAsset>
---@field SourceGUID FGuid
local FFB_DamageAttributeSet = {}

---@class IFB_DamageableInterface : IInterface
local IFB_DamageableInterface = {}

---@class UFB_AdvancedClampedAttribute : UFB_Attribute_Base
---@field MaxValueAttribute FGameplayTag
local UFB_AdvancedClampedAttribute = {}

---@class UFB_AttributeComponent : UActorComponent
---@field Attributes TMap<FGameplayTag, UFB_Attribute_Base>
---@field AttributeArray TArray<UFB_Attribute_Base>
---@field OnAttributeUpdated FFB_AttributeComponentOnAttributeUpdated
---@field OnEffectAdded FFB_AttributeComponentOnEffectAdded
---@field OnEffectRemoved FFB_AttributeComponentOnEffectRemoved
---@field AppliedEffects TArray<UFB_Effect>
---@field ParentAttributeComponent UFB_AttributeComponent
---@field GameplayTags FGameplayTagContainer
---@field ApplicableStatDebugData TArray<FName>
local UFB_AttributeComponent = {}

---@class UFB_Attribute_Base : UObject
---@field BaseValue float
---@field Value float
---@field AttributeTag FGameplayTag
---@field bShouldTick boolean
---@field OnAttributeDirtied FFB_Attribute_BaseOnAttributeDirtied
---@field OnAttributeUpdated FFB_Attribute_BaseOnAttributeUpdated
---@field OwningAttributeComponent UFB_AttributeComponent
local UFB_Attribute_Base = {}

---@class UFB_ClampedAttribute : UFB_Attribute_Base
---@field MaxValue float
local UFB_ClampedAttribute = {}

---@class UFB_DamageAttributeUtilities : UBlueprintFunctionLibrary
local UFB_DamageAttributeUtilities = {}

---@class UFB_DamageableTarget : USceneComponent
---@field bCritTarget boolean
---@field bRegisteredWithGameState boolean
local UFB_DamageableTarget = {}

---@class UFB_Effect : UObject
---@field StackCount int32
---@field bAllowTick boolean
---@field bAlreadyRemoved boolean
---@field bCurable boolean
---@field MaxStacks int32
---@field DefaultIcon UTexture2D
---@field OwningAttributeComponent UFB_AttributeComponent
---@field DisplayName FText
local UFB_Effect = {}

---@class UFB_SimpleAttribute : UFB_Attribute_Base
local UFB_SimpleAttribute = {}

---@param ActorToRemove AActor
---@param EndPlayReason EEndPlayReason::Type
function AFB_GameState:DamageableActorEndedPlay(ActorToRemove, EndPlayReason) end

---@param ActorToRegister AActor
function AFB_GameState:RegisterDamageableActor(ActorToRegister) end

---@param ActorToRemove AActor
function AFB_GameState:UnregisterDamageableActor(ActorToRemove) end

---@param bPosOverridden boolean
function IFB_DamageableInterface:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function IFB_DamageableInterface:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param Tags FGameplayTagContainer
function IFB_DamageableInterface:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function IFB_DamageableInterface:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Attribute UFB_Attribute_Base
function UFB_AdvancedClampedAttribute:ClampAttributeWasUpdated(Attribute) end

---@param NewTag FGameplayTag
function UFB_AttributeComponent:AddGameplayTag(NewTag) end

---@param NewAttribute UFB_Attribute_Base
function UFB_AttributeComponent:AddNewAttribute(NewAttribute) end

---@param AttributeTag FGameplayTag
---@param ValueToAdd float
function UFB_AttributeComponent:AddToAttributeBaseValue(AttributeTag, ValueToAdd) end

---@param AttributeTag FGameplayTag
---@param Modifier FFB_AttributeModifier
---@param bDeferredRecalculate boolean
function UFB_AttributeComponent:ApplyAttributeModifier(AttributeTag, Modifier, bDeferredRecalculate) end

---@param EffectClass TSubclassOf<UFB_Effect>
---@param TriggerValue float
---@param ApplyingHit FHitResult
---@param Applier UObject
function UFB_AttributeComponent:ApplyEffectStack(EffectClass, TriggerValue, ApplyingHit, Applier) end

---@param Attribute UFB_Attribute_Base
function UFB_AttributeComponent:AttributeWasDirtied(Attribute) end

---@param Attribute UFB_Attribute_Base
function UFB_AttributeComponent:AttributeWasUpdated(Attribute) end

function UFB_AttributeComponent:ClearAttributeModifiers() end

---@param AttributeTag FGameplayTag
---@param bCreateIfMissing boolean
function UFB_AttributeComponent:GetAttribute(AttributeTag, bCreateIfMissing) end

---@param AttributeTag FGameplayTag
function UFB_AttributeComponent:GetAttributeBaseValue(AttributeTag) end

---@param AttributeTag FGameplayTag
function UFB_AttributeComponent:GetAttributeValue(AttributeTag) end

function UFB_AttributeComponent:GetDebugString() end

---@param EffectClass TSubclassOf<UFB_Effect>
function UFB_AttributeComponent:GetEffectInstance(EffectClass) end

---@param EffectClass TSubclassOf<UFB_Effect>
function UFB_AttributeComponent:HasEffect(EffectClass) end

function UFB_AttributeComponent:ImmediateAttributeRefresh() end

---@param ModifierToRemove FFB_AttributeModifierUID
---@param bDeferredRecalculate boolean
function UFB_AttributeComponent:RemoveAttributeModifier(ModifierToRemove, bDeferredRecalculate) end

function UFB_AttributeComponent:RemoveCurableEffects() end

---@param EffectClass TSubclassOf<UFB_Effect>
function UFB_AttributeComponent:RemoveEffect(EffectClass) end

---@param TagToRemove FGameplayTag
function UFB_AttributeComponent:RemoveGameplayTag(TagToRemove) end

function UFB_AttributeComponent:SetAllAttributesDirty() end

---@param AttributeTag FGameplayTag
---@param NewValue float
function UFB_AttributeComponent:SetAttributeBaseValue(AttributeTag, NewValue) end

function UFB_AttributeComponent:SetDirty() end

---@param NewParentAttributeComponent UFB_AttributeComponent
function UFB_AttributeComponent:SetParentAttributeComponent(NewParentAttributeComponent) end

---@param X float
function UFB_Attribute_Base:AddBaseValue(X) end

---@param Modifier FFB_AttributeModifier
---@param ImmediatelyRecalculate boolean
function UFB_Attribute_Base:AddModifier(Modifier, ImmediatelyRecalculate) end

---@param ImmediatelyRecalculate boolean
function UFB_Attribute_Base:ClearModifiers(ImmediatelyRecalculate) end

function UFB_Attribute_Base:GetBaseValue() end

function UFB_Attribute_Base:GetValue() end

function UFB_Attribute_Base:InitializeAttribute() end

---@param X float
function UFB_Attribute_Base:MultiplyBaseValue(X) end

---@param Attribute UFB_Attribute_Base
function UFB_Attribute_Base:ParentComponentAttributeUpdated(Attribute) end

---@param Parent UFB_Attribute_Base
function UFB_Attribute_Base:ParentWasDirtied(Parent) end

---@param DeferEvent boolean
function UFB_Attribute_Base:RecalculateValue(DeferEvent) end

---@param Modifier FFB_AttributeModifierUID
---@param ImmediatelyRecalculate boolean
function UFB_Attribute_Base:RemoveModifier(Modifier, ImmediatelyRecalculate) end

---@param X float
function UFB_Attribute_Base:SetBaseValue(X) end

function UFB_Attribute_Base:SetDirty() end

---@param DeltaTime float
function UFB_Attribute_Base:TickAttribute(DeltaTime) end

---@param Damage FFB_DamageAttributeSet
---@param Tag FGameplayTag
---@param Value float
function UFB_DamageAttributeUtilities:AddDataTagToDamage(Damage, Tag, Value) end

---@param Damage FFB_DamageAttributeSet
---@param DataTags TMap<FGameplayTag, float>
function UFB_DamageAttributeUtilities:AddDataTagsToDamage(Damage, DataTags) end

---@param Damage FFB_DamageAttributeSet
---@param DamageTags FGameplayTagContainer
function UFB_DamageAttributeUtilities:AddTagsToDamage(Damage, DamageTags) end

---@param TriggerDamage float
---@param ApplyingHit FHitResult
---@param Applier UObject
---@param EmptyStack boolean
function UFB_Effect:ApplyStack(TriggerDamage, ApplyingHit, Applier, EmptyStack) end

function UFB_Effect:EffectWasRemoved() end

function UFB_Effect:GetDebugString() end

function UFB_Effect:GetDisplayText() end

function UFB_Effect:GetIcon() end

function UFB_Effect:GetRemainingTime() end

---@param DeltaTime float
function UFB_Effect:TickEffect(DeltaTime) end
