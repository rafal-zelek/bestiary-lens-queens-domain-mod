---@meta

---@class ABrass_Sci_Chest_C : ASci_Chest_00_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field stickbugarea UBoxComponent
---@field Stickbug boolean
---@field uiref UStickbugOverlay_C
local ABrass_Sci_Chest_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABrass_Sci_Chest_C:BndEvt__Brass_Sci_Chest_stickbugarea_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABrass_Sci_Chest_C:BndEvt__Brass_Sci_Chest_stickbugarea_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntryPoint int32
function ABrass_Sci_Chest_C:ExecuteUbergraph_Brass_Sci_Chest(EntryPoint) end

function ABrass_Sci_Chest_C:Open() end
