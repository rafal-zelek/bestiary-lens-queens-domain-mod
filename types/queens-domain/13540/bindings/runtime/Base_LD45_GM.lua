---@meta

---@class ABase_LD45_GM_C : AFS_CommonGM_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TickGroup UTickGroupComponent
---@field FS_StatsContainer UFS_StatsContainer
---@field HitStopTL_TD_6C2C32B5484875A2B3ED06A22FA4E6F8 float
---@field HitStopTL__Direction_6C2C32B5484875A2B3ED06A22FA4E6F8 ETimelineDirection::Type
---@field HitStopTL UTimelineComponent
---@field InHiddenWorld boolean
---@field MainWorld_Nav ULevelStreaming
---@field HiddenWorld ULevelStreaming
---@field ['hidden World nav'] FString
---@field HiddenWorld_Nav ULevelStreamingDynamic
---@field PauseTD boolean
---@field HitStopTD float
---@field ['Base TD'] float
---@field ['TD Modifiers'] TMap<TimeDilationModifierType::Type, float>
---@field FadeOutDirectionalAmbientLight FBase_LD45_GM_CFadeOutDirectionalAmbientLight
---@field FadeInDirectionalAmbientLight FBase_LD45_GM_CFadeInDirectionalAmbientLight
---@field LoadedItems TSet<UObject>
---@field LoadedEnemies TArray<UEnemyData_C>
---@field BestiaryTotal int32
---@field BestiaryEnemies TArray<UEnemyData_C>
---@field CachedPoisonResistance float
---@field CachedWeakenResistance float
---@field CachedDiseaseResistance float
---@field CachedBindingResistance float
---@field CachedHeavyResistance float
---@field CachedStickyResistance float
---@field CachedMagicPoisonResistance float
---@field CachedDefense float
---@field CachedMagicRate float
---@field CachedMoveSpeed float
---@field CachedAttackPower float
---@field CachedBindingDegen float
---@field CachedLightRadius float
---@field PlayerStatComp UFS_StatsContainer
---@field EnemyPauseTDLEnabled boolean
---@field BestiaryEnemiesNumbers TMap<UEnemyData_C, int32>
---@field DemoEnemyList TArray<UEnemyData_C>
---@field CachedLocationData TArray<UFS_LocationData>
---@field LocalTD float
---@field DirLightShouldBeFaded boolean
---@field DirLightToControlFading ADirectionalLight
---@field StartIntensity float
local ABase_LD45_GM_C = {}

function ABase_LD45_GM_C:BndEvt__Base_LD45_GM_TickGroup_K2Node_ComponentBoundEvent_0_Tick__DelegateSignature() end

---@param Loaded TArray<UObject>
function ABase_LD45_GM_C:Completed_567A55DF443952B15B4E4E89E30AD172(Loaded) end

---@param Loaded TArray<UObject>
function ABase_LD45_GM_C:Completed_6B130C014399797247DFB48DA23DEFD5(Loaded) end

---@param Loaded TArray<UObject>
function ABase_LD45_GM_C:Completed_FFD496794F7F04289D4139BE561F70BA(Loaded) end

---@param EntryPoint int32
function ABase_LD45_GM_C:ExecuteUbergraph_Base_LD45_GM(EntryPoint) end

function ABase_LD45_GM_C:FadeInDirLight() end

function ABase_LD45_GM_C:FadeInDirectionalAmbientLight__DelegateSignature() end

function ABase_LD45_GM_C:FadeOutDirLight() end

function ABase_LD45_GM_C:FadeOutDirectionalAmbientLight__DelegateSignature() end

---@param NewParam ADirectionalLight
function ABase_LD45_GM_C:GetDirLightToControl(NewParam) end

---@param Stats UFS_StatsContainer
function ABase_LD45_GM_C:GetPlayerStatsComp(Stats) end

function ABase_LD45_GM_C:HitStopTL__FinishedFunc() end

function ABase_LD45_GM_C:HitStopTL__UpdateFunc() end

---@param Paused boolean
function ABase_LD45_GM_C:IsEnemyPauseTDLEnabled(Paused) end

---@param Paused boolean
function ABase_LD45_GM_C:IsPausedTimeDilationEnabled(Paused) end

function ABase_LD45_GM_C:RecacheStats() end

function ABase_LD45_GM_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ABase_LD45_GM_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function ABase_LD45_GM_C:ReceiveTick(DeltaSeconds) end

function ABase_LD45_GM_C:RecreateItemDrops() end

---@param Object UObject
function ABase_LD45_GM_C:RegisterEnemyData(Object) end

---@param Pause boolean
function ABase_LD45_GM_C:SetPauseTimeDilation(Pause) end

---@param Paused boolean
function ABase_LD45_GM_C:SetPausedEnemyTimeDilation(Paused) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function ABase_LD45_GM_C:SortEnemies(ObjectA, ObjectB, Result) end

---@param NewPlayer AController
---@param SpawnTransform FTransform
function ABase_LD45_GM_C:SpawnDefaultPawnAtTransform(NewPlayer, SpawnTransform) end

---@param DropType TSubclassOf<ACoreItemPickupActor_C>
---@param SpawnTransform FTransform
---@param skip_drop_save boolean
---@param UseSaveLocationOveride boolean
---@param SaveLocationOverride FVector
---@param Actor ACoreItemPickupActor_C
function ABase_LD45_GM_C:SpawnDropActor(DropType, SpawnTransform, skip_drop_save, UseSaveLocationOveride, SaveLocationOverride, Actor) end

function ABase_LD45_GM_C:TabulateEnemyTypes() end

function ABase_LD45_GM_C:TickPlayTime() end

function ABase_LD45_GM_C:TickTime() end

function ABase_LD45_GM_C:TickTitleTime() end

---@param HitStopDuration float
function ABase_LD45_GM_C:TriggerHitStop(HitStopDuration) end

ABase_LD45_GM_C['Calculate and Apply Full TD'] = function(self) end

ABase_LD45_GM_C['Cancel HitStop'] = function(self) end

ABase_LD45_GM_C['Recache Attack Defense And Light Radius'] = function(self) end

ABase_LD45_GM_C['Recalculate Global TD'] = function(self) end

---@param Asset_List TArray<FPrimaryAssetId>
---@param Stuff_That_Needs_Loading TArray<FPrimaryAssetId>
ABase_LD45_GM_C['Register Loaded Enemies and List Loads Needed'] = function(self, Asset_List, Stuff_That_Needs_Loading) end

---@param Base_Time_Dilation float
ABase_LD45_GM_C['Set BaseTimeDilation'] = function(self, Base_Time_Dilation) end

---@param Multiplier float
---@param Type TimeDilationModifierType::Type
ABase_LD45_GM_C['Set Time Dilation Modifier'] = function(self, Multiplier, Type) end
