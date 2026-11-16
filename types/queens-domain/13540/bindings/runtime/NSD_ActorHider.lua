---@meta

---@class UNSD_ActorHider_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['NSD to Track'] FName
---@field Comparison EFS_Comparator
---@field ValueToCompare int32
---@field UseActivation boolean
local UNSD_ActorHider_C = {}

---@param EntryPoint int32
function UNSD_ActorHider_C:ExecuteUbergraph_NSD_ActorHider(EntryPoint) end

function UNSD_ActorHider_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function UNSD_ActorHider_C:ReceiveEndPlay(EndPlayReason) end

function UNSD_ActorHider_C:StateChanged() end
