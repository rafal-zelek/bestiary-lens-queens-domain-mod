---@meta

---@class APoisonPiercer_TravellingWave_C : AGroundTravellingProjectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PoisonPiercer_Wave_Trail UNiagaraComponent
---@field LastFramePos FVector
---@field StartPoint FVector
---@field AlreadyHitActors TSet<AActor>
---@field Active boolean
---@field EndOfLifeSpeed float
---@field StartSpeed float
---@field LifeTime float
local APoisonPiercer_TravellingWave_C = {}

---@param DestroyedActor AActor
function APoisonPiercer_TravellingWave_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function APoisonPiercer_TravellingWave_C:ExecuteUbergraph_PoisonPiercer_TravellingWave(EntryPoint) end

function APoisonPiercer_TravellingWave_C:Hit() end

function APoisonPiercer_TravellingWave_C:Kill() end

function APoisonPiercer_TravellingWave_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APoisonPiercer_TravellingWave_C:ReceiveTick(DeltaSeconds) end
