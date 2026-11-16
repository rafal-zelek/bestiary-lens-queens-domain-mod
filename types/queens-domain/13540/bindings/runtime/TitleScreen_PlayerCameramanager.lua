---@meta

---@class ATitleScreen_PlayerCameramanager_C : AFS_PlayerCameraManager
---@field UberGraphFrame FPointerToUberGraphFrame
local ATitleScreen_PlayerCameramanager_C = {}

---@param NewViewTarget AActor
function ATitleScreen_PlayerCameramanager_C:BP_OnSetViewTarget(NewViewTarget) end

---@param EntryPoint int32
function ATitleScreen_PlayerCameramanager_C:ExecuteUbergraph_TitleScreen_PlayerCameramanager(EntryPoint) end
