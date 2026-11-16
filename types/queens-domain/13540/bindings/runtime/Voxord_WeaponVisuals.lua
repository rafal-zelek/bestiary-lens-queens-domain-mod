---@meta

---@class AVoxord_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Waves UStaticMeshComponent
---@field WavesParent USceneComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field ActivateAttackTL_Scale_E2E055744FD9BD7F060A4BAA066AFC6B float
---@field ActivateAttackTL_Opacity_E2E055744FD9BD7F060A4BAA066AFC6B float
---@field ActivateAttackTL__Direction_E2E055744FD9BD7F060A4BAA066AFC6B ETimelineDirection::Type
---@field ActivateAttackTL UTimelineComponent
---@field Charge float
local AVoxord_WeaponVisuals_C = {}

function AVoxord_WeaponVisuals_C:ActivateAttack() end

function AVoxord_WeaponVisuals_C:ActivateAttackTL__FinishedFunc() end

function AVoxord_WeaponVisuals_C:ActivateAttackTL__UpdateFunc() end

---@param EntryPoint int32
function AVoxord_WeaponVisuals_C:ExecuteUbergraph_Voxord_WeaponVisuals(EntryPoint) end

---@param DeltaSeconds float
function AVoxord_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
