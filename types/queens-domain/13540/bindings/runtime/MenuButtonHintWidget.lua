---@meta

---@class UMenuButtonHintWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HintText UCommonTextBlock
---@field InputViewIcon UInputViewIcon_C
local UMenuButtonHintWidget_C = {}

function UMenuButtonHintWidget_C:BndEvt__MenuButtonHintWidget_InputViewIcon_K2Node_ComponentBoundEvent_0_Hide__DelegateSignature() end

function UMenuButtonHintWidget_C:BndEvt__MenuButtonHintWidget_InputViewIcon_K2Node_ComponentBoundEvent_1_UnHide__DelegateSignature() end

---@param EntryPoint int32
function UMenuButtonHintWidget_C:ExecuteUbergraph_MenuButtonHintWidget(EntryPoint) end

---@param Hint FButtonHint
function UMenuButtonHintWidget_C:SetHint(Hint) end
