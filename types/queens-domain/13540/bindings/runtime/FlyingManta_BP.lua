---@meta

---@class AFlyingManta_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_6_0_Pogress_D656A2274DD301D5E24DA98E60225C8A float
---@field Timeline_6_0__Direction_D656A2274DD301D5E24DA98E60225C8A ETimelineDirection::Type
---@field Timeline_6_0 UTimelineComponent
---@field ActiveLaser boolean
---@field LaserTargetStart FVector
---@field LaserTargetEnd FVector
---@field CurrentLaser UNiagaraComponent
---@field LaserDamageActive boolean
---@field CurrentLaserTarget FVector
---@field TrackingStrength float
---@field BeamPFX UNiagaraSystem
---@field AlreadyHitPlayer boolean
---@field CurrentLaserSound UAudioComponent
local AFlyingManta_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFlyingManta_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AFlyingManta_BP_C:CancelLaser() end

---@param EntryPoint int32
function AFlyingManta_BP_C:ExecuteUbergraph_FlyingManta_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFlyingManta_BP_C:Kill(NoRewards, SupressDeathSound) end

function AFlyingManta_BP_C:LaserAttack() end

---@param NotifyName FName
function AFlyingManta_BP_C:OnBlendOut_0732CCE94A350BF2B06FCC8F9947B87B(NotifyName) end

---@param NotifyName FName
function AFlyingManta_BP_C:OnCompleted_0732CCE94A350BF2B06FCC8F9947B87B(NotifyName) end

---@param NotifyName FName
function AFlyingManta_BP_C:OnInterrupted_0732CCE94A350BF2B06FCC8F9947B87B(NotifyName) end

---@param NotifyName FName
function AFlyingManta_BP_C:OnNotifyBegin_0732CCE94A350BF2B06FCC8F9947B87B(NotifyName) end

---@param NotifyName FName
function AFlyingManta_BP_C:OnNotifyEnd_0732CCE94A350BF2B06FCC8F9947B87B(NotifyName) end

---@param Duration float
function AFlyingManta_BP_C:Paralyze(Duration) end

function AFlyingManta_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFlyingManta_BP_C:ReceiveTick(DeltaSeconds) end

function AFlyingManta_BP_C:Stagger() end

function AFlyingManta_BP_C:StartLaser() end

function AFlyingManta_BP_C:StartLaserDamage() end

function AFlyingManta_BP_C:Timeline_6_0__FinishedFunc() end

function AFlyingManta_BP_C:Timeline_6_0__StartLasering__EventFunc() end

function AFlyingManta_BP_C:Timeline_6_0__UpdateFunc() end

function AFlyingManta_BP_C:UserConstructionScript() end

---@param Start FVector
---@param End FVector
AFlyingManta_BP_C['Calculate Laser Targets'] = function(self, Start, End) end

---@param CanSeePlayer boolean
AFlyingManta_BP_C['Can See Target Player'] = function(self, CanSeePlayer) end

AFlyingManta_BP_C['Do Laser Damage Trace and Update PFX'] = function(self) end

AFlyingManta_BP_C['Update Rotation'] = function(self) end
