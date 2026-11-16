---@meta

---@class ABoner_Shrineboss_Demo_BP_C : ABoner_Shrineboss_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProjectileSpawnPoint USceneComponent
---@field GroundWavePoint USceneComponent
local ABoner_Shrineboss_Demo_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_Shrineboss_Demo_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ABoner_Shrineboss_Demo_BP_C:BigslashhitboxStarted() end

---@param EntryPoint int32
function ABoner_Shrineboss_Demo_BP_C:ExecuteUbergraph_Boner_Shrineboss_Demo_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABoner_Shrineboss_Demo_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABoner_Shrineboss_Demo_BP_C:OnBlendOut_6DCBE8D64A9E286A4005C6B393BAD5D9(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_Demo_BP_C:OnCompleted_6DCBE8D64A9E286A4005C6B393BAD5D9(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_Demo_BP_C:OnInterrupted_6DCBE8D64A9E286A4005C6B393BAD5D9(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_Demo_BP_C:OnNotifyBegin_6DCBE8D64A9E286A4005C6B393BAD5D9(NotifyName) end

---@param NotifyName FName
function ABoner_Shrineboss_Demo_BP_C:OnNotifyEnd_6DCBE8D64A9E286A4005C6B393BAD5D9(NotifyName) end
