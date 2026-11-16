---@meta

---@class ASmallRobot_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SwordHitbox3 USphereComponent
---@field SwordHitbox2 USphereComponent
---@field SwordHitbox1 USphereComponent
---@field SwordHitbox USphereComponent
---@field TrapMontage UAnimMontage
---@field BubbleTimer FTimerHandle
---@field StartDirection FVector
---@field EndCharge boolean
---@field ChargeActive boolean
---@field DrillSound UAudioComponent
---@field CurrentWheelVolume float
---@field CurrentWheelPitch float
local ASmallRobot_Base_BP_C = {}

---@param Damaged boolean
function ASmallRobot_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASmallRobot_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function ASmallRobot_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASmallRobot_Base_BP_C:ExecuteUbergraph_SmallRobot_Base_BP(EntryPoint) end

function ASmallRobot_Base_BP_C:GetChargeLocationPastPlayer() end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnBlendOut_29C1D5814C8AA774D0B008B9EE720E4E(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnBlendOut_596199F74DE9E66BA7748798A79D6969(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnBlendOut_75C648974169FECFB66DBD808D84EDD0(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnBlendOut_A5EC21294F3582DC94A3A38CB61ABEA7(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnBlendOut_C4398F52424B4DCD1271FEBD57BBC07F(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnCompleted_29C1D5814C8AA774D0B008B9EE720E4E(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnCompleted_596199F74DE9E66BA7748798A79D6969(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnCompleted_75C648974169FECFB66DBD808D84EDD0(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnCompleted_A5EC21294F3582DC94A3A38CB61ABEA7(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnCompleted_C4398F52424B4DCD1271FEBD57BBC07F(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnInterrupted_29C1D5814C8AA774D0B008B9EE720E4E(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnInterrupted_596199F74DE9E66BA7748798A79D6969(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnInterrupted_75C648974169FECFB66DBD808D84EDD0(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnInterrupted_A5EC21294F3582DC94A3A38CB61ABEA7(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnInterrupted_C4398F52424B4DCD1271FEBD57BBC07F(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyBegin_29C1D5814C8AA774D0B008B9EE720E4E(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyBegin_596199F74DE9E66BA7748798A79D6969(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyBegin_75C648974169FECFB66DBD808D84EDD0(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyBegin_A5EC21294F3582DC94A3A38CB61ABEA7(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyBegin_C4398F52424B4DCD1271FEBD57BBC07F(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyEnd_29C1D5814C8AA774D0B008B9EE720E4E(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyEnd_596199F74DE9E66BA7748798A79D6969(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyEnd_75C648974169FECFB66DBD808D84EDD0(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyEnd_A5EC21294F3582DC94A3A38CB61ABEA7(NotifyName) end

---@param NotifyName FName
function ASmallRobot_Base_BP_C:OnNotifyEnd_C4398F52424B4DCD1271FEBD57BBC07F(NotifyName) end

function ASmallRobot_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASmallRobot_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ASmallRobot_Base_BP_C:UpdateWheelSound() end
