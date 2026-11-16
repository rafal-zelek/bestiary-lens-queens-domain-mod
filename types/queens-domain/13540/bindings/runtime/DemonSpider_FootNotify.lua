---@meta

---@class UDemonSpider_FootNotify_C : UAnimNotify
---@field RightSide boolean
---@field LegIndex int32
---@field Sockets_L TArray<FName>
---@field Sockets_R TArray<FName>
local UDemonSpider_FootNotify_C = {}

function UDemonSpider_FootNotify_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UDemonSpider_FootNotify_C:Received_Notify(MeshComp, Animation) end
