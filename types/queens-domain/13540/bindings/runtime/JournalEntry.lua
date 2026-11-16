---@meta

---@class UJournalEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Name UCommonTextBlock
---@field Number UCommonTextBlock
---@field Index int32
---@field Clicked FJournalEntry_CClicked
---@field JournalEntryType JournalEntryType::Type
---@field Selected FJournalEntry_CSelected
---@field Label FText
---@field EntryData UObject
---@field bestiaryNumberLabel FText
local UJournalEntry_C = {}

---@param Button UFS_Button_C
function UJournalEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UJournalEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Entry UJournalEntry_C
function UJournalEntry_C:Clicked__DelegateSignature(Entry) end

function UJournalEntry_C:Construct() end

---@param EntryPoint int32
function UJournalEntry_C:ExecuteUbergraph_JournalEntry(EntryPoint) end

---@param SelectedEntry UJournalEntry_C
function UJournalEntry_C:Selected__DelegateSignature(SelectedEntry) end
