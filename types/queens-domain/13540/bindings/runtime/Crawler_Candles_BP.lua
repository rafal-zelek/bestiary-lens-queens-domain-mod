---@meta

---@class ACrawler_Candles_BP_C : ACrawler_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp1 UGlowSpriteComp_C
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight UPointLightComponent
---@field CandleFlame8 UStaticMeshComponent
---@field CandleFlame7 UStaticMeshComponent
---@field CandleFlame6 UStaticMeshComponent
---@field CandleFlame5 UStaticMeshComponent
---@field CandleFlame4 UStaticMeshComponent
---@field CandleFlame3 UStaticMeshComponent
---@field CandleFlame2 UStaticMeshComponent
---@field CandleFlame1 UStaticMeshComponent
---@field CandleFlame UStaticMeshComponent
---@field FireballClass TSubclassOf<ACrawler_Fireball_C>
---@field FireballAttack boolean
---@field CurrentFireball ACrawler_Fireball_C
local ACrawler_Candles_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ACrawler_Candles_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ACrawler_Candles_BP_C:ExecuteUbergraph_Crawler_Candles_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ACrawler_Candles_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ACrawler_Candles_BP_C:OnBlendOut_8AAD2A96413F86B348E0338EF7DFBC96(NotifyName) end

---@param NotifyName FName
function ACrawler_Candles_BP_C:OnCompleted_8AAD2A96413F86B348E0338EF7DFBC96(NotifyName) end

---@param NotifyName FName
function ACrawler_Candles_BP_C:OnInterrupted_8AAD2A96413F86B348E0338EF7DFBC96(NotifyName) end

---@param NotifyName FName
function ACrawler_Candles_BP_C:OnNotifyBegin_8AAD2A96413F86B348E0338EF7DFBC96(NotifyName) end

---@param NotifyName FName
function ACrawler_Candles_BP_C:OnNotifyEnd_8AAD2A96413F86B348E0338EF7DFBC96(NotifyName) end

function ACrawler_Candles_BP_C:ReceiveBeginPlay() end

function ACrawler_Candles_BP_C:Stagger() end
