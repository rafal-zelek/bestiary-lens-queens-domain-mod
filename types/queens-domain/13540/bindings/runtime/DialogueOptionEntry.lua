---@meta

---@class UDialogueOptionEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CommonTextBlock_68 UCommonTextBlock
---@field FS_Button UFS_Button_C
---@field Text UCommonRichTextBlock
---@field Clicked FDialogueOptionEntry_CClicked
---@field Index int32
---@field Option FS_DialogueOption
---@field Selected FDialogueOptionEntry_CSelected
---@field LeaveButton boolean
---@field NPC ANPC_Base_C
local UDialogueOptionEntry_C = {}

---@param Button UCommonButtonBase
function UDialogueOptionEntry_C:BndEvt__DialogueOptionEntry_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UDialogueOptionEntry_C:BndEvt__DialogueOptionEntry_FS_Button_K2Node_ComponentBoundEvent_2_Selected__DelegateSignature(Button) end

---@param Index int32
function UDialogueOptionEntry_C:Clicked__DelegateSignature(Index) end

function UDialogueOptionEntry_C:Construct() end

---@param EntryPoint int32
function UDialogueOptionEntry_C:ExecuteUbergraph_DialogueOptionEntry(EntryPoint) end

---@param IsDesignTime boolean
function UDialogueOptionEntry_C:PreConstruct(IsDesignTime) end

---@param Index int32
function UDialogueOptionEntry_C:Selected__DelegateSignature(Index) end
