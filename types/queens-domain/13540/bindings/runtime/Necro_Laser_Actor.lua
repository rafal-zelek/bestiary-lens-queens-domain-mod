---@meta

---@class ANecro_Laser_Actor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Necronomicon_BloodLaser_Cue UAudioComponent
---@field ChargeFC UNiagaraComponent
---@field HitBox UCapsuleComponent
---@field Niagara UNiagaraComponent
---@field HitboxRoot USceneComponent
---@field SpawnerLoc USceneComponent
---@field Root USceneComponent
---@field UpperPos FVector
---@field LowerPos FVector
---@field Fog UENVControlData_C
---@field StartingScale FVector
---@field LaserHeight float
---@field PreviewLaser boolean
---@field TestMode boolean
---@field Damage FFB_DamageAttributeSet
---@field DelayBeforeFiring float
---@field DidDamage FNecro_Laser_Actor_CDidDamage
---@field Des FNecro_Laser_Actor_CDes
---@field SnapToPlayerOnStart boolean
local ANecro_Laser_Actor_C = {}

function ANecro_Laser_Actor_C:ActivateLaser() end

function ANecro_Laser_Actor_C:CancelLaser() end

function ANecro_Laser_Actor_C:ConfigureLaser() end

function ANecro_Laser_Actor_C:DeactivateLaser() end

function ANecro_Laser_Actor_C:Des__DelegateSignature() end

function ANecro_Laser_Actor_C:DidDamage__DelegateSignature() end

---@param EntryPoint int32
function ANecro_Laser_Actor_C:ExecuteUbergraph_Necro_Laser_Actor(EntryPoint) end

function ANecro_Laser_Actor_C:Fire() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ANecro_Laser_Actor_C:GetCurrentFogDAs(Alpha, Beta) end

function ANecro_Laser_Actor_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function ANecro_Laser_Actor_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ANecro_Laser_Actor_C:SetBetaFogDA(DA) end

function ANecro_Laser_Actor_C:UpdateFogDAValues() end

function ANecro_Laser_Actor_C:UserConstructionScript() end
