---@meta

---@class ABoner_Ranged_Base_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Arrow_InHand UEnemyAttachmentMesh_C
---@field Hat UEnemyAttachmentMesh_C
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field TurnRateByDistCurve UCurveFloat
local ABoner_Ranged_Base_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Ranged_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Ranged_Base_BP_C:CheckChase() end

---@param EntryPoint int32
function ABoner_Ranged_Base_BP_C:ExecuteUbergraph_Boner_Ranged_Base_BP(EntryPoint) end

function ABoner_Ranged_Base_BP_C:ForcedPotshot() end

function ABoner_Ranged_Base_BP_C:GetWeaponMesh() end

function ABoner_Ranged_Base_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnBlendOut_A60EC41C46E0A3067BD54987261C7F55(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnBlendOut_B6D54CA6406820685CDBF79F0FB6D646(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnCompleted_A60EC41C46E0A3067BD54987261C7F55(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnCompleted_B6D54CA6406820685CDBF79F0FB6D646(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnInterrupted_A60EC41C46E0A3067BD54987261C7F55(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnInterrupted_B6D54CA6406820685CDBF79F0FB6D646(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnNotifyBegin_A60EC41C46E0A3067BD54987261C7F55(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnNotifyBegin_B6D54CA6406820685CDBF79F0FB6D646(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnNotifyEnd_A60EC41C46E0A3067BD54987261C7F55(NotifyName) end

---@param NotifyName FName
function ABoner_Ranged_Base_BP_C:OnNotifyEnd_B6D54CA6406820685CDBF79F0FB6D646(NotifyName) end

---@param DeltaSeconds float
function ABoner_Ranged_Base_BP_C:ReceiveTick(DeltaSeconds) end

function ABoner_Ranged_Base_BP_C:StartWandering() end

ABoner_Ranged_Base_BP_C['Update Rotation'] = function(self) end
