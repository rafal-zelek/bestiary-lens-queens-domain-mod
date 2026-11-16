---@meta

---@class AKnight_RustySwordPickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractibleBox UBoxComponent
local AKnight_RustySwordPickup_C = {}

---@param EntryPoint int32
function AKnight_RustySwordPickup_C:ExecuteUbergraph_Knight_RustySwordPickup(EntryPoint) end

---@param DialoguePickup boolean
function AKnight_RustySwordPickup_C:Pickup(DialoguePickup) end

function AKnight_RustySwordPickup_C:ReceiveBeginPlay() end

function AKnight_RustySwordPickup_C:SetQuestStateActive() end

function AKnight_RustySwordPickup_C:SetQuestStateInactive() end
