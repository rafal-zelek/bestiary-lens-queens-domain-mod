---@meta

---@class ACrawler_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field TrapMontage UAnimMontage
local ACrawler_Base_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function ACrawler_Base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param EntryPoint int32
function ACrawler_Base_BP_C:ExecuteUbergraph_Crawler_Base_BP(EntryPoint) end

function ACrawler_Base_BP_C:InitDeathFade() end

---@param DeltaSeconds float
function ACrawler_Base_BP_C:ReceiveTick(DeltaSeconds) end
