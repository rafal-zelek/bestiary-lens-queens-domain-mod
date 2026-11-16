---@meta

---@class AFS_AIController_C : AFS_AIController
---@field UberGraphFrame FPointerToUberGraphFrame
local AFS_AIController_C = {}

---@param NavLink AFS_NavLinkProxy
---@param Destination FVector
function AFS_AIController_C:ExecuteNavLinkAction(NavLink, Destination) end

---@param EntryPoint int32
function AFS_AIController_C:ExecuteUbergraph_FS_AIController(EntryPoint) end
