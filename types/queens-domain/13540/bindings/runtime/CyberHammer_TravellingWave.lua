---@meta

---@class ACyberHammer_TravellingWave_C : APoisonPiercer_TravellingWave_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastFramePos_0 FVector
---@field ['Damage To Apply'] FFB_DamageAttributeSet
---@field StartPoint_0 FVector
---@field EnemiesAlreadyHit TSet<AActor>
local ACyberHammer_TravellingWave_C = {}

function ACyberHammer_TravellingWave_C:DamageTrace() end

---@param EntryPoint int32
function ACyberHammer_TravellingWave_C:ExecuteUbergraph_CyberHammer_TravellingWave(EntryPoint) end

function ACyberHammer_TravellingWave_C:Hit() end

function ACyberHammer_TravellingWave_C:Initial() end

function ACyberHammer_TravellingWave_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ACyberHammer_TravellingWave_C:ReceiveTick(DeltaSeconds) end
