---@meta

---@class AQueen_Spawner_BP_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DarknessChute UStaticMeshComponent
---@field OrbHellSlime USkeletalMeshComponent
---@field PostProcess UPostProcessComponent
---@field DepthFog UStaticMeshComponent
---@field EyeGlow_L UGlowSpriteComp_C
---@field EyeGlow_R UGlowSpriteComp_C
---@field Niagara1 UNiagaraComponent
---@field Niagara UNiagaraComponent
---@field OrbGrabCutsceneCam USceneCaptureComponent2D
---@field Queen USkeletalMeshComponent
---@field OrbAttackArea UStaticMeshComponent
---@field OrbFXRoot USceneComponent
---@field ArenaHeightRef UBillboardComponent
---@field Throne AQueen_Throne_BP_C
---@field Door AQueen_Door_Bp_C
---@field DoorBlocker AActor
local AQueen_Spawner_BP_C = {}

---@param EntryPoint int32
function AQueen_Spawner_BP_C:ExecuteUbergraph_Queen_Spawner_BP(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AQueen_Spawner_BP_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AQueen_Spawner_BP_C:OnEnemyAggrod() end

function AQueen_Spawner_BP_C:PlayerTeleportedOutOfBossArena() end

function AQueen_Spawner_BP_C:ReceiveBeginPlay() end

function AQueen_Spawner_BP_C:SpawnEnemyWithConfigApplied() end

function AQueen_Spawner_BP_C:UserConstructionScript() end

---@param ResetSpawn boolean
---@param Vis_Checks_Passed boolean
AQueen_Spawner_BP_C['Check Spawn Visibility'] = function(self, ResetSpawn, Vis_Checks_Passed) end
