---@meta

---@class AWarhammer_Projectile_C : ASpear_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Scene USceneComponent
local AWarhammer_Projectile_C = {}

---@param EntryPoint int32
function AWarhammer_Projectile_C:ExecuteUbergraph_Warhammer_Projectile(EntryPoint) end

function AWarhammer_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AWarhammer_Projectile_C:ReceiveTick(DeltaSeconds) end
