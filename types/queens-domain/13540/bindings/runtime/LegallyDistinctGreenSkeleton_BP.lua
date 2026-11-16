---@meta

---@class ALegallyDistinctGreenSkeleton_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_8_1_AABC702747ECA6B0B9F192BF3E8DC13C float
---@field Timeline_8__Direction_AABC702747ECA6B0B9F192BF3E8DC13C ETimelineDirection::Type
---@field Timeline_8 UTimelineComponent
---@field Timeline_7_1_CEBAB3C744D12352EE3FB0AD043232F5 float
---@field Timeline_7__Direction_CEBAB3C744D12352EE3FB0AD043232F5 ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field ShouldEndMove boolean
---@field LaserLength float
---@field LaserAudio UAudioComponent
---@field CurrentLaser UNiagaraComponent
---@field CurrentLaserEndpoint UNiagaraComponent
---@field LastLaserHitTime float
local ALegallyDistinctGreenSkeleton_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ALegallyDistinctGreenSkeleton_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

function ALegallyDistinctGreenSkeleton_BP_C:ApplyPushbackOnHit() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALegallyDistinctGreenSkeleton_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ALegallyDistinctGreenSkeleton_BP_C:CancelLaser() end

---@param EntryPoint int32
function ALegallyDistinctGreenSkeleton_BP_C:ExecuteUbergraph_LegallyDistinctGreenSkeleton_BP(EntryPoint) end

---@param Array TArray<FHitResult>
---@param EndPoint FVector
function ALegallyDistinctGreenSkeleton_BP_C:HitStuff(Array, EndPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALegallyDistinctGreenSkeleton_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnBlendOut_BB18A42748357FA6EC8D8AB5C46772F6(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnBlendOut_FA8BCC6B40EFAE5FCECCDBB47929BB72(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnCompleted_BB18A42748357FA6EC8D8AB5C46772F6(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnCompleted_FA8BCC6B40EFAE5FCECCDBB47929BB72(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnInterrupted_BB18A42748357FA6EC8D8AB5C46772F6(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnInterrupted_FA8BCC6B40EFAE5FCECCDBB47929BB72(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnNotifyBegin_BB18A42748357FA6EC8D8AB5C46772F6(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnNotifyBegin_FA8BCC6B40EFAE5FCECCDBB47929BB72(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnNotifyEnd_BB18A42748357FA6EC8D8AB5C46772F6(NotifyName) end

---@param NotifyName FName
function ALegallyDistinctGreenSkeleton_BP_C:OnNotifyEnd_FA8BCC6B40EFAE5FCECCDBB47929BB72(NotifyName) end

function ALegallyDistinctGreenSkeleton_BP_C:Stagger() end

function ALegallyDistinctGreenSkeleton_BP_C:Timeline_7__FinishedFunc() end

function ALegallyDistinctGreenSkeleton_BP_C:Timeline_7__UpdateFunc() end

function ALegallyDistinctGreenSkeleton_BP_C:Timeline_8__FinishedFunc() end

function ALegallyDistinctGreenSkeleton_BP_C:Timeline_8__UpdateFunc() end
