---@meta

---@class AWeaponUpgradeMachine_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field Screen UStaticMeshComponent
---@field Camera UCameraComponent
---@field InteractBox UBoxComponent
local AWeaponUpgradeMachine_C = {}

function AWeaponUpgradeMachine_C:ChangeSelection() end

function AWeaponUpgradeMachine_C:Closed() end

---@param EntryPoint int32
function AWeaponUpgradeMachine_C:ExecuteUbergraph_WeaponUpgradeMachine(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AWeaponUpgradeMachine_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param DynamicMat UMaterialInstanceDynamic
function AWeaponUpgradeMachine_C:GetScreenMat(DynamicMat) end

---@param PlayerInteracting AActor
function AWeaponUpgradeMachine_C:Interact(PlayerInteracting) end
