---@meta

---@class AWeaponVisuals_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BaseJigglePos USceneComponent
---@field JigglePos USceneComponent
---@field FS_Jiggle UFS_JiggleComponent
---@field DefaultSceneRoot USceneComponent
---@field LevelAnimation_LevelWaveIntensity_7C1C2248484E04BF701FC387693D9338 float
---@field LevelAnimation_LevelWave_7C1C2248484E04BF701FC387693D9338 float
---@field LevelAnimation_LevelFlash_7C1C2248484E04BF701FC387693D9338 float
---@field LevelAnimation__Direction_7C1C2248484E04BF701FC387693D9338 ETimelineDirection::Type
---@field LevelAnimation UTimelineComponent
---@field Script UWeaponScriptBase_C
---@field ['Player Ref'] AFS_PlayerChar_C
---@field VisualComps TArray<UPrimitiveComponent>
---@field EnableJiggle boolean
---@field ['Force Left Hand Projection'] boolean
---@field SocketComp UMeshComponent
---@field VisualHeight float
---@field ChargedGlows TArray<FWeaponChargedGlowList>
---@field EvolutionAnimFinished FWeaponVisuals_CEvolutionAnimFinished
---@field GlowParticles UNiagaraSystem
---@field ChargesHidden boolean
local AWeaponVisuals_C = {}

function AWeaponVisuals_C:DoEvolutionAnim() end

function AWeaponVisuals_C:DoLevelUpAnimation() end

function AWeaponVisuals_C:EvolutionAnimFinished__DelegateSignature() end

---@param EntryPoint int32
function AWeaponVisuals_C:ExecuteUbergraph_WeaponVisuals(EntryPoint) end

---@param Loc FTransform
function AWeaponVisuals_C:GetEVoItemSpawnLoc(Loc) end

---@param Meshes TArray<UMeshComponent>
function AWeaponVisuals_C:GetMeshes(Meshes) end

function AWeaponVisuals_C:GetSocketList() end

---@param Name FName
---@param Transform FTransform
function AWeaponVisuals_C:GetSocketLocation(Name, Transform) end

function AWeaponVisuals_C:InitializeChargedGlows() end

function AWeaponVisuals_C:LevelAnimation__FinishedFunc() end

function AWeaponVisuals_C:LevelAnimation__UpdateFunc() end

function AWeaponVisuals_C:ReceiveBeginPlay() end

function AWeaponVisuals_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AWeaponVisuals_C:ReceiveTick(DeltaSeconds) end

---@param Script UWeaponScriptBase_C
function AWeaponVisuals_C:Refresh(Script) end

---@param ChargeIndex int32
---@param System UNiagaraComponent
function AWeaponVisuals_C:RegisterChargedGlow(ChargeIndex, System) end

---@param SocketName FName
function AWeaponVisuals_C:RegisterGemChargeIfValid(SocketName) end

---@param Mesh UMeshComponent
---@param ChargeVal float
function AWeaponVisuals_C:SetChargeParamOnWeaponMeshMat(Mesh, ChargeVal) end

function AWeaponVisuals_C:UpdateJiggle() end

function AWeaponVisuals_C:UserConstructionScript() end

AWeaponVisuals_C['Update Charge Visuals'] = function(self) end
