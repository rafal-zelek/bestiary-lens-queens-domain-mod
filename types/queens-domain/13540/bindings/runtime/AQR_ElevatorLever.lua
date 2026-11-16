---@meta

---@class AAQR_ElevatorLever_C : AElevatorLever_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox2 UBoxComponent
---@field LockedInteractBox UBoxComponent
local AAQR_ElevatorLever_C = {}

---@param EntryPoint int32
function AAQR_ElevatorLever_C:ExecuteUbergraph_AQR_ElevatorLever(EntryPoint) end

function AAQR_ElevatorLever_C:Lock() end

function AAQR_ElevatorLever_C:Unlock() end
