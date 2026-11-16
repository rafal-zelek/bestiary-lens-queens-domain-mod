---@meta

---@class ASpider_Metal_BP_C : ASpider_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LightningHitbox USphereComponent
local ASpider_Metal_BP_C = {}

function ASpider_Metal_BP_C:DoRangedAttack() end

---@param EntryPoint int32
function ASpider_Metal_BP_C:ExecuteUbergraph_Spider_Metal_BP(EntryPoint) end

---@param StartLoc FVector
---@param Loc FVector
function ASpider_Metal_BP_C:FormLightningTargetlocation(StartLoc, Loc) end

---@param NotifyName FName
function ASpider_Metal_BP_C:OnBlendOut_D28407A54E01FB79691B519517F816BB(NotifyName) end

---@param NotifyName FName
function ASpider_Metal_BP_C:OnCompleted_D28407A54E01FB79691B519517F816BB(NotifyName) end

---@param NotifyName FName
function ASpider_Metal_BP_C:OnInterrupted_D28407A54E01FB79691B519517F816BB(NotifyName) end

---@param NotifyName FName
function ASpider_Metal_BP_C:OnNotifyBegin_D28407A54E01FB79691B519517F816BB(NotifyName) end

---@param NotifyName FName
function ASpider_Metal_BP_C:OnNotifyEnd_D28407A54E01FB79691B519517F816BB(NotifyName) end
