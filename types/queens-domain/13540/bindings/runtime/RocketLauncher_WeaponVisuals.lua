---@meta

---@class ARocketLauncher_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RocketLauncher_VFXShell UStaticMeshComponent
---@field RocketLauncher_Mesh USkeletalMeshComponent
---@field ChargeFadeIn_Fade_14DE21FB4C820B8D6C3F91859CE4CD55 float
---@field ChargeFadeIn__Direction_14DE21FB4C820B8D6C3F91859CE4CD55 ETimelineDirection::Type
---@field ChargeFadeIn UTimelineComponent
local ARocketLauncher_WeaponVisuals_C = {}

function ARocketLauncher_WeaponVisuals_C:ChargeFadeIn__FinishedFunc() end

function ARocketLauncher_WeaponVisuals_C:ChargeFadeIn__UpdateFunc() end

---@param EntryPoint int32
function ARocketLauncher_WeaponVisuals_C:ExecuteUbergraph_RocketLauncher_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function ARocketLauncher_WeaponVisuals_C:GetMeshes(Meshes) end

function ARocketLauncher_WeaponVisuals_C:ReceiveBeginPlay() end

function ARocketLauncher_WeaponVisuals_C:StartCharge() end

function ARocketLauncher_WeaponVisuals_C:StopCharge() end
