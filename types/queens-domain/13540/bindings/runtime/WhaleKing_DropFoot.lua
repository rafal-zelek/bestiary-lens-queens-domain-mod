---@meta

---@class UWhaleKing_DropFoot_C : UAnimNotify
---@field Left boolean
---@field Strong boolean
local UWhaleKing_DropFoot_C = {}

function UWhaleKing_DropFoot_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UWhaleKing_DropFoot_C:Received_Notify(MeshComp, Animation) end
