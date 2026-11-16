---@meta

---@class ABombLizard_BP_C : ADefault_Lizer_01_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BombMesh UEnemyAttachmentMesh_C
local ABombLizard_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABombLizard_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABombLizard_BP_C:CheckForStuckPath() end

---@param EntryPoint int32
function ABombLizard_BP_C:ExecuteUbergraph_BombLizard_BP(EntryPoint) end

function ABombLizard_BP_C:InitDeathFade() end

---@param NotifyName FName
function ABombLizard_BP_C:OnBlendOut_B836E5F24C4FA5ED0C2EC9849864219A(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnBlendOut_F11CF0564D8E884543C092BCF69BA06E(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnCompleted_B836E5F24C4FA5ED0C2EC9849864219A(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnCompleted_F11CF0564D8E884543C092BCF69BA06E(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnInterrupted_B836E5F24C4FA5ED0C2EC9849864219A(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnInterrupted_F11CF0564D8E884543C092BCF69BA06E(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnNotifyBegin_B836E5F24C4FA5ED0C2EC9849864219A(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnNotifyBegin_F11CF0564D8E884543C092BCF69BA06E(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnNotifyEnd_B836E5F24C4FA5ED0C2EC9849864219A(NotifyName) end

---@param NotifyName FName
function ABombLizard_BP_C:OnNotifyEnd_F11CF0564D8E884543C092BCF69BA06E(NotifyName) end

function ABombLizard_BP_C:ReceiveBeginPlay() end

function ABombLizard_BP_C:Suicide() end

function ABombLizard_BP_C:ThrowAttack() end
