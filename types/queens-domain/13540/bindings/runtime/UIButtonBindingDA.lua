---@meta

---@class UUIButtonBindingDA_C : UPrimaryDataAsset
---@field ['MKB Text'] FString
---@field ['Mouse And Keyboard'] USlateBrushAsset
---@field Playstation USlateBrushAsset
---@field Xbox USlateBrushAsset
---@field SWITCH USlateBrushAsset
---@field Bindings TArray<FKey>
---@field SwitchBindingsOverride TArray<FKey>
---@field MKBIcon UTexture2D
---@field HideWhenMKB boolean
---@field HideWhenController boolean
---@field SwitchIcon UTexture2D
---@field SwitchPlatformOverrideIcon UTexture2D
---@field PlaystationIcon UTexture2D
---@field XboxIcon UTexture2D
local UUIButtonBindingDA_C = {}

---@param Event FKeyEvent
---@param ForceSwitch boolean
---@param Do_Stuff boolean
function UUIButtonBindingDA_C:CheckBindings(Event, ForceSwitch, Do_Stuff) end
