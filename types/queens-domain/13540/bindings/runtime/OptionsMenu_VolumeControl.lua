---@meta

---@class UOptionsMenu_VolumeControl_C : UOptionsMenu_SliderControl_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnableSampleSound boolean
local UOptionsMenu_VolumeControl_C = {}

function UOptionsMenu_VolumeControl_C:Construct() end

---@param EntryPoint int32
function UOptionsMenu_VolumeControl_C:ExecuteUbergraph_OptionsMenu_VolumeControl(EntryPoint) end

function UOptionsMenu_VolumeControl_C:ExternalDecrease() end

function UOptionsMenu_VolumeControl_C:ExternalIncrease() end

function UOptionsMenu_VolumeControl_C:WriteProperty() end

---@param Value float
function UOptionsMenu_VolumeControl_C:valupdated(Value) end
