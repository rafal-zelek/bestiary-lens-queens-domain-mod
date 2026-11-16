---@meta

---@class AWaspDeer_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StingerHitbox USphereComponent
---@field KickHitbox USphereComponent
---@field HornHitbox USphereComponent
---@field TrapMontage UAnimMontage
---@field BubbleTimer FTimerHandle
---@field DeadWingsMat UMaterialInterface
local AWaspDeer_Base_BP_C = {}

function AWaspDeer_Base_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AWaspDeer_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AWaspDeer_Base_BP_C:ExecuteUbergraph_WaspDeer_Base_BP(EntryPoint) end

---@param WalkMoveSpeedMult float
function AWaspDeer_Base_BP_C:GetCurrentMoveInputSpeedMult(WalkMoveSpeedMult) end

function AWaspDeer_Base_BP_C:HornAttack() end

function AWaspDeer_Base_BP_C:InitDeathFade() end

function AWaspDeer_Base_BP_C:KickAttack() end

function AWaspDeer_Base_BP_C:MagicAttack() end

function AWaspDeer_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnBlendOut_4CE9A62C45BE05E2111A00B23E2AB398(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnBlendOut_54BDEB3C49A36E4305140081D5F1FB8F(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A1E9246DE(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AF2E3E880(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnCompleted_4CE9A62C45BE05E2111A00B23E2AB398(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnCompleted_54BDEB3C49A36E4305140081D5F1FB8F(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A1E9246DE(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AF2E3E880(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnInterrupted_4CE9A62C45BE05E2111A00B23E2AB398(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnInterrupted_54BDEB3C49A36E4305140081D5F1FB8F(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A1E9246DE(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AF2E3E880(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyBegin_4CE9A62C45BE05E2111A00B23E2AB398(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyBegin_54BDEB3C49A36E4305140081D5F1FB8F(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A1E9246DE(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AF2E3E880(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyEnd_4CE9A62C45BE05E2111A00B23E2AB398(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyEnd_54BDEB3C49A36E4305140081D5F1FB8F(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A1E9246DE(NotifyName) end

---@param NotifyName FName
function AWaspDeer_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AF2E3E880(NotifyName) end

function AWaspDeer_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AWaspDeer_Base_BP_C:ReceiveTick(DeltaSeconds) end

function AWaspDeer_Base_BP_C:StingerAttack() end

function AWaspDeer_Base_BP_C:UnAggrod() end

AWaspDeer_Base_BP_C['Update Rotation'] = function(self) end
