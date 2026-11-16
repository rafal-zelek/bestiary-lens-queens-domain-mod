---@meta

---@class ANecroZombie_BossAdd_BP_C : ANecroZombie_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spawner UStaticMeshComponent
---@field ShowSpawner_NewTrack_0_5E778DAB4A7081987F23EEB600CAB86B float
---@field ShowSpawner__Direction_5E778DAB4A7081987F23EEB600CAB86B ETimelineDirection::Type
---@field ShowSpawner UTimelineComponent
local ANecroZombie_BossAdd_BP_C = {}

function ANecroZombie_BossAdd_BP_C:Absorb() end

function ANecroZombie_BossAdd_BP_C:CheckForStuckPath() end

function ANecroZombie_BossAdd_BP_C:ContinueWandering() end

function ANecroZombie_BossAdd_BP_C:DoStartupStuff() end

---@param EntryPoint int32
function ANecroZombie_BossAdd_BP_C:ExecuteUbergraph_NecroZombie_BossAdd_BP(EntryPoint) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnBlendOut_68BCAC7A4EC02B128D235498B035FE00(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnBlendOut_A610C50946B59BAE268F9292D9D41863(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnCompleted_68BCAC7A4EC02B128D235498B035FE00(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnCompleted_A610C50946B59BAE268F9292D9D41863(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnInterrupted_68BCAC7A4EC02B128D235498B035FE00(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnInterrupted_A610C50946B59BAE268F9292D9D41863(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnNotifyBegin_68BCAC7A4EC02B128D235498B035FE00(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnNotifyBegin_A610C50946B59BAE268F9292D9D41863(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnNotifyEnd_68BCAC7A4EC02B128D235498B035FE00(NotifyName) end

---@param NotifyName FName
function ANecroZombie_BossAdd_BP_C:OnNotifyEnd_A610C50946B59BAE268F9292D9D41863(NotifyName) end

function ANecroZombie_BossAdd_BP_C:ReceiveBeginPlay() end

function ANecroZombie_BossAdd_BP_C:ShowSpawner__FinishedFunc() end

function ANecroZombie_BossAdd_BP_C:ShowSpawner__Spawn__EventFunc() end

function ANecroZombie_BossAdd_BP_C:ShowSpawner__UpdateFunc() end

function ANecroZombie_BossAdd_BP_C:StartWandering() end

function ANecroZombie_BossAdd_BP_C:StopWandering() end

---@param Force boolean
function ANecroZombie_BossAdd_BP_C:TickFogTransitions(Force) end

ANecroZombie_BossAdd_BP_C['Tick Liquid Stuff'] = function(self) end

ANecroZombie_BossAdd_BP_C['Update Rotation'] = function(self) end
