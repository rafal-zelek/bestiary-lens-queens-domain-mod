---@meta

---@class AFisher_KingAdd_BP_C : AFisher_base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OwningBoss AWhaleking_Boss_BP_C
---@field FlopStunned boolean
local AFisher_KingAdd_BP_C = {}

function AFisher_KingAdd_BP_C:CancelFlopStun() end

---@param EntryPoint int32
function AFisher_KingAdd_BP_C:ExecuteUbergraph_Fisher_KingAdd_BP(EntryPoint) end

function AFisher_KingAdd_BP_C:FlopStun() end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnBlendOut_A8491CDD4784BF4F14E2F3AEDC4C0359(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnBlendOut_FA48517A4A546A1D769D98AF30BF17C4(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnCompleted_A8491CDD4784BF4F14E2F3AEDC4C0359(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnCompleted_FA48517A4A546A1D769D98AF30BF17C4(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnInterrupted_A8491CDD4784BF4F14E2F3AEDC4C0359(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnInterrupted_FA48517A4A546A1D769D98AF30BF17C4(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnNotifyBegin_A8491CDD4784BF4F14E2F3AEDC4C0359(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnNotifyBegin_FA48517A4A546A1D769D98AF30BF17C4(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnNotifyEnd_A8491CDD4784BF4F14E2F3AEDC4C0359(NotifyName) end

---@param NotifyName FName
function AFisher_KingAdd_BP_C:OnNotifyEnd_FA48517A4A546A1D769D98AF30BF17C4(NotifyName) end

function AFisher_KingAdd_BP_C:ReceiveBeginPlay() end

function AFisher_KingAdd_BP_C:Stagger() end
