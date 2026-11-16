---@meta

---@class UOptionsMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Audio_OptionsList UAudio_OptionsList_C
---@field AudioOptions UCanvasPanel
---@field BindingButtonm UFS_Button_C
---@field BindingDialogue UCanvasPanel
---@field BindingDialogueText UCommonTextBlock
---@field BindingOptions UCanvasPanel
---@field Bindings_OptionsList UBindings_OptionsList_C
---@field ConfirmDialogue UCanvasPanel
---@field ConfirmDialogueText UCommonTextBlock
---@field ConfirmDialogueText_1 UCommonTextBlock
---@field Control_OptionsList UControl_OptionsList_C
---@field ControlOptions UCanvasPanel
---@field Debug_OptionsList UDebug_OptionsList_C
---@field DebugOptions UCanvasPanel
---@field ErrorWindow UFS_Modal_C
---@field Game_OptionsList UGame_OptionsList_C
---@field GameOptions UCanvasPanel
---@field Image_283 UImage
---@field LanguageSelectOption UOptionsMenu_Entry_C
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field modalCancelButton UFS_Button_C
---@field ModalConfirmButton UFS_Button_C
---@field ModalDesc UCommonTextBlock
---@field ModalWindow UFS_Modal_C
---@field OptionsMenu_LanguageSelector UOptionsMenu_LanguageSelector_C
---@field OptionsSelectMenu UCanvasPanel
---@field OptionsSelector UCanvasPanel
---@field TopLevel_AudioButton UFS_Button_C
---@field TopLevel_ControlButton UFS_Button_C
---@field TopLevel_GameButton UFS_Button_C
---@field TopLevel_VideoButton UFS_Button_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field UIPanelSwitcher UWidgetSwitcher
---@field UseItemDenyGraphic UBorder
---@field Video_OptionsList UVideo_OptionsList_C
---@field VideoOptions UCanvasPanel
---@field LastSelectedInventoryIndex int32
---@field InventoryEntries TArray<UOptionsMenu_Entry_C>
---@field Close FOptionsMenu_CClose
---@field ModalOpenTime float
---@field ModalDialogueConfirm FOptionsMenu_CModalDialogueConfirm
---@field ModalDialogueCancel FOptionsMenu_CModalDialogueCancel
---@field ModalOpen boolean
---@field LastSelectedWidget UWidget
---@field ActivelyBindingButtons boolean
---@field InMenu boolean
---@field OptionListsToButton TMap<UWidget, UWidget>
---@field BindingSelected FOptionsMenu_CBindingSelected
---@field InBindingScreen boolean
---@field ActiveList UOptionsList_base_C
---@field BindingScreenHints TArray<FButtonHint>
---@field BindingScreenHints_Console TArray<FButtonHint>
---@field BindingGamepadMode boolean
---@field ['Binding ID'] FName
local UOptionsMenu_C = {}

---@param Key FKey
function UOptionsMenu_C:BindingInputDetected(Key) end

---@param Key FKey
---@param Cancel boolean
function UOptionsMenu_C:BindingSelected__DelegateSignature(Key, Cancel) end

function UOptionsMenu_C:BndEvt__OptionsMenu_ModalWindow_K2Node_ComponentBoundEvent_1_Closed__DelegateSignature() end

function UOptionsMenu_C:BndEvt__OptionsMenu_ModalWindow_K2Node_ComponentBoundEvent_2_Opened__DelegateSignature() end

function UOptionsMenu_C:BndEvt__OptionsMenu_OptionsMenu_LanguageSelector_K2Node_ComponentBoundEvent_7_Swapped__DelegateSignature() end

---@param Button UCommonButtonBase
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_AudioButton_K2Node_ComponentBoundEvent_6_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_AudioButton_K2Node_ComponentBoundEvent_8_Selected__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_ControlButton_K2Node_ComponentBoundEvent_10_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_ControlButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_GameButton_K2Node_ComponentBoundEvent_11_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_GameButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_VideoButton_K2Node_ComponentBoundEvent_13_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UOptionsMenu_C:BndEvt__OptionsMenu_TopLevel_VideoButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(Button) end

function UOptionsMenu_C:CloseBindingDialogue() end

function UOptionsMenu_C:CloseMenu() end

function UOptionsMenu_C:CloseModalDialogue() end

function UOptionsMenu_C:Close__DelegateSignature() end

function UOptionsMenu_C:ConfirmUnappliedVideoSettings() end

function UOptionsMenu_C:Construct() end

function UOptionsMenu_C:DoVideoMenuExitFlow() end

---@param EntryPoint int32
function UOptionsMenu_C:ExecuteUbergraph_OptionsMenu(EntryPoint) end

function UOptionsMenu_C:GetConsoleBindingText() end

---@param Widget UWidget
function UOptionsMenu_C:GetDefaultFocus(Widget) end

function UOptionsMenu_C:ModalDialogueCancel__DelegateSignature() end

function UOptionsMenu_C:ModalDialogueConfirm__DelegateSignature() end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UOptionsMenu_C:OnMouseWheel(MyGeometry, MouseEvent) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UOptionsMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UOptionsMenu_C:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end

---@param BindingName FText
---@param Gamepad boolean
---@param BindingID FName
function UOptionsMenu_C:OpenBindingDialogue(BindingName, Gamepad, BindingID) end

---@param IsDesignTime boolean
function UOptionsMenu_C:PreConstruct(IsDesignTime) end

function UOptionsMenu_C:RefreshScreen() end

function UOptionsMenu_C:SwapToAudiomenu() end

---@param Gamepad boolean
function UOptionsMenu_C:SwapToBindingMenu(Gamepad) end

function UOptionsMenu_C:SwapToControlMenu() end

function UOptionsMenu_C:SwapToDebugMenu() end

function UOptionsMenu_C:SwapToGameMenu() end

function UOptionsMenu_C:SwapToRootMenu() end

function UOptionsMenu_C:SwapToVideoMenu() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UOptionsMenu_C:Tick(MyGeometry, InDeltaTime) end

UOptionsMenu_C['Revert Unapplied Video Settings'] = function(self) end
