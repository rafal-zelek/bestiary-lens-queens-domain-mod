---@meta

---@class ADrillRobot_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DrillHitbox1 USphereComponent
---@field DrillHitbox USphereComponent
---@field DrillRobot_DrillFX UNiagaraComponent
---@field TrapMontage UAnimMontage
---@field BubbleTimer FTimerHandle
---@field StartDirection FVector
---@field EndCharge boolean
---@field ChargeActive boolean
---@field DrillSound UAudioComponent
---@field trap2audiocue UAudioComponent
---@field NaturalDrillEnd boolean
---@field RushCD float
local ADrillRobot_Base_BP_C = {}

---@param Damaged boolean
function ADrillRobot_Base_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ADrillRobot_Base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADrillRobot_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ADrillRobot_Base_BP_C:DoChargeAttack() end

---@param Mode EnemyBehaviourMode::Type
function ADrillRobot_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ADrillRobot_Base_BP_C:ExecuteUbergraph_DrillRobot_Base_BP(EntryPoint) end

function ADrillRobot_Base_BP_C:GetChargeLocationPastPlayer() end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_2B5DB48947A43198E4832EA203E1F589(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_32EE789A4D32F27FBA8FB18F4AB711BF(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_46DD74FB44B057A57CE08D970FFB1E17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_9640755E4BAE971F487300B01B191DD5(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_A774303940BD67E25699DAA0BDA10D52(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_BADE6D6A4C47C9B8DBE5958C7B7FAB0E(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_C484A80E4B9A69045C47378EEA69FF17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_DD068378479A49D2D68893A3C705F9AA(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A59A8B436(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_2B5DB48947A43198E4832EA203E1F589(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_32EE789A4D32F27FBA8FB18F4AB711BF(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_46DD74FB44B057A57CE08D970FFB1E17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_9640755E4BAE971F487300B01B191DD5(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_A774303940BD67E25699DAA0BDA10D52(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_BADE6D6A4C47C9B8DBE5958C7B7FAB0E(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_C484A80E4B9A69045C47378EEA69FF17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_DD068378479A49D2D68893A3C705F9AA(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A59A8B436(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_2B5DB48947A43198E4832EA203E1F589(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_32EE789A4D32F27FBA8FB18F4AB711BF(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_46DD74FB44B057A57CE08D970FFB1E17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_9640755E4BAE971F487300B01B191DD5(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_A774303940BD67E25699DAA0BDA10D52(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_BADE6D6A4C47C9B8DBE5958C7B7FAB0E(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_C484A80E4B9A69045C47378EEA69FF17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_DD068378479A49D2D68893A3C705F9AA(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A59A8B436(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_2B5DB48947A43198E4832EA203E1F589(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_32EE789A4D32F27FBA8FB18F4AB711BF(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_46DD74FB44B057A57CE08D970FFB1E17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_9640755E4BAE971F487300B01B191DD5(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_A774303940BD67E25699DAA0BDA10D52(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_BADE6D6A4C47C9B8DBE5958C7B7FAB0E(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_C484A80E4B9A69045C47378EEA69FF17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_DD068378479A49D2D68893A3C705F9AA(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A59A8B436(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_2B5DB48947A43198E4832EA203E1F589(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_32EE789A4D32F27FBA8FB18F4AB711BF(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_46DD74FB44B057A57CE08D970FFB1E17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_9640755E4BAE971F487300B01B191DD5(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_A774303940BD67E25699DAA0BDA10D52(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_BADE6D6A4C47C9B8DBE5958C7B7FAB0E(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_C484A80E4B9A69045C47378EEA69FF17(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_DD068378479A49D2D68893A3C705F9AA(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Base_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A59A8B436(NotifyName) end

function ADrillRobot_Base_BP_C:ReceiveBeginPlay() end

function ADrillRobot_Base_BP_C:Stagger() end

function ADrillRobot_Base_BP_C:StartDrill() end

function ADrillRobot_Base_BP_C:StartDrillAudio() end

function ADrillRobot_Base_BP_C:StopDrill() end

function ADrillRobot_Base_BP_C:StopDrillAudio() end

function ADrillRobot_Base_BP_C:StopDrillSteeringLogic() end

function ADrillRobot_Base_BP_C:naturaldrillstop() end
