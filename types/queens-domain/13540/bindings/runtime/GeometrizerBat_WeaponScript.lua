---@meta

---@class UGeometrizerBat_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SlamMontage UAnimMontage
---@field SlamImpactSFX USoundBase
---@field SlamAOEDamage FFB_DamageAttributeSet
---@field DOingAlt boolean
---@field AltFireMult float
local UGeometrizerBat_WeaponScript_C = {}

function UGeometrizerBat_WeaponScript_C:AltAttackPressed() end

function UGeometrizerBat_WeaponScript_C:DoAltAttackDamage() end

---@param EntryPoint int32
function UGeometrizerBat_WeaponScript_C:ExecuteUbergraph_GeometrizerBat_WeaponScript(EntryPoint) end

function UGeometrizerBat_WeaponScript_C:GetAttackAOE() end

---@param NotifyName FName
function UGeometrizerBat_WeaponScript_C:OnBlendOut_23BC29D14AC4E7CDEBBBD7AAE90967AA(NotifyName) end

---@param NotifyName FName
function UGeometrizerBat_WeaponScript_C:OnCompleted_23BC29D14AC4E7CDEBBBD7AAE90967AA(NotifyName) end

---@param NotifyName FName
function UGeometrizerBat_WeaponScript_C:OnInterrupted_23BC29D14AC4E7CDEBBBD7AAE90967AA(NotifyName) end

---@param NotifyName FName
function UGeometrizerBat_WeaponScript_C:OnNotifyBegin_23BC29D14AC4E7CDEBBBD7AAE90967AA(NotifyName) end

---@param NotifyName FName
function UGeometrizerBat_WeaponScript_C:OnNotifyEnd_23BC29D14AC4E7CDEBBBD7AAE90967AA(NotifyName) end

---@param DeltaSeconds float
function UGeometrizerBat_WeaponScript_C:ReceiveTick(DeltaSeconds) end

---@param Base_Dmg FFB_DamageAttributeSet
---@param Suppressed_Dmg FFB_DamageAttributeSet
function UGeometrizerBat_WeaponScript_C:SuppressAudioForAltAttackDamage(Base_Dmg, Suppressed_Dmg) end
