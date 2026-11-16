---@meta

---@class ABoner_Standard_Spear_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hat UEnemyAttachmentMesh_C
---@field Shield1 UEnemyAttachmentMesh_C
---@field CurrentAttackIsShield boolean
local ABoner_Standard_Spear_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Standard_Spear_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ABoner_Standard_Spear_C:ExecuteUbergraph_Boner_Standard_Spear(EntryPoint) end

---@param NotifyName FName
function ABoner_Standard_Spear_C:OnBlendOut_EF221A6B4746BB0A937620B72CBF4124(NotifyName) end

---@param NotifyName FName
function ABoner_Standard_Spear_C:OnCompleted_EF221A6B4746BB0A937620B72CBF4124(NotifyName) end

---@param NotifyName FName
function ABoner_Standard_Spear_C:OnInterrupted_EF221A6B4746BB0A937620B72CBF4124(NotifyName) end

---@param NotifyName FName
function ABoner_Standard_Spear_C:OnNotifyBegin_EF221A6B4746BB0A937620B72CBF4124(NotifyName) end

---@param NotifyName FName
function ABoner_Standard_Spear_C:OnNotifyEnd_EF221A6B4746BB0A937620B72CBF4124(NotifyName) end
