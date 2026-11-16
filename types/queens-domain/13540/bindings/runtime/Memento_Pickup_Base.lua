---@meta

---@class AMemento_Pickup_Base_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpectralSwordAbsorbFX UNiagaraComponent
---@field Niagara UNiagaraComponent
local AMemento_Pickup_Base_C = {}

---@param EntryPoint int32
function AMemento_Pickup_Base_C:ExecuteUbergraph_Memento_Pickup_Base(EntryPoint) end

---@param DialoguePickup boolean
function AMemento_Pickup_Base_C:Pickup(DialoguePickup) end

---@param DeltaSeconds float
function AMemento_Pickup_Base_C:ReceiveTick(DeltaSeconds) end
