---@meta

---@class URumble_AnimNotify_C : UAnimNotify
---@field RumbleEffect UForceFeedbackEffect
---@field Attached boolean
---@field ['Attach Point Name'] FName
---@field Location FVector
---@field ['Intensity Multiplier'] float
---@field ['Start Time'] float
---@field ['Attenuation Settings'] UForceFeedbackAttenuation
local URumble_AnimNotify_C = {}

function URumble_AnimNotify_C:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function URumble_AnimNotify_C:Received_Notify(MeshComp, Animation) end
