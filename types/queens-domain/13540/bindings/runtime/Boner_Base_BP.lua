---@meta

---@class ABoner_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkullSpawnSpot USceneComponent
---@field SwordHitbox USphereComponent
---@field WeaponMesh UEnemyAttachmentMesh_C
---@field SwordHitbox2 USphereComponent
---@field SwordHitbox1 USphereComponent
---@field SpawnSkullOnDeath boolean
---@field SkullToSpawn TSubclassOf<AFlamingSkull_BP_C>
---@field BasePose UAnimSequence
---@field HeavyTrap boolean
---@field RunAnim UAnimSequence
local ABoner_Base_BP_C = {}

---@param Damaged boolean
function ABoner_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function ABoner_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABoner_Base_BP_C:ExecuteUbergraph_Boner_Base_BP(EntryPoint) end

function ABoner_Base_BP_C:GetProjectileLaunchLoc() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_0AA7FEF64DC719441CC6219BB53E57C7(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_415FCD314482DE57894903926A4C1BDA(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_5A8F13D64C067E01208D979B0B0BF920(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_74D3D34D4EA23AF5279FC690C0A3C5BD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_85C051704F7D81C491ADBFA0EE563817(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_A62BEC084256992EE73D95A79B2864AD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_C0F657A14B06F6878D477384FBF4F7D4(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnBlendOut_DCC67FFA48DF71522E87E3BFCDC0C09D(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_0AA7FEF64DC719441CC6219BB53E57C7(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_415FCD314482DE57894903926A4C1BDA(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_5A8F13D64C067E01208D979B0B0BF920(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_74D3D34D4EA23AF5279FC690C0A3C5BD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_85C051704F7D81C491ADBFA0EE563817(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_A62BEC084256992EE73D95A79B2864AD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_C0F657A14B06F6878D477384FBF4F7D4(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnCompleted_DCC67FFA48DF71522E87E3BFCDC0C09D(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_0AA7FEF64DC719441CC6219BB53E57C7(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_415FCD314482DE57894903926A4C1BDA(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_5A8F13D64C067E01208D979B0B0BF920(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_74D3D34D4EA23AF5279FC690C0A3C5BD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_85C051704F7D81C491ADBFA0EE563817(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_A62BEC084256992EE73D95A79B2864AD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_C0F657A14B06F6878D477384FBF4F7D4(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnInterrupted_DCC67FFA48DF71522E87E3BFCDC0C09D(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_0AA7FEF64DC719441CC6219BB53E57C7(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_415FCD314482DE57894903926A4C1BDA(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_5A8F13D64C067E01208D979B0B0BF920(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_74D3D34D4EA23AF5279FC690C0A3C5BD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_85C051704F7D81C491ADBFA0EE563817(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_A62BEC084256992EE73D95A79B2864AD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_C0F657A14B06F6878D477384FBF4F7D4(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyBegin_DCC67FFA48DF71522E87E3BFCDC0C09D(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_0AA7FEF64DC719441CC6219BB53E57C7(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_415FCD314482DE57894903926A4C1BDA(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_5A8F13D64C067E01208D979B0B0BF920(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_74D3D34D4EA23AF5279FC690C0A3C5BD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_85C051704F7D81C491ADBFA0EE563817(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_A62BEC084256992EE73D95A79B2864AD(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_C0F657A14B06F6878D477384FBF4F7D4(NotifyName) end

---@param NotifyName FName
function ABoner_Base_BP_C:OnNotifyEnd_DCC67FFA48DF71522E87E3BFCDC0C09D(NotifyName) end

function ABoner_Base_BP_C:ReceiveBeginPlay() end

ABoner_Base_BP_C['Configure Behaviour Mode'] = function(self) end
