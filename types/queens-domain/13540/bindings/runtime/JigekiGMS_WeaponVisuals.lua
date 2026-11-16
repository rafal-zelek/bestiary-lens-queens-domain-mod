---@meta

---@class AJigekiGMS_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Audio UAudioComponent
---@field JigemiGMS USkeletalMeshComponent
local AJigekiGMS_WeaponVisuals_C = {}

---@param EntryPoint int32
function AJigekiGMS_WeaponVisuals_C:ExecuteUbergraph_JigekiGMS_WeaponVisuals(EntryPoint) end

function AJigekiGMS_WeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJigekiGMS_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
