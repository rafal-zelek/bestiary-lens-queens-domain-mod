---@meta

---@class ABoner_ExecutionerMiniboss_BP_C : ABoner_DualSword_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MiddleHitbox USphereComponent
---@field JumpHitbox USphereComponent
---@field SwordHitbox6_0 USphereComponent
---@field offhandHitbox USphereComponent
---@field EnemySkeletalMeshAttachment UEnemySkeletalMeshAttachment_C
---@field Timeline_6_0_NewTrack_0_7321A7F54FAEA1C754984BA49E810C81 float
---@field Timeline_6_0__Direction_7321A7F54FAEA1C754984BA49E810C81 ETimelineDirection::Type
---@field Timeline_6_0 UTimelineComponent
---@field Timeline_7_NewTrack_0_5FE56367488E3597EB09B59E7ADEE9AE float
---@field Timeline_7__Direction_5FE56367488E3597EB09B59E7ADEE9AE ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
---@field SpinAttackChance float
---@field ThrowAttackMinRange float
---@field ThrowAttackChance float
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field EndSpin boolean
---@field SPinAttackCooldown float
---@field ThrowAttackCooldown float
local ABoner_ExecutionerMiniboss_BP_C = {}

---@param Damaged boolean
function ABoner_ExecutionerMiniboss_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_ExecutionerMiniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_ExecutionerMiniboss_BP_C:DoNormalAttack() end

function ABoner_ExecutionerMiniboss_BP_C:DoSpinAttack() end

function ABoner_ExecutionerMiniboss_BP_C:DoThrowAttack() end

---@param Mode EnemyBehaviourMode::Type
function ABoner_ExecutionerMiniboss_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABoner_ExecutionerMiniboss_BP_C:ExecuteUbergraph_Boner_ExecutionerMiniboss_BP(EntryPoint) end

---@param JumpAttack boolean
---@param RUnningSlashes boolean
function ABoner_ExecutionerMiniboss_BP_C:GetNormalAttackType(JumpAttack, RUnningSlashes) end

---@param InSocketName FName
function ABoner_ExecutionerMiniboss_BP_C:GetProjectileLoc(InSocketName) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_ExecutionerMiniboss_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_250700CB4D3792DF21D4E3BE8A01B040(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_575BB484432A11AE4C5555AC1E4C377D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_64712F4647366F1CB3013C90117E8106(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_7360AAA745F3F79E84C27E82EAEB160D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_C7BD1FCE4AFF81B6F6E6DE97CBCC86E4(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnBlendOut_C7DB10DE4CD2A89B86F2069C37806DE5(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_250700CB4D3792DF21D4E3BE8A01B040(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_575BB484432A11AE4C5555AC1E4C377D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_64712F4647366F1CB3013C90117E8106(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_7360AAA745F3F79E84C27E82EAEB160D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_C7BD1FCE4AFF81B6F6E6DE97CBCC86E4(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnCompleted_C7DB10DE4CD2A89B86F2069C37806DE5(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_250700CB4D3792DF21D4E3BE8A01B040(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_575BB484432A11AE4C5555AC1E4C377D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_64712F4647366F1CB3013C90117E8106(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_7360AAA745F3F79E84C27E82EAEB160D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_C7BD1FCE4AFF81B6F6E6DE97CBCC86E4(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnInterrupted_C7DB10DE4CD2A89B86F2069C37806DE5(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_250700CB4D3792DF21D4E3BE8A01B040(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_575BB484432A11AE4C5555AC1E4C377D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_64712F4647366F1CB3013C90117E8106(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_7360AAA745F3F79E84C27E82EAEB160D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_C7BD1FCE4AFF81B6F6E6DE97CBCC86E4(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyBegin_C7DB10DE4CD2A89B86F2069C37806DE5(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_250700CB4D3792DF21D4E3BE8A01B040(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_575BB484432A11AE4C5555AC1E4C377D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_64712F4647366F1CB3013C90117E8106(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_7360AAA745F3F79E84C27E82EAEB160D(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_C7BD1FCE4AFF81B6F6E6DE97CBCC86E4(NotifyName) end

---@param NotifyName FName
function ABoner_ExecutionerMiniboss_BP_C:OnNotifyEnd_C7DB10DE4CD2A89B86F2069C37806DE5(NotifyName) end

function ABoner_ExecutionerMiniboss_BP_C:Stagger() end

function ABoner_ExecutionerMiniboss_BP_C:Timeline_6_0__FinishedFunc() end

function ABoner_ExecutionerMiniboss_BP_C:Timeline_6_0__UpdateFunc() end

function ABoner_ExecutionerMiniboss_BP_C:Timeline_7__FinishedFunc() end

function ABoner_ExecutionerMiniboss_BP_C:Timeline_7__UpdateFunc() end

function ABoner_ExecutionerMiniboss_BP_C:weaponsreapper() end
