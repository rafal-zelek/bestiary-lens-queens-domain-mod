---@meta

---@class UPlayerInteractionComponent_C : USceneComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractionDistance float
---@field InteractTargetChanged FPlayerInteractionComponent_CInteractTargetChanged
---@field ['Current Interact Actor'] AActor
---@field Player AFS_PlayerChar_C
---@field DisableInteraction boolean
local UPlayerInteractionComponent_C = {}

---@param EntryPoint int32
function UPlayerInteractionComponent_C:ExecuteUbergraph_PlayerInteractionComponent(EntryPoint) end

function UPlayerInteractionComponent_C:InteractTargetChanged__DelegateSignature() end

function UPlayerInteractionComponent_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UPlayerInteractionComponent_C:ReceiveTick(DeltaSeconds) end

function UPlayerInteractionComponent_C:Update() end
