---@meta

---@class AFishWifeEvil_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field CurrentlyRunningmoveQuery UEnvQueryInstanceBlueprintWrapper
---@field RunAwayEnvQuery UEnvQuery
---@field TargetPos FVector
---@field CurrentTargettingExplosion AFishwife_Magic_Explosion_C
---@field ResurrectionsCast int32
---@field WantsToTalk boolean
local AFishWifeEvil_BP_C = {}

function AFishWifeEvil_BP_C:ActivateEnemyAI() end

function AFishWifeEvil_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFishWifeEvil_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AFishWifeEvil_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AFishWifeEvil_BP_C:CancelExplosion() end

function AFishWifeEvil_BP_C:CastSpell() end

function AFishWifeEvil_BP_C:CheckChase() end

---@param Finished boolean
function AFishWifeEvil_BP_C:CheckForFightFinish(Finished) end

function AFishWifeEvil_BP_C:ContinueRunningAway() end

function AFishWifeEvil_BP_C:DoneSpeaking() end

---@param EntryPoint int32
function AFishWifeEvil_BP_C:ExecuteUbergraph_FishWifeEvil_BP(EntryPoint) end

function AFishWifeEvil_BP_C:FightFinishScripting() end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
function AFishWifeEvil_BP_C:FriendTookDamage(Enemy, Damage, Tags, DataTags) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFishWifeEvil_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AFishWifeEvil_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFishWifeEvil_BP_C:Kill(NoRewards, SupressDeathSound) end

function AFishWifeEvil_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnBlendOut_112821664F27F81AEF749B8A146A186E(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnBlendOut_646F1DB744D1EE4935AA208756C163DE(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnBlendOut_816411B04ACE1B74FBEA34965B3CC76A(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnBlendOut_CA547EE94A864F61C9026793D986FCE4(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnBlendOut_EC3BD34D47BE1FA9958588A5B7CB021B(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnCompleted_112821664F27F81AEF749B8A146A186E(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnCompleted_646F1DB744D1EE4935AA208756C163DE(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnCompleted_816411B04ACE1B74FBEA34965B3CC76A(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnCompleted_CA547EE94A864F61C9026793D986FCE4(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnCompleted_EC3BD34D47BE1FA9958588A5B7CB021B(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnInterrupted_112821664F27F81AEF749B8A146A186E(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnInterrupted_646F1DB744D1EE4935AA208756C163DE(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnInterrupted_816411B04ACE1B74FBEA34965B3CC76A(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnInterrupted_CA547EE94A864F61C9026793D986FCE4(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnInterrupted_EC3BD34D47BE1FA9958588A5B7CB021B(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyBegin_112821664F27F81AEF749B8A146A186E(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyBegin_646F1DB744D1EE4935AA208756C163DE(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyBegin_816411B04ACE1B74FBEA34965B3CC76A(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyBegin_CA547EE94A864F61C9026793D986FCE4(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyBegin_EC3BD34D47BE1FA9958588A5B7CB021B(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyEnd_112821664F27F81AEF749B8A146A186E(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyEnd_646F1DB744D1EE4935AA208756C163DE(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyEnd_816411B04ACE1B74FBEA34965B3CC76A(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyEnd_CA547EE94A864F61C9026793D986FCE4(NotifyName) end

---@param NotifyName FName
function AFishWifeEvil_BP_C:OnNotifyEnd_EC3BD34D47BE1FA9958588A5B7CB021B(NotifyName) end

function AFishWifeEvil_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFishWifeEvil_BP_C:ReceiveTick(DeltaSeconds) end

function AFishWifeEvil_BP_C:ResurrectionSpell() end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AFishWifeEvil_BP_C:RunAwayQueryDone(QueryInstance, QueryStatus) end

---@param Should boolean
function AFishWifeEvil_BP_C:ShouldExecuteResurrection(Should) end

function AFishWifeEvil_BP_C:Stagger() end

function AFishWifeEvil_BP_C:StopRunAwayPathing() end

function AFishWifeEvil_BP_C:UnAggrod() end

AFishWifeEvil_BP_C['Force Initial Chase'] = function(self) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AFishWifeEvil_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end

AFishWifeEvil_BP_C['Should Move Towards Player'] = function(self) end

AFishWifeEvil_BP_C['Start Run Away Pathing'] = function(self) end

AFishWifeEvil_BP_C['Update Rotation'] = function(self) end
