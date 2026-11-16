---@meta

---@class ASuperCubeAltar_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field Pedestal UStaticMeshComponent
---@field PlacedCube UVisualKeyComponent_C
---@field Evo_Dissolve_06DC4315425B727347399DAA3F11CA52 float
---@field Evo_Squish_06DC4315425B727347399DAA3F11CA52 float
---@field Evo_Pickup_06DC4315425B727347399DAA3F11CA52 float
---@field Evo__Direction_06DC4315425B727347399DAA3F11CA52 ETimelineDirection::Type
---@field Evo UTimelineComponent
---@field ['Key Tags to Show'] TSet<FName>
---@field SuperCubePickup ASuperCube_Pickup_C
---@field PrevItemSlot int32
---@field WasPrevEquipped boolean
local ASuperCubeAltar_C = {}

function ASuperCubeAltar_C:CustomEvent_0() end

function ASuperCubeAltar_C:CustomEvent_1() end

function ASuperCubeAltar_C:Evo__FinishedFunc() end

function ASuperCubeAltar_C:Evo__UpdateFunc() end

---@param EntryPoint int32
function ASuperCubeAltar_C:ExecuteUbergraph_SuperCubeAltar(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASuperCubeAltar_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ASuperCubeAltar_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param PlayerInteracting AActor
function ASuperCubeAltar_C:Interact(PlayerInteracting) end

function ASuperCubeAltar_C:StoneBlockInserted() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ASuperCubeAltar_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end
