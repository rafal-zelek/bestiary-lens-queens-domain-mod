---@meta

---@class ABoner_Stone_Archer_BP_C : ABoner_Ranged_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field bow UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
local ABoner_Stone_Archer_BP_C = {}

---@param Damaged boolean
function ABoner_Stone_Archer_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function ABoner_Stone_Archer_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABoner_Stone_Archer_BP_C:ExecuteUbergraph_Boner_Stone_Archer_BP(EntryPoint) end

function ABoner_Stone_Archer_BP_C:GetWeaponMesh() end

---@param NotifyName FName
function ABoner_Stone_Archer_BP_C:OnBlendOut_27F38C1D431C8A68E5B92691B9A37F9C(NotifyName) end

---@param NotifyName FName
function ABoner_Stone_Archer_BP_C:OnCompleted_27F38C1D431C8A68E5B92691B9A37F9C(NotifyName) end

---@param NotifyName FName
function ABoner_Stone_Archer_BP_C:OnInterrupted_27F38C1D431C8A68E5B92691B9A37F9C(NotifyName) end

---@param NotifyName FName
function ABoner_Stone_Archer_BP_C:OnNotifyBegin_27F38C1D431C8A68E5B92691B9A37F9C(NotifyName) end

---@param NotifyName FName
function ABoner_Stone_Archer_BP_C:OnNotifyEnd_27F38C1D431C8A68E5B92691B9A37F9C(NotifyName) end

function ABoner_Stone_Archer_BP_C:StatueifyCollision() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABoner_Stone_Archer_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param HitLocation FVector
---@param HitLocationIsValid boolean
---@param AppliedDamage FFB_DamageAttributeSet
function ABoner_Stone_Archer_BP_C:TryApplyDamage_0(Hit, DamageToApply, Applier, HitLocation, HitLocationIsValid, AppliedDamage) end

function ABoner_Stone_Archer_BP_C:UnStatueifyCollision() end
