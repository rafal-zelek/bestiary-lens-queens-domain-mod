---@meta

---@class AGolem_Tree_BP_C : AGolem_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh4 UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh3 UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh2 UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh1 UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field Arm_R_Hitbox10 USphereComponent
---@field Arm_R_Hitbox9 USphereComponent
---@field Arm_R_Hitbox8 USphereComponent
---@field Arm_R_Hitbox7 USphereComponent
---@field Arm_R_Hitbox6 USphereComponent
---@field Arm_R_Hitbox5 USphereComponent
---@field Arm_R_Hitbox4 USphereComponent
---@field Arm_R_Hitbox3 USphereComponent
---@field Arm_R_Hitbox2 USphereComponent
---@field Arm_R_Hitbox1 USphereComponent
---@field Arm_R_Hitbox USphereComponent
---@field Arm_L_Hitbox10 USphereComponent
---@field Arm_L_Hitbox9 USphereComponent
---@field Arm_L_Hitbox8 USphereComponent
---@field Arm_L_Hitbox7 USphereComponent
---@field Arm_L_Hitbox6 USphereComponent
---@field Arm_L_Hitbox5 USphereComponent
---@field Arm_L_Hitbox4 USphereComponent
---@field Arm_L_Hitbox3 USphereComponent
---@field Arm_L_Hitbox2 USphereComponent
---@field Arm_L_Hitbox1 USphereComponent
---@field Arm_L_Hitbox USphereComponent
local AGolem_Tree_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AGolem_Tree_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AGolem_Tree_BP_C:ExecuteUbergraph_Golem_Tree_BP(EntryPoint) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnBlendOut_930FE98649AF1469F0C2808BE6D17E13(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnBlendOut_E1FA1CAA42C19D3396E8C68EFFACE582(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnCompleted_930FE98649AF1469F0C2808BE6D17E13(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnCompleted_E1FA1CAA42C19D3396E8C68EFFACE582(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnInterrupted_930FE98649AF1469F0C2808BE6D17E13(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnInterrupted_E1FA1CAA42C19D3396E8C68EFFACE582(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnNotifyBegin_930FE98649AF1469F0C2808BE6D17E13(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnNotifyBegin_E1FA1CAA42C19D3396E8C68EFFACE582(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnNotifyEnd_930FE98649AF1469F0C2808BE6D17E13(NotifyName) end

---@param NotifyName FName
function AGolem_Tree_BP_C:OnNotifyEnd_E1FA1CAA42C19D3396E8C68EFFACE582(NotifyName) end

function AGolem_Tree_BP_C:TickHitboxes() end
