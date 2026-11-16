---@meta

---@class UDuckHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UDuckHammer_WeaponScript_C = {}

function UDuckHammer_WeaponScript_C:AltAttackPressed() end

function UDuckHammer_WeaponScript_C:AltAttackReleased() end

function UDuckHammer_WeaponScript_C:ApplyRegenEffect() end

---@param EntryPoint int32
function UDuckHammer_WeaponScript_C:ExecuteUbergraph_DuckHammer_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UDuckHammer_WeaponScript_C:OnBlendOut_9AA0127F4C1951D979D65D9CAD3E5440(NotifyName) end

---@param NotifyName FName
function UDuckHammer_WeaponScript_C:OnCompleted_9AA0127F4C1951D979D65D9CAD3E5440(NotifyName) end

---@param NotifyName FName
function UDuckHammer_WeaponScript_C:OnInterrupted_9AA0127F4C1951D979D65D9CAD3E5440(NotifyName) end

---@param NotifyName FName
function UDuckHammer_WeaponScript_C:OnNotifyBegin_9AA0127F4C1951D979D65D9CAD3E5440(NotifyName) end

---@param NotifyName FName
function UDuckHammer_WeaponScript_C:OnNotifyEnd_9AA0127F4C1951D979D65D9CAD3E5440(NotifyName) end
