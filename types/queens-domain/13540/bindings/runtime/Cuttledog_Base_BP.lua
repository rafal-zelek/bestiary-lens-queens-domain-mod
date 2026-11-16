---@meta

---@class ACuttledog_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TrapMontage UAnimMontage
---@field BubbleTimer FTimerHandle
---@field BubbleClass TSubclassOf<ACuttledog_Bubble_C>
---@field AttacksBeforeForceUnaggro int32
---@field Passivebubbling boolean
local ACuttledog_Base_BP_C = {}

---@param Damaged boolean
function ACuttledog_Base_BP_C:ActivateTrap(Damaged) end

function ACuttledog_Base_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ACuttledog_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ACuttledog_Base_BP_C:BlowBubble() end

function ACuttledog_Base_BP_C:BlowBubbleTimer() end

function ACuttledog_Base_BP_C:CuttleForceUnaggro() end

function ACuttledog_Base_BP_C:DoAggroIntro() end

function ACuttledog_Base_BP_C:DoIntroThing() end

function ACuttledog_Base_BP_C:DoMelee() end

function ACuttledog_Base_BP_C:DoOnAggroEvent() end

---@param EntryPoint int32
function ACuttledog_Base_BP_C:ExecuteUbergraph_Cuttledog_Base_BP(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ACuttledog_Base_BP_C:GetBubbleDamage(FB_DamageAttributeSet) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnBlendOut_362CCFB64D36C98E56A1B38DE50A26F1(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnBlendOut_670AA5A94B7E4A30C85C6EB0469F22C6(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnBlendOut_9A32C23449B2240BCF00E88FEE2966C0(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnBlendOut_E3E9DDA54237CB2BD73C91A6A2335A02(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnCompleted_362CCFB64D36C98E56A1B38DE50A26F1(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnCompleted_670AA5A94B7E4A30C85C6EB0469F22C6(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnCompleted_9A32C23449B2240BCF00E88FEE2966C0(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnCompleted_E3E9DDA54237CB2BD73C91A6A2335A02(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnInterrupted_362CCFB64D36C98E56A1B38DE50A26F1(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnInterrupted_670AA5A94B7E4A30C85C6EB0469F22C6(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnInterrupted_9A32C23449B2240BCF00E88FEE2966C0(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnInterrupted_E3E9DDA54237CB2BD73C91A6A2335A02(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyBegin_362CCFB64D36C98E56A1B38DE50A26F1(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyBegin_670AA5A94B7E4A30C85C6EB0469F22C6(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyBegin_9A32C23449B2240BCF00E88FEE2966C0(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyBegin_E3E9DDA54237CB2BD73C91A6A2335A02(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyEnd_362CCFB64D36C98E56A1B38DE50A26F1(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyEnd_670AA5A94B7E4A30C85C6EB0469F22C6(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyEnd_9A32C23449B2240BCF00E88FEE2966C0(NotifyName) end

---@param NotifyName FName
function ACuttledog_Base_BP_C:OnNotifyEnd_E3E9DDA54237CB2BD73C91A6A2335A02(NotifyName) end

function ACuttledog_Base_BP_C:ReceiveBeginPlay() end

function ACuttledog_Base_BP_C:StartWandering() end

function ACuttledog_Base_BP_C:StopWandering() end

function ACuttledog_Base_BP_C:UnAggrod() end
