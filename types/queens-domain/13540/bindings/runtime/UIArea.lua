---@meta

---@class UUIArea_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Chisel UImage
---@field Content UNamedSlot
---@field Inside UImage
---@field Shadow UImage
---@field In boolean
---@field EnableShadow boolean
---@field XOffset float
---@field YOffset float
---@field Random boolean
local UUIArea_C = {}

---@param EntryPoint int32
function UUIArea_C:ExecuteUbergraph_UIArea(EntryPoint) end

---@param IsDesignTime boolean
function UUIArea_C:PreConstruct(IsDesignTime) end
