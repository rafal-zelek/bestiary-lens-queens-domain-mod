---@meta

---@class AGraveyardBoss_Gate_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Audio UAudioComponent
---@field BlockerBox UBoxComponent
---@field Timeline_0_OpenAmount_84FFFC7644AEBC8728201AB2B3B5449C float
---@field Timeline_0__Direction_84FFFC7644AEBC8728201AB2B3B5449C ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field OpenAmount float
---@field AlwaysOpenOnLoad boolean
local AGraveyardBoss_Gate_C = {}

function AGraveyardBoss_Gate_C:CloseDoor() end

---@param EntryPoint int32
function AGraveyardBoss_Gate_C:ExecuteUbergraph_GraveyardBoss_Gate(EntryPoint) end

function AGraveyardBoss_Gate_C:OpenDoor() end

function AGraveyardBoss_Gate_C:SetToOpenState() end

function AGraveyardBoss_Gate_C:Timeline_0__FinishedFunc() end

function AGraveyardBoss_Gate_C:Timeline_0__UpdateFunc() end

function AGraveyardBoss_Gate_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AGraveyardBoss_Gate_C['Restore State From Save Data'] = function(self, Data) end
