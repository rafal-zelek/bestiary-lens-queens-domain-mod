---@meta

---@class AMechaKnight_MausLance_C : AMechaKnight_Lance_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
local AMechaKnight_MausLance_C = {}

---@param Allow_Multi_Drop boolean
---@param Force boolean
function AMechaKnight_MausLance_C:DropItem(Allow_Multi_Drop, Force) end

function AMechaKnight_MausLance_C:Ended() end

---@param EntryPoint int32
function AMechaKnight_MausLance_C:ExecuteUbergraph_MechaKnight_MausLance(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMechaKnight_MausLance_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AMechaKnight_MausLance_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMechaKnight_MausLance_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AMechaKnight_MausLance_C:OnBlendOut_D2590DC84456B013AAFAB289083EA60E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_MausLance_C:OnCompleted_D2590DC84456B013AAFAB289083EA60E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_MausLance_C:OnInterrupted_D2590DC84456B013AAFAB289083EA60E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_MausLance_C:OnNotifyBegin_D2590DC84456B013AAFAB289083EA60E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_MausLance_C:OnNotifyEnd_D2590DC84456B013AAFAB289083EA60E(NotifyName) end
