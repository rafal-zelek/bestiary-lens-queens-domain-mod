---@meta

---@class USipeha_LaserSweeps_Action_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SipehaRef ASipeha_BP_C
---@field DirectionIsR boolean
---@field SweepCount int32
---@field SipehaLaser UNiagaraComponent
---@field LaserImpact UNiagaraComponent
---@field LaserSound UAudioComponent
local USipeha_LaserSweeps_Action_C = {}

function USipeha_LaserSweeps_Action_C:BeginLaser() end

---@param Reason EFS_EnemyActionCancelReason
function USipeha_LaserSweeps_Action_C:CancelAction(Reason) end

function USipeha_LaserSweeps_Action_C:DoJump() end

---@param MontageToPlay UAnimMontage
function USipeha_LaserSweeps_Action_C:DoNextMontage(MontageToPlay) end

function USipeha_LaserSweeps_Action_C:EndLaser() end

---@param EntryPoint int32
function USipeha_LaserSweeps_Action_C:ExecuteUbergraph_Sipeha_LaserSweeps_Action(EntryPoint) end

---@param NotifyName FName
function USipeha_LaserSweeps_Action_C:OnBlendOut_BE27527F4901FDB28F70CE9C62F3A0BC(NotifyName) end

---@param NotifyName FName
function USipeha_LaserSweeps_Action_C:OnCompleted_BE27527F4901FDB28F70CE9C62F3A0BC(NotifyName) end

---@param NotifyName FName
function USipeha_LaserSweeps_Action_C:OnInterrupted_BE27527F4901FDB28F70CE9C62F3A0BC(NotifyName) end

---@param NotifyName FName
function USipeha_LaserSweeps_Action_C:OnNotifyBegin_BE27527F4901FDB28F70CE9C62F3A0BC(NotifyName) end

---@param NotifyName FName
function USipeha_LaserSweeps_Action_C:OnNotifyEnd_BE27527F4901FDB28F70CE9C62F3A0BC(NotifyName) end

function USipeha_LaserSweeps_Action_C:RunAction_BP() end

function USipeha_LaserSweeps_Action_C:StartLaser() end

---@param A FVector
---@param B FVector
---@param Distance float
function USipeha_LaserSweeps_Action_C:TraceForImpact(A, B, Distance) end
