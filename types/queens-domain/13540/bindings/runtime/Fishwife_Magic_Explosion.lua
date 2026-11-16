---@meta

---@class AFishwife_Magic_Explosion_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Charge UNiagaraComponent
---@field HitBox UCapsuleComponent
---@field Explosion UNiagaraComponent
---@field HitboxRoot USceneComponent
---@field SpawnerLoc USceneComponent
---@field Root USceneComponent
---@field Fog UENVControlData_C
---@field Damage FFB_DamageAttributeSet
---@field DidDamage FFishwife_Magic_Explosion_CDidDamage
---@field Des FFishwife_Magic_Explosion_CDes
local AFishwife_Magic_Explosion_C = {}

function AFishwife_Magic_Explosion_C:Cancel() end

function AFishwife_Magic_Explosion_C:Des__DelegateSignature() end

function AFishwife_Magic_Explosion_C:DidDamage__DelegateSignature() end

---@param EntryPoint int32
function AFishwife_Magic_Explosion_C:ExecuteUbergraph_Fishwife_Magic_Explosion(EntryPoint) end

function AFishwife_Magic_Explosion_C:Fire() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFishwife_Magic_Explosion_C:GetCurrentFogDAs(Alpha, Beta) end

function AFishwife_Magic_Explosion_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AFishwife_Magic_Explosion_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFishwife_Magic_Explosion_C:SetBetaFogDA(DA) end

function AFishwife_Magic_Explosion_C:UpdateFogDAValues() end
