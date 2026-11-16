---@meta

---@class IUI_GIFuncs_C : IInterface
local IUI_GIFuncs_C = {}

function IUI_GIFuncs_C:ApplyOptionSettings() end

---@param Options UOptionsMenu_C
function IUI_GIFuncs_C:GetCurrentOptionsList(Options) end

---@param ReasonIsHover boolean
function IUI_GIFuncs_C:GetFocusChangeReasonIsHover(ReasonIsHover) end

---@param Mute boolean
function IUI_GIFuncs_C:GetMuteMenuSelectSounds(Mute) end

---@param Gamepad boolean
function IUI_GIFuncs_C:ResetInputBindings(Gamepad) end

---@param Options UOptionsMenu_C
function IUI_GIFuncs_C:SetCurrentOptionsList(Options) end

---@param ReasonIsHover boolean
function IUI_GIFuncs_C:SetFocusChangeReasonIsHover(ReasonIsHover) end

---@param Mute boolean
function IUI_GIFuncs_C:SetMuteMenuSelectSounds(Mute) end
