---@meta

---@class AGiantFish_Enemy_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentAttackSpot AGiantSwampFish_EmergeSpot_C
---@field DelayAfterTrigger float
---@field DidHitPlayerThisEmergence boolean
---@field WaitWhenNoHitDuration float
---@field WaitWhenHitDuration float
local AGiantFish_Enemy_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AGiantFish_Enemy_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param Spot AGiantSwampFish_EmergeSpot_C
function AGiantFish_Enemy_BP_C:EmergeLocationTriggered(Spot) end

---@param EntryPoint int32
function AGiantFish_Enemy_BP_C:ExecuteUbergraph_GiantFish_Enemy_BP(EntryPoint) end

function AGiantFish_Enemy_BP_C:GetPFXLoc() end

function AGiantFish_Enemy_BP_C:InitDeathFade() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGiantFish_Enemy_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnBlendOut_306F105245E27BE1AADDA38B19AC8C65(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnBlendOut_BC50963E42664A9D58B508999B4E1F2F(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnCompleted_306F105245E27BE1AADDA38B19AC8C65(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnCompleted_BC50963E42664A9D58B508999B4E1F2F(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnInterrupted_306F105245E27BE1AADDA38B19AC8C65(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnInterrupted_BC50963E42664A9D58B508999B4E1F2F(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnNotifyBegin_306F105245E27BE1AADDA38B19AC8C65(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnNotifyBegin_BC50963E42664A9D58B508999B4E1F2F(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnNotifyEnd_306F105245E27BE1AADDA38B19AC8C65(NotifyName) end

---@param NotifyName FName
function AGiantFish_Enemy_BP_C:OnNotifyEnd_BC50963E42664A9D58B508999B4E1F2F(NotifyName) end

function AGiantFish_Enemy_BP_C:PostDeathDestroy() end

function AGiantFish_Enemy_BP_C:ReceiveBeginPlay() end

---@param Tags FGameplayTagContainer
function AGiantFish_Enemy_BP_C:ShouldNotBeTargetedByHoming(Tags) end
