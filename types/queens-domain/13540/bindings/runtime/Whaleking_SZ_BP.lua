---@meta

---@class AWhaleking_SZ_BP_C : AWhaleking_Boss_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerIsInArena boolean
local AWhaleking_SZ_BP_C = {}

function AWhaleking_SZ_BP_C:Aggrod() end

function AWhaleking_SZ_BP_C:DoIntro() end

---@param Left boolean
---@param Strong boolean
function AWhaleking_SZ_BP_C:DropFoot(Left, Strong) end

---@param Mode EnemyBehaviourMode::Type
function AWhaleking_SZ_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AWhaleking_SZ_BP_C:ExecuteUbergraph_Whaleking_SZ_BP(EntryPoint) end

---@param Left boolean
function AWhaleking_SZ_BP_C:GetFootImpactLoc(Left) end

---@param PlayerInteracting AActor
function AWhaleking_SZ_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AWhaleking_SZ_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param Left boolean
function AWhaleking_SZ_BP_C:LiftFoot(Left) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnBlendOut_2C4B628240291EBFA05B0DA6DA7AE291(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnBlendOut_CA5B3C6B48B078684A6CE685B9C8AA61(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnBlendOut_D89C972641D8DEF0898B2DAD02977DE3(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnCompleted_2C4B628240291EBFA05B0DA6DA7AE291(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnCompleted_CA5B3C6B48B078684A6CE685B9C8AA61(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnCompleted_D89C972641D8DEF0898B2DAD02977DE3(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnInterrupted_2C4B628240291EBFA05B0DA6DA7AE291(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnInterrupted_CA5B3C6B48B078684A6CE685B9C8AA61(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnInterrupted_D89C972641D8DEF0898B2DAD02977DE3(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyBegin_2C4B628240291EBFA05B0DA6DA7AE291(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyBegin_CA5B3C6B48B078684A6CE685B9C8AA61(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyBegin_D89C972641D8DEF0898B2DAD02977DE3(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyEnd_2C4B628240291EBFA05B0DA6DA7AE291(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyEnd_CA5B3C6B48B078684A6CE685B9C8AA61(NotifyName) end

---@param NotifyName FName
function AWhaleking_SZ_BP_C:OnNotifyEnd_D89C972641D8DEF0898B2DAD02977DE3(NotifyName) end

function AWhaleking_SZ_BP_C:PlayerEnteredArena() end

function AWhaleking_SZ_BP_C:PlayerLeftArena() end

---@param DeltaSeconds float
function AWhaleking_SZ_BP_C:ReceiveTick(DeltaSeconds) end

function AWhaleking_SZ_BP_C:RewardDialogueEnded() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AWhaleking_SZ_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AWhaleking_SZ_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end
