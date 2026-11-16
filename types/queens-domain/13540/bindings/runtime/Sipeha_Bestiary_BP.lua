---@meta

---@class ASipeha_Bestiary_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MeshRelativeLoc FVector
---@field RemainingOrbsToShoot int32
---@field EmergencyLightning boolean
local ASipeha_Bestiary_BP_C = {}

function ASipeha_Bestiary_BP_C:CheckForEmergencyLightning() end

---@param EntryPoint int32
function ASipeha_Bestiary_BP_C:ExecuteUbergraph_Sipeha_Bestiary_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASipeha_Bestiary_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ASipeha_Bestiary_BP_C:Interact(PlayerInteracting) end

---@param AttackIndex int32
---@param BaseWeight float
function ASipeha_Bestiary_BP_C:ModifyAttackWeight(AttackIndex, BaseWeight) end

---@param Location FVector
function ASipeha_Bestiary_BP_C:SpawnLightningStrike(Location) end

function ASipeha_Bestiary_BP_C:UpdateMeshSmoothing() end
