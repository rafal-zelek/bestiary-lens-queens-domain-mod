---@meta

---@class UStrangeMushroom_HUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fill UImage
---@field ['Strange Mushroom Logic'] UStrangeMushroomLogic_C
---@field Active float
local UStrangeMushroom_HUD_C = {}

function UStrangeMushroom_HUD_C:Construct() end

---@param EntryPoint int32
function UStrangeMushroom_HUD_C:ExecuteUbergraph_StrangeMushroom_HUD(EntryPoint) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UStrangeMushroom_HUD_C:Tick(MyGeometry, InDeltaTime) end
