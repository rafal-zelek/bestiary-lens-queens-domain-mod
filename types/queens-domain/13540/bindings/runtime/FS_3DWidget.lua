---@meta

---@class UFS_3DWidget_C : U3DViewWidget_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UFS_3DWidget_C = {}

---@param EntryPoint int32
function UFS_3DWidget_C:ExecuteUbergraph_FS_3DWidget(EntryPoint) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFS_3DWidget_C:Tick(MyGeometry, InDeltaTime) end

---@param Size FVector2D
function UFS_3DWidget_C:UpdateRT(Size) end
