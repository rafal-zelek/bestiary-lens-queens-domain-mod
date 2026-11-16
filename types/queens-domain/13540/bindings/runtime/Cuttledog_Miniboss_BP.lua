---@meta

---@class ACuttledog_Miniboss_BP_C : ACuttledog_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastBubble ACuttledog_Bubble_C
local ACuttledog_Miniboss_BP_C = {}

function ACuttledog_Miniboss_BP_C:BlowBubble() end

function ACuttledog_Miniboss_BP_C:CuttleForceUnaggro() end

function ACuttledog_Miniboss_BP_C:DoOnAggroEvent() end

---@param EntryPoint int32
function ACuttledog_Miniboss_BP_C:ExecuteUbergraph_Cuttledog_Miniboss_BP(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ACuttledog_Miniboss_BP_C:GetBubbleDamage(FB_DamageAttributeSet) end

---@param NotifyName FName
function ACuttledog_Miniboss_BP_C:OnBlendOut_0C520C6C46304C38730D2C90EA48829B(NotifyName) end

---@param NotifyName FName
function ACuttledog_Miniboss_BP_C:OnCompleted_0C520C6C46304C38730D2C90EA48829B(NotifyName) end

---@param NotifyName FName
function ACuttledog_Miniboss_BP_C:OnInterrupted_0C520C6C46304C38730D2C90EA48829B(NotifyName) end

---@param NotifyName FName
function ACuttledog_Miniboss_BP_C:OnNotifyBegin_0C520C6C46304C38730D2C90EA48829B(NotifyName) end

---@param NotifyName FName
function ACuttledog_Miniboss_BP_C:OnNotifyEnd_0C520C6C46304C38730D2C90EA48829B(NotifyName) end
