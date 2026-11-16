---@meta

---@class UGrimoire_Overlay_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Appear UWidgetAnimation
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field VirtualKeyboard UVirtualKeyboard_C
---@field Close FGrimoire_Overlay_CClose
---@field NextPageRequested FGrimoire_Overlay_CNextPageRequested
---@field PrevPageRequested FGrimoire_Overlay_CPrevPageRequested
local UGrimoire_Overlay_C = {}

function UGrimoire_Overlay_C:BndEvt__Grimoire_Overlay_VirtualKeyboard_K2Node_ComponentBoundEvent_0_CloseButtonPressed__DelegateSignature() end

function UGrimoire_Overlay_C:BndEvt__Grimoire_Overlay_VirtualKeyboard_K2Node_ComponentBoundEvent_3_NextPageKey__DelegateSignature() end

function UGrimoire_Overlay_C:BndEvt__Grimoire_Overlay_VirtualKeyboard_K2Node_ComponentBoundEvent_4_PrevPageKey__DelegateSignature() end

function UGrimoire_Overlay_C:Close__DelegateSignature() end

function UGrimoire_Overlay_C:Construct() end

---@param EntryPoint int32
function UGrimoire_Overlay_C:ExecuteUbergraph_Grimoire_Overlay(EntryPoint) end

function UGrimoire_Overlay_C:HideKeyboard() end

function UGrimoire_Overlay_C:NextPageRequested__DelegateSignature() end

function UGrimoire_Overlay_C:PrevPageRequested__DelegateSignature() end

function UGrimoire_Overlay_C:ShowKeyboard() end
