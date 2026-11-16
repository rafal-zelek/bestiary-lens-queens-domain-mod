---@meta

---@class ULoadBackupScreen_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field SaveSlotWidget_0 USaveSlotWidget_C
---@field SaveSlotWidget_1 USaveSlotWidget_C
---@field SaveSlotWidget_2 USaveSlotWidget_C
---@field SaveSlotWidget_3 USaveSlotWidget_C
---@field SaveSlotWidget_4 USaveSlotWidget_C
---@field Shade UImage
---@field Title UCommonTextBlock
---@field ['Save Slots'] TArray<USaveSlotWidget_C>
---@field Backups TArray<UFS_SaveSlot_C>
---@field Cancelled FLoadBackupScreen_CCancelled
---@field titlescreen UTitleScreenUI_C
local ULoadBackupScreen_C = {}

---@param Button UCommonButtonBase
function ULoadBackupScreen_C:BndEvt__LoadBackupScreen_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function ULoadBackupScreen_C:Cancelled__DelegateSignature() end

function ULoadBackupScreen_C:Construct() end

---@param EntryPoint int32
function ULoadBackupScreen_C:ExecuteUbergraph_LoadBackupScreen(EntryPoint) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function ULoadBackupScreen_C:LoadBackupScreen_AutoGenFunc(ObjectA, ObjectB, Result) end

---@param SlotIndex int32
function ULoadBackupScreen_C:LoadBackups(SlotIndex) end
