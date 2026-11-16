---@meta

---@class ASpiker_BIG_BP_C : ASpiker_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeadHitbox2 USphereComponent
---@field HeadHitbox1 USphereComponent
---@field HeadHitbox USphereComponent
local ASpiker_BIG_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASpiker_BIG_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ASpiker_BIG_BP_C:ExecuteUbergraph_Spiker_BIG_BP(EntryPoint) end

---@param NotifyName FName
function ASpiker_BIG_BP_C:OnBlendOut_C0F6A77A413FE962AF4FD681449D9E09(NotifyName) end

---@param NotifyName FName
function ASpiker_BIG_BP_C:OnCompleted_C0F6A77A413FE962AF4FD681449D9E09(NotifyName) end

---@param NotifyName FName
function ASpiker_BIG_BP_C:OnInterrupted_C0F6A77A413FE962AF4FD681449D9E09(NotifyName) end

---@param NotifyName FName
function ASpiker_BIG_BP_C:OnNotifyBegin_C0F6A77A413FE962AF4FD681449D9E09(NotifyName) end

---@param NotifyName FName
function ASpiker_BIG_BP_C:OnNotifyEnd_C0F6A77A413FE962AF4FD681449D9E09(NotifyName) end
