---@meta

---@class ACrawler_Stone_BP_C : ACrawler_Candles_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ACrawler_Stone_BP_C = {}

---@param Damaged boolean
function ACrawler_Stone_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function ACrawler_Stone_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ACrawler_Stone_BP_C:ExecuteUbergraph_Crawler_Stone_BP(EntryPoint) end

---@param NotifyName FName
function ACrawler_Stone_BP_C:OnBlendOut_D3A23E0D4FCC0AFC2E52D0B1987E3534(NotifyName) end

---@param NotifyName FName
function ACrawler_Stone_BP_C:OnCompleted_D3A23E0D4FCC0AFC2E52D0B1987E3534(NotifyName) end

---@param NotifyName FName
function ACrawler_Stone_BP_C:OnInterrupted_D3A23E0D4FCC0AFC2E52D0B1987E3534(NotifyName) end

---@param NotifyName FName
function ACrawler_Stone_BP_C:OnNotifyBegin_D3A23E0D4FCC0AFC2E52D0B1987E3534(NotifyName) end

---@param NotifyName FName
function ACrawler_Stone_BP_C:OnNotifyEnd_D3A23E0D4FCC0AFC2E52D0B1987E3534(NotifyName) end

function ACrawler_Stone_BP_C:StatueifyCollision() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ACrawler_Stone_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ACrawler_Stone_BP_C:UnStatueifyCollision() end
