---@meta

---@class AAquaGate_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Audio UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_C4CD61E64AC4D43AE108C7BAD0ED0993 float
---@field Timeline_0__Direction_C4CD61E64AC4D43AE108C7BAD0ED0993 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
local AAquaGate_00_BP_C = {}

function AAquaGate_00_BP_C:CloseDoor() end

---@param EntryPoint int32
function AAquaGate_00_BP_C:ExecuteUbergraph_AquaGate_00_BP(EntryPoint) end

function AAquaGate_00_BP_C:OpenDoor() end

function AAquaGate_00_BP_C:SetToOpenState() end

function AAquaGate_00_BP_C:Timeline_0__FinishedFunc() end

function AAquaGate_00_BP_C:Timeline_0__UpdateFunc() end

function AAquaGate_00_BP_C:UserConstructionScript() end
