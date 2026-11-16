---@meta

---@class ABoner_Black_Gunner_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hat UEnemyAttachmentMesh_C
---@field SmallProjectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field LargeProjectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field BurstCount int32
---@field TurnRateByDistCurve UCurveFloat
local ABoner_Black_Gunner_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Black_Gunner_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Black_Gunner_BP_C:BurstAttack() end

function ABoner_Black_Gunner_BP_C:BurstLoopTimer() end

function ABoner_Black_Gunner_BP_C:ChargeAttack() end

function ABoner_Black_Gunner_BP_C:CheckChase() end

---@param EntryPoint int32
function ABoner_Black_Gunner_BP_C:ExecuteUbergraph_Boner_Black_Gunner_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Black_Gunner_BP_C:Kill(NoRewards, SupressDeathSound) end

function ABoner_Black_Gunner_BP_C:Melee() end

function ABoner_Black_Gunner_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnBlendOut_4451539649323F508A04DCAF7B2A613C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnBlendOut_7F995B1A4FB6F30CBF0F69ADDCFE97AE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnBlendOut_99ADEF154BF9F3C087C7659DA9FD8F6C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnBlendOut_C2250535443A23A4270961AFD4EBE229(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnBlendOut_EF3B681F4A18C347C82E9B977F8378CC(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnCompleted_4451539649323F508A04DCAF7B2A613C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnCompleted_7F995B1A4FB6F30CBF0F69ADDCFE97AE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnCompleted_99ADEF154BF9F3C087C7659DA9FD8F6C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnCompleted_C2250535443A23A4270961AFD4EBE229(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnCompleted_EF3B681F4A18C347C82E9B977F8378CC(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnInterrupted_4451539649323F508A04DCAF7B2A613C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnInterrupted_7F995B1A4FB6F30CBF0F69ADDCFE97AE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnInterrupted_99ADEF154BF9F3C087C7659DA9FD8F6C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnInterrupted_C2250535443A23A4270961AFD4EBE229(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnInterrupted_EF3B681F4A18C347C82E9B977F8378CC(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyBegin_4451539649323F508A04DCAF7B2A613C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyBegin_7F995B1A4FB6F30CBF0F69ADDCFE97AE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyBegin_99ADEF154BF9F3C087C7659DA9FD8F6C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyBegin_C2250535443A23A4270961AFD4EBE229(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyBegin_EF3B681F4A18C347C82E9B977F8378CC(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyEnd_4451539649323F508A04DCAF7B2A613C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyEnd_7F995B1A4FB6F30CBF0F69ADDCFE97AE(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyEnd_99ADEF154BF9F3C087C7659DA9FD8F6C(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyEnd_C2250535443A23A4270961AFD4EBE229(NotifyName) end

---@param NotifyName FName
function ABoner_Black_Gunner_BP_C:OnNotifyEnd_EF3B681F4A18C347C82E9B977F8378CC(NotifyName) end

---@param DeltaSeconds float
function ABoner_Black_Gunner_BP_C:ReceiveTick(DeltaSeconds) end

function ABoner_Black_Gunner_BP_C:Stagger() end

function ABoner_Black_Gunner_BP_C:StartWandering() end

ABoner_Black_Gunner_BP_C['Update Rotation'] = function(self) end
