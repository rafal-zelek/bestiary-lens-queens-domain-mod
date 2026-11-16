---@meta

---@class UFlyingRobot_Type_06_AnimBP_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_SequencePlayer_5 FAnimNode_SequencePlayer
---@field AnimGraphNode_LookAt FAnimNode_LookAt
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_BlendListByInt FAnimNode_BlendListByInt
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field CharacterRef AFlyingRobot_BP_C
---@field TrapIndex int32
---@field Moving boolean
---@field Chasing boolean
---@field Falling boolean
---@field AimAngle float
---@field neckmod FRotator
---@field LocalVelocity FVector
---@field Tilt FRotator
---@field ['Delta Time X'] float
---@field LastRotation float
---@field Turning boolean
---@field ShootMode boolean
---@field FiringJiggleStrength float
---@field Target FVector
---@field BestiaryInstance boolean
local UFlyingRobot_Type_06_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UFlyingRobot_Type_06_AnimBP_C:AnimGraph(AnimGraph) end

function UFlyingRobot_Type_06_AnimBP_C:BlueprintInitializeAnimation() end

---@param DeltaTimeX float
function UFlyingRobot_Type_06_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

---@param EntryPoint int32
function UFlyingRobot_Type_06_AnimBP_C:ExecuteUbergraph_FlyingRobot_Type_06_AnimBP(EntryPoint) end

function UFlyingRobot_Type_06_AnimBP_C:Update() end
