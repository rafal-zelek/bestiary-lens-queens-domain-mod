---@meta

---@class AWhalePrince_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BiteHitbox USphereComponent
---@field Sphere1 USphereComponent
---@field Sphere USphereComponent
---@field LaserAimTL_LaserMovement_4DEFF00A4E5C1A145B18C286588D4FC1 float
---@field LaserAimTL__Direction_4DEFF00A4E5C1A145B18C286588D4FC1 ETimelineDirection::Type
---@field LaserAimTL UTimelineComponent
---@field LaserFireDuration float
---@field CurrentLaserSound UAudioComponent
---@field Lasering boolean
---@field CurrentLaser UNiagaraComponent
---@field AimLoc FVector
local AWhalePrince_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AWhalePrince_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AWhalePrince_BP_C:CancelLaser() end

function AWhalePrince_BP_C:DoLaserAttack() end

---@param EntryPoint int32
function AWhalePrince_BP_C:ExecuteUbergraph_WhalePrince_BP(EntryPoint) end

---@param Alpha float
function AWhalePrince_BP_C:GetLaserTargetPosAtTime(Alpha) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AWhalePrince_BP_C:Kill(NoRewards, SupressDeathSound) end

function AWhalePrince_BP_C:LaserAimTL__FinishedFunc() end

function AWhalePrince_BP_C:LaserAimTL__UpdateFunc() end

---@param NotifyName FName
function AWhalePrince_BP_C:OnBlendOut_0B2B16CD4496BFD22CA352A94358CCC3(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnBlendOut_0C3A80EF455E4363A6EF0FAE1F6C0AE4(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnBlendOut_1A121E2A48F6DD17332338994C97019A(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnBlendOut_EB21E1EE40BF3674047B5686DA8A263C(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnCompleted_0B2B16CD4496BFD22CA352A94358CCC3(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnCompleted_0C3A80EF455E4363A6EF0FAE1F6C0AE4(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnCompleted_1A121E2A48F6DD17332338994C97019A(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnCompleted_EB21E1EE40BF3674047B5686DA8A263C(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnInterrupted_0B2B16CD4496BFD22CA352A94358CCC3(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnInterrupted_0C3A80EF455E4363A6EF0FAE1F6C0AE4(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnInterrupted_1A121E2A48F6DD17332338994C97019A(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnInterrupted_EB21E1EE40BF3674047B5686DA8A263C(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyBegin_0B2B16CD4496BFD22CA352A94358CCC3(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyBegin_0C3A80EF455E4363A6EF0FAE1F6C0AE4(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyBegin_1A121E2A48F6DD17332338994C97019A(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyBegin_EB21E1EE40BF3674047B5686DA8A263C(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyEnd_0B2B16CD4496BFD22CA352A94358CCC3(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyEnd_0C3A80EF455E4363A6EF0FAE1F6C0AE4(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyEnd_1A121E2A48F6DD17332338994C97019A(NotifyName) end

---@param NotifyName FName
function AWhalePrince_BP_C:OnNotifyEnd_EB21E1EE40BF3674047B5686DA8A263C(NotifyName) end

function AWhalePrince_BP_C:Stagger() end
