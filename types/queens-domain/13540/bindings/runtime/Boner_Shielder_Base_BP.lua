---@meta

---@class ABoner_Shielder_Base_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Shield UEnemyAttachmentMesh_C
---@field Blocking boolean
---@field MinBlockDuration float
---@field MaxBlockDuration float
---@field EnableParry boolean
---@field ShieldResistance float
local ABoner_Shielder_Base_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Shielder_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Shielder_Base_BP_C:CancelBlock() end

function ABoner_Shielder_Base_BP_C:DoNormalAttack() end

function ABoner_Shielder_Base_BP_C:DoParry() end

function ABoner_Shielder_Base_BP_C:DoShieldBLock() end

function ABoner_Shielder_Base_BP_C:DoShieldBash() end

---@param EntryPoint int32
function ABoner_Shielder_Base_BP_C:ExecuteUbergraph_Boner_Shielder_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Shielder_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnBlendOut_05B9CA774C8544B7B830698356265B58(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnBlendOut_35B145234CEE89265888A3BB26E523D7(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnBlendOut_49FF9B104010BF18C37FD8BEF4AE0303(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnBlendOut_DF9EA5FE430AAE88530DB7B78A908A32(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnBlendOut_E49ED12F4D1838D8A608D9B7D7F921EB(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnCompleted_05B9CA774C8544B7B830698356265B58(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnCompleted_35B145234CEE89265888A3BB26E523D7(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnCompleted_49FF9B104010BF18C37FD8BEF4AE0303(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnCompleted_DF9EA5FE430AAE88530DB7B78A908A32(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnCompleted_E49ED12F4D1838D8A608D9B7D7F921EB(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnInterrupted_05B9CA774C8544B7B830698356265B58(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnInterrupted_35B145234CEE89265888A3BB26E523D7(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnInterrupted_49FF9B104010BF18C37FD8BEF4AE0303(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnInterrupted_DF9EA5FE430AAE88530DB7B78A908A32(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnInterrupted_E49ED12F4D1838D8A608D9B7D7F921EB(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyBegin_05B9CA774C8544B7B830698356265B58(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyBegin_35B145234CEE89265888A3BB26E523D7(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyBegin_49FF9B104010BF18C37FD8BEF4AE0303(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyBegin_DF9EA5FE430AAE88530DB7B78A908A32(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyBegin_E49ED12F4D1838D8A608D9B7D7F921EB(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyEnd_05B9CA774C8544B7B830698356265B58(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyEnd_35B145234CEE89265888A3BB26E523D7(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyEnd_49FF9B104010BF18C37FD8BEF4AE0303(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyEnd_DF9EA5FE430AAE88530DB7B78A908A32(NotifyName) end

---@param NotifyName FName
function ABoner_Shielder_Base_BP_C:OnNotifyEnd_E49ED12F4D1838D8A608D9B7D7F921EB(NotifyName) end

function ABoner_Shielder_Base_BP_C:RecoverFromBlock() end

function ABoner_Shielder_Base_BP_C:Stagger() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABoner_Shielder_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
