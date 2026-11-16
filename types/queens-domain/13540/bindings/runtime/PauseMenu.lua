---@meta

---@class UPauseMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScreenFade UWidgetAnimation
---@field FailedToUseItem UWidgetAnimation
---@field Open UWidgetAnimation
---@field AllMenus UOverlay
---@field Bestiary UFS_Button_C
---@field BestiaryBox USizeBox
---@field Challenges UFS_Button_C
---@field ChallengesBox USizeBox
---@field ChallengesLabel UCommonTextBlock
---@field CommonTextBlock_0 UCommonTextBlock
---@field ConfirmDialogueText UCommonTextBlock
---@field ContinueButton UFS_Button_C
---@field DebugMenuButton UButton
---@field ExitCancelButton UFS_Button_C
---@field ExitConfirmButton UFS_Button_C
---@field ExitDialogue UCanvasPanel
---@field FadeScreen UImage
---@field FS_Modal UFS_Modal_C
---@field GuideBox USizeBox
---@field Guides UFS_Button_C
---@field ItemActioNText UCommonTextBlock
---@field Journalname UCommonTextBlock
---@field Journalname_1 UCommonTextBlock
---@field Menu UCanvasPanel
---@field MenuBorder UBorder
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field OptionsButton UFS_Button_C
---@field PhotoMode UFS_Button_C
---@field PhotoModeBox USizeBox
---@field PhotoModeLabel UCommonTextBlock
---@field QuitToDesktopBox USizeBox
---@field QuitToDesktopButton UFS_Button_C
---@field QuitTomenuButton UFS_Button_C
---@field SkipCutsceneBox USizeBox
---@field SkipCutsceneButton UFS_Button_C
---@field StatusBox USizeBox
---@field Statusbutton UFS_Button_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field UseItemDenyGraphic_3 UBorder
---@field ModalOpen boolean
---@field ModalOpenTime float
---@field ExitGameDialogueCancel FPauseMenu_CExitGameDialogueCancel
---@field ExitGameDialogueConfirm FPauseMenu_CExitGameDialogueConfirm
---@field InOptions boolean
---@field ListeningForMenuPassword boolean
---@field DebugMenuPassword TArray<FKey>
---@field LastInputCharacters TArray<FKey>
---@field ActiveOptionsMenu UOptionsMenu_C
---@field Closing boolean
---@field LastFocusedOption UWidget
---@field InJournal boolean
---@field QuickSubmenu boolean
---@field LockedOut boolean
---@field InGuides boolean
---@field QuitMenuIsSuspend boolean
---@field InChallenges boolean
---@field BlockUnPause boolean
local UPauseMenu_C = {}

function UPauseMenu_C:BackFromOptions() end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__OptionsMenu_ModalConfirmButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__OptionsMenu_modalCancelButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UPauseMenu_C:BndEvt__PauseMenu_Button_0_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_Challenges_K2Node_ComponentBoundEvent_8_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_ContinueButton_K2Node_ComponentBoundEvent_9_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_Guides_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_JournalButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_OptionsButton_1_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_OptionsButton_K2Node_ComponentBoundEvent_10_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_PhotoMode_K2Node_ComponentBoundEvent_11_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_QuitToDesktopButton_K2Node_ComponentBoundEvent_7_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_QuitTomenuButton_K2Node_ComponentBoundEvent_8_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UPauseMenu_C:BndEvt__PauseMenu_SkipCutsceneButton_K2Node_ComponentBoundEvent_14_CommonButtonBaseClicked__DelegateSignature(Button) end

function UPauseMenu_C:CheckDebugMenuPassword() end

---@param CutsceneSkip boolean
function UPauseMenu_C:Close(CutsceneSkip) end

function UPauseMenu_C:CloseModalDialogue() end

function UPauseMenu_C:ConfirmExitToDesktop() end

function UPauseMenu_C:ConfirmExitToMenu() end

function UPauseMenu_C:ConfirmSuspendToDesktop() end

function UPauseMenu_C:ConfirmSuspendToTitle() end

function UPauseMenu_C:Construct() end

---@param Button UFS_Button_C
function UPauseMenu_C:CustomEvent_0(Button) end

function UPauseMenu_C:CustomEvent_1() end

function UPauseMenu_C:CustomEvent_2() end

function UPauseMenu_C:DontSkipCutscene() end

---@param EntryPoint int32
function UPauseMenu_C:ExecuteUbergraph_PauseMenu(EntryPoint) end

function UPauseMenu_C:ExitGameDialogueCancel__DelegateSignature() end

function UPauseMenu_C:ExitGameDialogueConfirm__DelegateSignature() end

function UPauseMenu_C:GetQuitMenuText() end

function UPauseMenu_C:JournalClosed() end

function UPauseMenu_C:LockOutFade() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UPauseMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function UPauseMenu_C:OpenChallenges() end

function UPauseMenu_C:OpenDebugMenu() end

---@param Question FText
---@param QuitMenuIsSuspend boolean
function UPauseMenu_C:OpenExitDialogue(Question, QuitMenuIsSuspend) end

function UPauseMenu_C:OpenGuides() end

function UPauseMenu_C:OpenJournal() end

function UPauseMenu_C:OpenOptions() end

---@param IsDesignTime boolean
function UPauseMenu_C:PreConstruct(IsDesignTime) end

function UPauseMenu_C:SkipCutscene() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UPauseMenu_C:Tick(MyGeometry, InDeltaTime) end
