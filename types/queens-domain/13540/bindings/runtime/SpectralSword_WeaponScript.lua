---@meta

---@class USpectralSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackMult int32
---@field ['Alt Attack Running'] boolean
---@field CurrentFSMoveisForward boolean
---@field DashSpeedMult float
---@field CurrentFireManager ASpectralSword_FireManager_BP_C
---@field DidInAirDashAlready boolean
---@field LastPuddle FVector
local USpectralSword_WeaponScript_C = {}

function USpectralSword_WeaponScript_C:AltAttackPressed() end

function USpectralSword_WeaponScript_C:CancelCustomDash() end

function USpectralSword_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function USpectralSword_WeaponScript_C:ExecuteUbergraph_SpectralSword_WeaponScript(EntryPoint) end

---@param AnimBP UAnimInstance
function USpectralSword_WeaponScript_C:GetAnimBP_Fast(AnimBP) end

function USpectralSword_WeaponScript_C:Landed() end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function USpectralSword_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

function USpectralSword_WeaponScript_C:ReceiveBeginPlay() end

function USpectralSword_WeaponScript_C:TrySpawnFirePuddle() end
