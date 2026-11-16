---@meta

---@class AFlyingManta_Blood_BP_C : AFlyingManta_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AFlyingManta_Blood_BP_C = {}

---@param Damaged boolean
function AFlyingManta_Blood_BP_C:ActivateTrap(Damaged) end

---@param EntryPoint int32
function AFlyingManta_Blood_BP_C:ExecuteUbergraph_FlyingManta_Blood_BP(EntryPoint) end

---@param NotifyName FName
function AFlyingManta_Blood_BP_C:OnBlendOut_84940C234785BB16AD17B998F771D186(NotifyName) end

---@param NotifyName FName
function AFlyingManta_Blood_BP_C:OnCompleted_84940C234785BB16AD17B998F771D186(NotifyName) end

---@param NotifyName FName
function AFlyingManta_Blood_BP_C:OnInterrupted_84940C234785BB16AD17B998F771D186(NotifyName) end

---@param NotifyName FName
function AFlyingManta_Blood_BP_C:OnNotifyBegin_84940C234785BB16AD17B998F771D186(NotifyName) end

---@param NotifyName FName
function AFlyingManta_Blood_BP_C:OnNotifyEnd_84940C234785BB16AD17B998F771D186(NotifyName) end
