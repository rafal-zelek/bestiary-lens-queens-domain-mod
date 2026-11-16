---@meta

---@class ASpider_Stone_BP_C : ASpider_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ASpider_Stone_BP_C = {}

---@param Damaged boolean
function ASpider_Stone_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function ASpider_Stone_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASpider_Stone_BP_C:ExecuteUbergraph_Spider_Stone_BP(EntryPoint) end

---@param NotifyName FName
function ASpider_Stone_BP_C:OnBlendOut_82ADD0A343B26EA66309A99A692C5A76(NotifyName) end

---@param NotifyName FName
function ASpider_Stone_BP_C:OnCompleted_82ADD0A343B26EA66309A99A692C5A76(NotifyName) end

---@param NotifyName FName
function ASpider_Stone_BP_C:OnInterrupted_82ADD0A343B26EA66309A99A692C5A76(NotifyName) end

---@param NotifyName FName
function ASpider_Stone_BP_C:OnNotifyBegin_82ADD0A343B26EA66309A99A692C5A76(NotifyName) end

---@param NotifyName FName
function ASpider_Stone_BP_C:OnNotifyEnd_82ADD0A343B26EA66309A99A692C5A76(NotifyName) end

function ASpider_Stone_BP_C:StatueifyCollision() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ASpider_Stone_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ASpider_Stone_BP_C:UnStatueifyCollision() end
