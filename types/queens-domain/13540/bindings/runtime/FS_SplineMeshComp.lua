---@meta

---@class UFS_SplineMeshComp_C : UStaticMeshComponent
---@field UpDir FVector
---@field IndexOffset int32
local UFS_SplineMeshComp_C = {}

---@param Start FVector
---@param StartTangent FVector
---@param End FVector
---@param EndTangent FVector
---@param StartScale FVector2D
---@param EndScale FVector2D
---@param Start_Roll float
---@param End_Roll float
function UFS_SplineMeshComp_C:SetSplineParams(Start, StartTangent, End, EndTangent, StartScale, EndScale, Start_Roll, End_Roll) end

---@param ScaleZ float
---@param MinZ float
UFS_SplineMeshComp_C['CalculateScaleZ/MinZ'] = function(self, ScaleZ, MinZ) end
