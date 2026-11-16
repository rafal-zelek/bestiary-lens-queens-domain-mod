---@meta

---@class ANecroZombie_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ANecroZombie_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ANecroZombie_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ANecroZombie_BP_C:DoStartupStuff() end

---@param EntryPoint int32
function ANecroZombie_BP_C:ExecuteUbergraph_NecroZombie_BP(EntryPoint) end

---@param NotifyName FName
function ANecroZombie_BP_C:OnBlendOut_DFE17B234F42DB84CA1FDBA537F74868(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BP_C:OnCompleted_DFE17B234F42DB84CA1FDBA537F74868(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BP_C:OnInterrupted_DFE17B234F42DB84CA1FDBA537F74868(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BP_C:OnNotifyBegin_DFE17B234F42DB84CA1FDBA537F74868(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BP_C:OnNotifyEnd_DFE17B234F42DB84CA1FDBA537F74868(NotifyName) end

function ANecroZombie_BP_C:ReceiveBeginPlay() end
