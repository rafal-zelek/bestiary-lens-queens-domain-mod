---@meta

---@class UScythe_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChargeLoopSound UAudioComponent
---@field ['LocalDelta Seconds'] float
---@field ScytheThrown boolean
---@field ActiveProjectile AScythe_Projectile_C
local UScythe_WeaponScript_C = {}

function UScythe_WeaponScript_C:AltAttackPressed() end

function UScythe_WeaponScript_C:AltAttackReleased() end

function UScythe_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function UScythe_WeaponScript_C:ExecuteUbergraph_Scythe_WeaponScript(EntryPoint) end

---@param Tags FGameplayTagContainer
function UScythe_WeaponScript_C:GetAdditionalTags(Tags) end

---@param DurationMult float
---@param Strength float
---@param Duration float
function UScythe_WeaponScript_C:GetDiseaseProps(DurationMult, Strength, Duration) end

---@param Unlocked boolean
function UScythe_WeaponScript_C:IsUnlocked(Unlocked) end

function UScythe_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnBlendOut_5A5751F34966FD28321BFDB059BC0E5A(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnBlendOut_AB4DFB2C42241C6366FC41B837792BC0(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnCompleted_5A5751F34966FD28321BFDB059BC0E5A(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnCompleted_AB4DFB2C42241C6366FC41B837792BC0(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnInterrupted_5A5751F34966FD28321BFDB059BC0E5A(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnInterrupted_AB4DFB2C42241C6366FC41B837792BC0(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnNotifyBegin_5A5751F34966FD28321BFDB059BC0E5A(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnNotifyBegin_AB4DFB2C42241C6366FC41B837792BC0(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnNotifyEnd_5A5751F34966FD28321BFDB059BC0E5A(NotifyName) end

---@param NotifyName FName
function UScythe_WeaponScript_C:OnNotifyEnd_AB4DFB2C42241C6366FC41B837792BC0(NotifyName) end

function UScythe_WeaponScript_C:OnPrimaryAttackStartedCharging() end

function UScythe_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UScythe_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UScythe_WeaponScript_C:ReformInHand() end

function UScythe_WeaponScript_C:ScytheCaught() end
