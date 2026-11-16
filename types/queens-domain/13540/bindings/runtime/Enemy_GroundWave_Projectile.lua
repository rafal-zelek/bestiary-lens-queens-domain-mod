---@meta

---@class AEnemy_GroundWave_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Visuals UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Damage FFB_DamageAttributeSet
---@field ['hit player already'] boolean
---@field WaveHitboxWidth float
---@field MaxWaveSize float
---@field Duration float
---@field FadeOutTime float
local AEnemy_GroundWave_Projectile_C = {}

---@param EntryPoint int32
function AEnemy_GroundWave_Projectile_C:ExecuteUbergraph_Enemy_GroundWave_Projectile(EntryPoint) end

---@param self2 TScriptInterface<IFB_DamageableInterface>
function AEnemy_GroundWave_Projectile_C:HitTarget(self2) end

function AEnemy_GroundWave_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnemy_GroundWave_Projectile_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function AEnemy_GroundWave_Projectile_C:SetOpacity(ParameterValue) end

function AEnemy_GroundWave_Projectile_C:isPlayerInDanger() end
