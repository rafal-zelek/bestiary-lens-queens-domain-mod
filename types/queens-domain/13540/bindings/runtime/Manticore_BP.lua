---@meta

---@class AManticore_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeadHitbox USphereComponent
---@field BodyBLocker3 USphereComponent
---@field BodyBLocker2 USphereComponent
---@field BodyBLocker1 USphereComponent
---@field BodyBlocker USphereComponent
---@field TailSweep8 USphereComponent
---@field TailSweep7 USphereComponent
---@field TailSweep6 USphereComponent
---@field TailSweep5 USphereComponent
---@field TailSweep4 USphereComponent
---@field TailSweep3 USphereComponent
---@field TailSweep2 USphereComponent
---@field TailSweep1 USphereComponent
---@field TailSweep0 USphereComponent
---@field Hitbox_Claw_R2 USphereComponent
---@field Hitbox_Claw_L2 USphereComponent
---@field Hitbox_Claw_R USphereComponent
---@field Hitbox_Claw_L USphereComponent
---@field Hitbox_Stinger USphereComponent
---@field AboutToAggro boolean
---@field VomitCircles TArray<AManticore_Vomit_Circle_C>
---@field VomitTickRate float
---@field MaxVomitCount int32
---@field LastClawSide boolean
---@field VOmitClass TSubclassOf<AManticore_Vomit_Circle_C>
---@field VOmitMouth UNiagaraSystem
local AManticore_BP_C = {}

function AManticore_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AManticore_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AManticore_BP_C:ClawAttack() end

---@param AutoChosenAttack int32
function AManticore_BP_C:CustomEvent(AutoChosenAttack) end

---@param Vomit AManticore_Vomit_Circle_C
function AManticore_BP_C:CustomEvent_0(Vomit) end

---@param EntryPoint int32
function AManticore_BP_C:ExecuteUbergraph_Manticore_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AManticore_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AManticore_BP_C:OnBlendOut_34980DA1448CD50CFD746C861016AF69(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnBlendOut_E24EDAB441844FD78BE6138DF02D8D0A(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnBlendOut_F00A0D674208FEE30E2621A9F111C583(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnBlendOut_F079E26B468781C9D5E9B2B039375C23(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnCompleted_34980DA1448CD50CFD746C861016AF69(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnCompleted_E24EDAB441844FD78BE6138DF02D8D0A(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnCompleted_F00A0D674208FEE30E2621A9F111C583(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnCompleted_F079E26B468781C9D5E9B2B039375C23(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnInterrupted_34980DA1448CD50CFD746C861016AF69(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnInterrupted_E24EDAB441844FD78BE6138DF02D8D0A(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnInterrupted_F00A0D674208FEE30E2621A9F111C583(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnInterrupted_F079E26B468781C9D5E9B2B039375C23(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyBegin_34980DA1448CD50CFD746C861016AF69(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyBegin_E24EDAB441844FD78BE6138DF02D8D0A(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyBegin_F00A0D674208FEE30E2621A9F111C583(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyBegin_F079E26B468781C9D5E9B2B039375C23(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyEnd_34980DA1448CD50CFD746C861016AF69(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyEnd_E24EDAB441844FD78BE6138DF02D8D0A(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyEnd_F00A0D674208FEE30E2621A9F111C583(NotifyName) end

---@param NotifyName FName
function AManticore_BP_C:OnNotifyEnd_F079E26B468781C9D5E9B2B039375C23(NotifyName) end

function AManticore_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function AManticore_BP_C:ReceiveEndPlay(EndPlayReason) end

function AManticore_BP_C:RemoveVomit() end

function AManticore_BP_C:SetWalkSpeedToDefault() end

function AManticore_BP_C:SpawnVomit() end

function AManticore_BP_C:StartTickloop() end

function AManticore_BP_C:TailAttack() end

function AManticore_BP_C:TailSweep() end

function AManticore_BP_C:TickLoop() end

function AManticore_BP_C:UnAggrod() end

function AManticore_BP_C:VomitAttack() end
