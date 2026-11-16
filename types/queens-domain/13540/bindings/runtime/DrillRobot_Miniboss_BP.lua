---@meta

---@class ADrillRobot_Miniboss_BP_C : ADrillRobot_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetOverride boolean
---@field TargetOverridePos FVector
---@field LastMineDropPoint FVector
local ADrillRobot_Miniboss_BP_C = {}

function ADrillRobot_Miniboss_BP_C:DoChargeAttack() end

---@param EntryPoint int32
function ADrillRobot_Miniboss_BP_C:ExecuteUbergraph_DrillRobot_Miniboss_BP(EntryPoint) end

---@param bOverride boolean
---@param Location FVector
function ADrillRobot_Miniboss_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

function ADrillRobot_Miniboss_BP_C:StartDrill() end

function ADrillRobot_Miniboss_BP_C:StopDrill() end
