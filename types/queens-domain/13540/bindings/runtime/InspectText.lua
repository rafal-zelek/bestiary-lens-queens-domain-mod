---@meta

---@class AInspectText_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field arrow UArrowComponent
---@field InteractBox UBoxComponent
---@field Read FInspectText_CRead
---@field ImportKey FString
---@field MaxInteractAngle float
---@field Text FText
---@field Title FText
local AInspectText_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AInspectText_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AInspectText_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AInspectText_C:ExecuteUbergraph_InspectText(EntryPoint) end

function AInspectText_C:GetInteractDir() end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AInspectText_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AInspectText_C:Interact(PlayerInteracting) end

function AInspectText_C:LinkToImportKey() end

function AInspectText_C:Read__DelegateSignature() end

function AInspectText_C:UserConstructionScript() end
