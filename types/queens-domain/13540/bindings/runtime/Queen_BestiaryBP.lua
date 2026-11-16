---@meta

---@class AQueen_BestiaryBP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractSphere USphereComponent
---@field SwordHitbox1 USphereComponent
---@field SwordHitbox3 USphereComponent
---@field SwordHitbox2 USphereComponent
---@field SwordHitbox USphereComponent
---@field PointLight1 UPointLightComponent
---@field PointLight UPointLightComponent
---@field OrbCameraTickGroup UTickGroupComponent
---@field SwordGlow3 UGlowSpriteComp_C
---@field SwordGlow2 UGlowSpriteComp_C
---@field SwordGlow1 UGlowSpriteComp_C
---@field SwordGlow UGlowSpriteComp_C
---@field Sword UEnemyAttachmentMesh_C
---@field HalfStaff UEnemySkeletalMeshAttachment_C
---@field AOEHitbox USphereComponent
---@field StaffGlow UGlowSpriteComp_C
---@field EyeGlow_L UGlowSpriteComp_C
---@field EyeGlow_R UGlowSpriteComp_C
---@field StaffBottomHitbox USphereComponent
---@field FullStaff UEnemySkeletalMeshAttachment_C
---@field QueenSpawner AQueen_Spawner_BP_C
---@field ArenaFloorCenter FVector
---@field TeleportEQ UEnvQueryInstanceBlueprintWrapper
---@field DoingPhaseAnim boolean
---@field IntroWasAbbrev boolean
---@field SpecialSwordTriggerHP float
local AQueen_BestiaryBP_C = {}

---@param EntryPoint int32
function AQueen_BestiaryBP_C:ExecuteUbergraph_Queen_BestiaryBP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AQueen_BestiaryBP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AQueen_BestiaryBP_C:Interact(PlayerInteracting) end
