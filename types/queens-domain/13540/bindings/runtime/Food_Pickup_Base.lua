---@meta

---@class AFood_Pickup_Base_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Pick_Up_From_Cloche_PickupScale_41A0F44B47870436131633984CBC00B5 float
---@field Pick_Up_From_Cloche_MoveUp_41A0F44B47870436131633984CBC00B5 float
---@field Pick_Up_From_Cloche_PutAway_41A0F44B47870436131633984CBC00B5 float
---@field Pick_Up_From_Cloche_PutInFront_41A0F44B47870436131633984CBC00B5 float
---@field Pick_Up_From_Cloche__Direction_41A0F44B47870436131633984CBC00B5 ETimelineDirection::Type
---@field ['Pick Up From Cloche'] UTimelineComponent
---@field EatAndPutAway_LidUp_25DC9C21445D815413F789AC48D3D6F7 float
---@field EatAndPutAway_PickupScale_25DC9C21445D815413F789AC48D3D6F7 float
---@field EatAndPutAway_MoveUp_25DC9C21445D815413F789AC48D3D6F7 float
---@field EatAndPutAway_PutAway_25DC9C21445D815413F789AC48D3D6F7 float
---@field EatAndPutAway_PutInFront_25DC9C21445D815413F789AC48D3D6F7 float
---@field EatAndPutAway__Direction_25DC9C21445D815413F789AC48D3D6F7 ETimelineDirection::Type
---@field EatAndPutAway UTimelineComponent
---@field InitialPullUpHeight FVector
---@field DesiredActualScale float
---@field PickupFinished FFood_Pickup_Base_CPickupFinished
---@field EatModelSwaps TArray<UStaticMesh>
local AFood_Pickup_Base_C = {}

---@param PutInFront float
---@param PutAway float
---@param PickupScale float
---@param MoveUp float
function AFood_Pickup_Base_C:Animation(PutInFront, PutAway, PickupScale, MoveUp) end

function AFood_Pickup_Base_C:EatAndPutAway__FinishedFunc() end

function AFood_Pickup_Base_C:EatAndPutAway__ModelChange__EventFunc() end

function AFood_Pickup_Base_C:EatAndPutAway__NewTrack_0__EventFunc() end

function AFood_Pickup_Base_C:EatAndPutAway__UpdateFunc() end

function AFood_Pickup_Base_C:EatAndPutAway__grant__EventFunc() end

---@param EntryPoint int32
function AFood_Pickup_Base_C:ExecuteUbergraph_Food_Pickup_Base(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFood_Pickup_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AFood_Pickup_Base_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function AFood_Pickup_Base_C:Pickup(DialoguePickup) end

function AFood_Pickup_Base_C:PickupFinished__DelegateSignature() end

function AFood_Pickup_Base_C:PutAway() end

function AFood_Pickup_Base_C:UpdateFogDAValues() end

function AFood_Pickup_Base_C:UserConstructionScript() end

AFood_Pickup_Base_C['Pick Up From Cloche__AllowInput__EventFunc'] = function(self) end

AFood_Pickup_Base_C['Pick Up From Cloche__FinishedFunc'] = function(self) end

AFood_Pickup_Base_C['Pick Up From Cloche__UpdateFunc'] = function(self) end

---@param Data TArray<FSavableActorState>
AFood_Pickup_Base_C['Restore State From Save Data'] = function(self, Data) end
