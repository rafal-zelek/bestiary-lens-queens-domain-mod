---@meta

---@class AChickilus_Miniboss_BP_C : AChickilus_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AOEHitbox USphereComponent
local AChickilus_Miniboss_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AChickilus_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AChickilus_Miniboss_BP_C:EndEggUp() end

---@param EntryPoint int32
function AChickilus_Miniboss_BP_C:ExecuteUbergraph_Chickilus_Miniboss_BP(EntryPoint) end

---@param NotifyName FName
function AChickilus_Miniboss_BP_C:OnBlendOut_2610608F4EC91887B90B5382700066AB(NotifyName) end

---@param NotifyName FName
function AChickilus_Miniboss_BP_C:OnCompleted_2610608F4EC91887B90B5382700066AB(NotifyName) end

---@param NotifyName FName
function AChickilus_Miniboss_BP_C:OnInterrupted_2610608F4EC91887B90B5382700066AB(NotifyName) end

---@param NotifyName FName
function AChickilus_Miniboss_BP_C:OnNotifyBegin_2610608F4EC91887B90B5382700066AB(NotifyName) end

---@param NotifyName FName
function AChickilus_Miniboss_BP_C:OnNotifyEnd_2610608F4EC91887B90B5382700066AB(NotifyName) end

---@param StartingPosition float
AChickilus_Miniboss_BP_C['Begin Egg Up'] = function(self, StartingPosition) end
