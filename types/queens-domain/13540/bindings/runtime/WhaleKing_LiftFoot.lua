---@meta

---@class UWhaleKing_LiftFoot_C : UAnimNotify
---@field Left boolean
local UWhaleKing_LiftFoot_C = {}

function UWhaleKing_LiftFoot_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UWhaleKing_LiftFoot_C:Received_Notify(MeshComp, Animation) end
