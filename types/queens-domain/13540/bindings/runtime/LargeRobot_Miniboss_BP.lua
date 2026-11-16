---@meta

---@class ALargeRobot_Miniboss_BP_C : ALargeRobot_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FlamethrowHitbox_11 USphereComponent
---@field FlamethrowHitbox_10 USphereComponent
---@field FlamethrowHitbox_9 USphereComponent
---@field FlamethrowHitbox_8 USphereComponent
---@field FlamethrowHitbox_7 USphereComponent
---@field FlamethrowHitbox_6 USphereComponent
---@field FlamethrowHitbox_5 USphereComponent
---@field FlamethrowHitbox_4 USphereComponent
---@field FlamethrowHitbox_3 USphereComponent
---@field FlamethrowHitbox_2 USphereComponent
---@field FlamethrowHitbox_1 USphereComponent
---@field FlamethrowHitbox_0 USphereComponent
---@field Flamethrower_L UNiagaraComponent
---@field Flamethrower_R UNiagaraComponent
---@field FlamethrowerSweep_cross_386486AB48CFCB6E414678BF0C226E78 float
---@field FlamethrowerSweep__Direction_386486AB48CFCB6E414678BF0C226E78 ETimelineDirection::Type
---@field FlamethrowerSweep UTimelineComponent
---@field FireSFX UAudioComponent
---@field DoingFlamethrower boolean
local ALargeRobot_Miniboss_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALargeRobot_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ALargeRobot_Miniboss_BP_C:CancelFiringloop() end

function ALargeRobot_Miniboss_BP_C:DoFlamethrowerAttack() end

---@param EntryPoint int32
function ALargeRobot_Miniboss_BP_C:ExecuteUbergraph_LargeRobot_Miniboss_BP(EntryPoint) end

function ALargeRobot_Miniboss_BP_C:FireFlamethrowers() end

function ALargeRobot_Miniboss_BP_C:FlamethrowerSweep__FinishedFunc() end

function ALargeRobot_Miniboss_BP_C:FlamethrowerSweep__UpdateFunc() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALargeRobot_Miniboss_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnBlendOut_A147A7FD4B5863FEE73FD3A41FA804D0(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnBlendOut_DA72F29640963AAA7EF8158D1604505E(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnCompleted_A147A7FD4B5863FEE73FD3A41FA804D0(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnCompleted_DA72F29640963AAA7EF8158D1604505E(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnInterrupted_A147A7FD4B5863FEE73FD3A41FA804D0(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnInterrupted_DA72F29640963AAA7EF8158D1604505E(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnNotifyBegin_A147A7FD4B5863FEE73FD3A41FA804D0(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnNotifyBegin_DA72F29640963AAA7EF8158D1604505E(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnNotifyEnd_A147A7FD4B5863FEE73FD3A41FA804D0(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Miniboss_BP_C:OnNotifyEnd_DA72F29640963AAA7EF8158D1604505E(NotifyName) end

function ALargeRobot_Miniboss_BP_C:Stagger() end

function ALargeRobot_Miniboss_BP_C:StartFlamethrowerBurst() end

function ALargeRobot_Miniboss_BP_C:WrapUpFlamethrowerFlags() end
