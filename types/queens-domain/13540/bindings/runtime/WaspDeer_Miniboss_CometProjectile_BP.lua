---@meta

---@class AWaspDeer_Miniboss_CometProjectile_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field ExplosionHitbox USphereComponent
---@field StaticMesh UStaticMeshComponent
---@field WaspDeer_Miniboss_CometTrail UNiagaraComponent
---@field Visuals USceneComponent
---@field DefaultSceneRoot USceneComponent
---@field StrikeAnim_Cometfall_9B48246A40BD36F6F81E2EB0BC83585A float
---@field StrikeAnim_WarningLightIntensity_9B48246A40BD36F6F81E2EB0BC83585A float
---@field StrikeAnim__Direction_9B48246A40BD36F6F81E2EB0BC83585A ETimelineDirection::Type
---@field StrikeAnim UTimelineComponent
---@field Damage FFB_DamageAttributeSet
---@field WarningLightIntensity float
---@field StartRockRotation FRotator
local AWaspDeer_Miniboss_CometProjectile_BP_C = {}

---@param PSystem UNiagaraComponent
function AWaspDeer_Miniboss_CometProjectile_BP_C:BndEvt__WaspDeer_Miniboss_ComentProjectile_WaspDeer_Miniboss_CometTrail_K2Node_ComponentBoundEvent_0_OnNiagaraSystemFinished__DelegateSignature(PSystem) end

---@param EntryPoint int32
function AWaspDeer_Miniboss_CometProjectile_BP_C:ExecuteUbergraph_WaspDeer_Miniboss_CometProjectile_BP(EntryPoint) end

function AWaspDeer_Miniboss_CometProjectile_BP_C:GetProjectileStartPos() end

function AWaspDeer_Miniboss_CometProjectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AWaspDeer_Miniboss_CometProjectile_BP_C:ReceiveTick(DeltaSeconds) end

function AWaspDeer_Miniboss_CometProjectile_BP_C:StrikeAnim__FinishedFunc() end

function AWaspDeer_Miniboss_CometProjectile_BP_C:StrikeAnim__StartMove__EventFunc() end

function AWaspDeer_Miniboss_CometProjectile_BP_C:StrikeAnim__UpdateFunc() end
