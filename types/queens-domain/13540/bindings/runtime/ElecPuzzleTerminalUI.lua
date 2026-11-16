---@meta

---@class UElecPuzzleTerminalUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Open UWidgetAnimation
---@field Cheat UFS_Button_C
---@field CoinDisplay UItemDisplay_C
---@field CoinIcon UImage
---@field Exit UFS_Button_C
---@field NPCName UCommonRichTextBlock
---@field NPCNameBox UOverlay
---@field Refill UFS_Button_C
---@field Reset UFS_Button_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field ElecPuzzleTerm AElecPuzzleTerminal_C
---@field OpenTime float
---@field Closed FElecPuzzleTerminalUI_CClosed
---@field ClosedB boolean
local UElecPuzzleTerminalUI_C = {}

---@param Button UCommonButtonBase
function UElecPuzzleTerminalUI_C:BndEvt__ElecPuzzleTerminalUI_Cheat_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UElecPuzzleTerminalUI_C:BndEvt__ElecPuzzleTerminalUI_Exit_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UElecPuzzleTerminalUI_C:BndEvt__ElecPuzzleTerminalUI_Refill_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UElecPuzzleTerminalUI_C:BndEvt__ElecPuzzleTerminalUI_Reset_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UElecPuzzleTerminalUI_C:Close() end

function UElecPuzzleTerminalUI_C:Closed__DelegateSignature() end

function UElecPuzzleTerminalUI_C:Construct() end

---@param EntryPoint int32
function UElecPuzzleTerminalUI_C:ExecuteUbergraph_ElecPuzzleTerminalUI(EntryPoint) end

function UElecPuzzleTerminalUI_C:ManageFocus() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UElecPuzzleTerminalUI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UElecPuzzleTerminalUI_C:Tick(MyGeometry, InDeltaTime) end

function UElecPuzzleTerminalUI_C:UpdateFontStyle() end
