---@meta

---@class ANPC_Ghost_Base_C : ANPC_MultiReward_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Memento_GhostFX UNiagaraComponent
---@field GhostPassiveLoop UAudioComponent
---@field AreaFX UStaticMeshComponent
---@field MementoLoc USceneComponent
---@field SymbolSpawnPos USceneComponent
---@field Fade_Fade_712439894952FBF71B81D29211D76858 float
---@field Fade__Direction_712439894952FBF71B81D29211D76858 ETimelineDirection::Type
---@field Fade UTimelineComponent
---@field GhostOut_EarlyFade_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_Color_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_Glow_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_Squish_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_Warble_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_GlowFade_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut_Fade_ACFB91E34E8F2F31A9EEF69A6C66952D float
---@field GhostOut__Direction_ACFB91E34E8F2F31A9EEF69A6C66952D ETimelineDirection::Type
---@field GhostOut UTimelineComponent
---@field ghostinout boolean
---@field MoveOnMontage UAnimMontage
---@field HandEyeFlameSizeMult float
---@field GiveMemento_Montage UAnimMontage
---@field MementoBP TSubclassOf<AItemPickup_Base_C>
---@field MementoSocket FName
---@field QuestConditionName FS_SaveDataCondition
---@field Revealed boolean
---@field MementoPutAway FNPC_Ghost_Base_CMementoPutAway
---@field Guid FGuid
---@field QuestStateHidden boolean
local ANPC_Ghost_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ANPC_Ghost_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ANPC_Ghost_Base_C:CustomEvent_0() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ANPC_Ghost_Base_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ANPC_Ghost_Base_C:ExecuteUbergraph_NPC_Ghost_Base(EntryPoint) end

function ANPC_Ghost_Base_C:Fade__FinishedFunc() end

function ANPC_Ghost_Base_C:Fade__UpdateFunc() end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ANPC_Ghost_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ANPC_Ghost_Base_C:GhostOut__DeactivateGlow__EventFunc() end

function ANPC_Ghost_Base_C:GhostOut__FinishedFunc() end

function ANPC_Ghost_Base_C:GhostOut__UpdateFunc() end

function ANPC_Ghost_Base_C:GiveGhostITem() end

function ANPC_Ghost_Base_C:HasMovedOn() end

function ANPC_Ghost_Base_C:Hide() end

---@param PlayerInteracting AActor
function ANPC_Ghost_Base_C:Interact(PlayerInteracting) end

function ANPC_Ghost_Base_C:MementoPutAway__DelegateSignature() end

function ANPC_Ghost_Base_C:MoveOn() end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnBlendOut_6F20CACA4A7C0D51792DDE9BB81A3946(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnBlendOut_FF9D50884F66C4E75E43A0BB9712FF90(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnCompleted_6F20CACA4A7C0D51792DDE9BB81A3946(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnCompleted_FF9D50884F66C4E75E43A0BB9712FF90(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnInterrupted_6F20CACA4A7C0D51792DDE9BB81A3946(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnInterrupted_FF9D50884F66C4E75E43A0BB9712FF90(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnNotifyBegin_6F20CACA4A7C0D51792DDE9BB81A3946(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnNotifyBegin_FF9D50884F66C4E75E43A0BB9712FF90(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnNotifyEnd_6F20CACA4A7C0D51792DDE9BB81A3946(NotifyName) end

---@param NotifyName FName
function ANPC_Ghost_Base_C:OnNotifyEnd_FF9D50884F66C4E75E43A0BB9712FF90(NotifyName) end

function ANPC_Ghost_Base_C:ReceiveBeginPlay() end

function ANPC_Ghost_Base_C:RevealGhost() end

---@param ParameterValue float
---@param ParameterValue2 float
---@param ParameterValue3 float
---@param ParameterValue4 float
---@param FadeOut float
---@param EarlyFadeOptional float
function ANPC_Ghost_Base_C:SetPropFadeOut(ParameterValue, ParameterValue2, ParameterValue3, ParameterValue4, FadeOut, EarlyFadeOptional) end

function ANPC_Ghost_Base_C:SetQuestStateActive() end

function ANPC_Ghost_Base_C:SetQuestStateInactive() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ANPC_Ghost_Base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Revealed boolean
function ANPC_Ghost_Base_C:TryToReveal(Revealed) end

function ANPC_Ghost_Base_C:UserConstructionScript() end

function ANPC_Ghost_Base_C:resetdoonce() end
