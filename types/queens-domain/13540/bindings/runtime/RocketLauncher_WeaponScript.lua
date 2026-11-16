---@meta

---@class URocketLauncher_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sequence int32
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field ChargeSound UAudioComponent
---@field ChargeSoundLoop UAudioComponent
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
---@field StabDir FVector
---@field RumbleLoop UForceFeedbackComponent
local URocketLauncher_WeaponScript_C = {}

function URocketLauncher_WeaponScript_C:AltAttackPressed() end

function URocketLauncher_WeaponScript_C:AltAttackReleased() end

function URocketLauncher_WeaponScript_C:BeginDash() end

function URocketLauncher_WeaponScript_C:CancelAllAttacks() end

function URocketLauncher_WeaponScript_C:CancelCustomDash() end

function URocketLauncher_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function URocketLauncher_WeaponScript_C:ExecuteUbergraph_RocketLauncher_WeaponScript(EntryPoint) end

function URocketLauncher_WeaponScript_C:FireBullet() end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnBlendOut_7060DE8D46A60294052B3F8C1C2CFCDE(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnBlendOut_D16E7B9E4CA8F03D4DA5749A1D3AA524(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnCompleted_7060DE8D46A60294052B3F8C1C2CFCDE(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnCompleted_D16E7B9E4CA8F03D4DA5749A1D3AA524(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnInterrupted_7060DE8D46A60294052B3F8C1C2CFCDE(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnInterrupted_D16E7B9E4CA8F03D4DA5749A1D3AA524(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnNotifyBegin_7060DE8D46A60294052B3F8C1C2CFCDE(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnNotifyBegin_D16E7B9E4CA8F03D4DA5749A1D3AA524(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnNotifyEnd_7060DE8D46A60294052B3F8C1C2CFCDE(NotifyName) end

---@param NotifyName FName
function URocketLauncher_WeaponScript_C:OnNotifyEnd_D16E7B9E4CA8F03D4DA5749A1D3AA524(NotifyName) end

---@param NewAnimToPlay UAnimationAsset
function URocketLauncher_WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

---@param SpawnTransform FTransform
function URocketLauncher_WeaponScript_C:SpawnProjectile(SpawnTransform) end

function URocketLauncher_WeaponScript_C:StopRumbleLoop() end
