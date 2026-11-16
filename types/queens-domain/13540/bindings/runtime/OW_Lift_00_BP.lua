---@meta

---@class AOW_Lift_00_BP_C : AElevator_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CrushAreaCollision UCrushAreaCollision_C
---@field AQR_Elevator_00_SM UStaticMeshComponent
---@field BlockerBox AActor
local AOW_Lift_00_BP_C = {}

function AOW_Lift_00_BP_C:CancelCurrentMove() end

---@param EntryPoint int32
function AOW_Lift_00_BP_C:ExecuteUbergraph_OW_Lift_00_BP(EntryPoint) end

function AOW_Lift_00_BP_C:ReachedEnd() end

function AOW_Lift_00_BP_C:ReceiveBeginPlay() end

function AOW_Lift_00_BP_C:StartElevatorTowardsEnd() end
