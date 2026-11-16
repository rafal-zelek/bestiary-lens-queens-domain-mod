---@meta

---@class AElevatorLever_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field gate_switch_00 UStaticMeshComponent
---@field LockAnim_Anim_5888B04F45DF70F20EAE308F9EB0F5DB float
---@field LockAnim__Direction_5888B04F45DF70F20EAE308F9EB0F5DB ETimelineDirection::Type
---@field LockAnim UTimelineComponent
---@field AnimateLeverPull_Anim_80B4E92C418E7EA672FB7F94F9D00D57 float
---@field AnimateLeverPull__Direction_80B4E92C418E7EA672FB7F94F9D00D57 ETimelineDirection::Type
---@field AnimateLeverPull UTimelineComponent
---@field Activated FElevatorLever_CActivated
---@field Position ElevatorLeverPosition::Type
---@field ElevatorRef AElevator_Base_C
---@field LockedMessage FText
---@field AlphaFogDA UENVControlData_C
---@field BetaFogDA UENVControlData_C
---@field DisableFogVertexColor boolean
---@field Locked boolean
---@field InteractPullAnimRan boolean
---@field LeverAnimAdjust float
---@field Sound USoundBase
---@field DisableLockedMessage boolean
local AElevatorLever_C = {}

function AElevatorLever_C:Activated__DelegateSignature() end

function AElevatorLever_C:AnimateLeverPull__FinishedFunc() end

function AElevatorLever_C:AnimateLeverPull__UpdateFunc() end

function AElevatorLever_C:BlockLockedMessage() end

function AElevatorLever_C:ElevatorStartedMoving() end

function AElevatorLever_C:ElevatorStoppedMoving() end

---@param EntryPoint int32
function AElevatorLever_C:ExecuteUbergraph_ElevatorLever(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AElevatorLever_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AElevatorLever_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AElevatorLever_C:Init() end

---@param PlayerInteracting AActor
function AElevatorLever_C:Interact(PlayerInteracting) end

function AElevatorLever_C:Lock() end

function AElevatorLever_C:LockAnim__FinishedFunc() end

function AElevatorLever_C:LockAnim__UpdateFunc() end

---@param DA UENVControlData_C
function AElevatorLever_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AElevatorLever_C:SetBetaFogDA(DA) end

function AElevatorLever_C:TryPullLever() end

function AElevatorLever_C:Unlock() end

function AElevatorLever_C:UpdateFogDAValues() end

function AElevatorLever_C:UpdateLockedState() end

function AElevatorLever_C:UserConstructionScript() end
