---@meta

---@class AAquaGate_01_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Metal_Scrape_Heavy_Loop UAudioComponent
---@field BlockerBox UBoxComponent
---@field Frame UStaticMeshComponent
---@field Timeline_0_OpenAmount_29AD6A294943816230A3998BADE3A8FC float
---@field Timeline_0__Direction_29AD6A294943816230A3998BADE3A8FC ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field AlphaFog UENVControlData_C
local AAquaGate_01_BP_C = {}

function AAquaGate_01_BP_C:CloseDoor() end

---@param EntryPoint int32
function AAquaGate_01_BP_C:ExecuteUbergraph_AquaGate_01_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AAquaGate_01_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function AAquaGate_01_BP_C:OpenDoor() end

function AAquaGate_01_BP_C:SetToOpenState() end

function AAquaGate_01_BP_C:Timeline_0__FinishedFunc() end

function AAquaGate_01_BP_C:Timeline_0__UpdateFunc() end

function AAquaGate_01_BP_C:UserConstructionScript() end
