---@meta

---@class AHeartbed_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field curtaincollision UStaticMeshComponent
---@field HeartBed USkeletalMeshComponent
local AHeartbed_BP_C = {}

---@param EntryPoint int32
function AHeartbed_BP_C:ExecuteUbergraph_Heartbed_BP(EntryPoint) end

---@param NotifyName FName
function AHeartbed_BP_C:OnBlendOut_D258E10D4ED825D1020385AD89344030(NotifyName) end

---@param NotifyName FName
function AHeartbed_BP_C:OnCompleted_D258E10D4ED825D1020385AD89344030(NotifyName) end

---@param NotifyName FName
function AHeartbed_BP_C:OnInterrupted_D258E10D4ED825D1020385AD89344030(NotifyName) end

---@param NotifyName FName
function AHeartbed_BP_C:OnNotifyBegin_D258E10D4ED825D1020385AD89344030(NotifyName) end

---@param NotifyName FName
function AHeartbed_BP_C:OnNotifyEnd_D258E10D4ED825D1020385AD89344030(NotifyName) end

function AHeartbed_BP_C:Open() end

function AHeartbed_BP_C:ReceiveBeginPlay() end
