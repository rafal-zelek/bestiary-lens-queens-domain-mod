---@meta

---@class APoisonFishMan_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerCollision UBoxComponent
---@field dissolved_Dissolve_70662BF741C160CE374DB8A1235DE363 float
---@field dissolved__Direction_70662BF741C160CE374DB8A1235DE363 ETimelineDirection::Type
---@field dissolved UTimelineComponent
local APoisonFishMan_Projectile_C = {}

---@param EntryPoint int32
function APoisonFishMan_Projectile_C:ExecuteUbergraph_PoisonFishMan_Projectile(EntryPoint) end

function APoisonFishMan_Projectile_C:InstantlyDissolve() end

function APoisonFishMan_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APoisonFishMan_Projectile_C:ReceiveTick(DeltaSeconds) end

function APoisonFishMan_Projectile_C:dissolved__FinishedFunc() end

function APoisonFishMan_Projectile_C:dissolved__UpdateFunc() end
