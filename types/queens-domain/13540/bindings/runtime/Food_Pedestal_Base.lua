---@meta

---@class AFood_Pedestal_Base_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_FoodCharm_SM UStaticMeshComponent
---@field TicketPos UStaticMeshComponent
---@field FoodItemGetParticles UNiagaraComponent
---@field Food_Pedestal_SM UStaticMeshComponent
---@field Cover UStaticMeshComponent
---@field Timeline_0_LidUp_39593D51499D361D846E3C91C2233DF4 float
---@field Timeline_0_PickupScale_39593D51499D361D846E3C91C2233DF4 float
---@field Timeline_0_MoveUp_39593D51499D361D846E3C91C2233DF4 float
---@field Timeline_0_PutAway_39593D51499D361D846E3C91C2233DF4 float
---@field Timeline_0_PutInFront_39593D51499D361D846E3C91C2233DF4 float
---@field Timeline_0__Direction_39593D51499D361D846E3C91C2233DF4 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field InitialPullUpHeight FVector
---@field DesiredActualScale float
---@field PickupFinished FFood_Pedestal_Base_CPickupFinished
local AFood_Pedestal_Base_C = {}

---@param EntryPoint int32
function AFood_Pedestal_Base_C:ExecuteUbergraph_Food_Pedestal_Base(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFood_Pedestal_Base_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AFood_Pedestal_Base_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function AFood_Pedestal_Base_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function AFood_Pedestal_Base_C:Pickup(DialoguePickup) end

function AFood_Pedestal_Base_C:PickupFinished__DelegateSignature() end

function AFood_Pedestal_Base_C:Timeline_0__FinishedFunc() end

function AFood_Pedestal_Base_C:Timeline_0__NewTrack_0__EventFunc() end

function AFood_Pedestal_Base_C:Timeline_0__UpdateFunc() end

function AFood_Pedestal_Base_C:UpdateFogDAValues() end

function AFood_Pedestal_Base_C:UserConstructionScript() end

AFood_Pedestal_Base_C['Create Food Pickup Actor'] = function(self) end

---@param Data TArray<FSavableActorState>
AFood_Pedestal_Base_C['Restore State From Save Data'] = function(self, Data) end
