---@meta

---@class UTitleScreenUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScreenFade UWidgetAnimation
---@field IntroAnim UWidgetAnimation
---@field BlackLogoOverlay UImage
---@field BlockerButton UButton
---@field CompanyLogo UImage
---@field CompanyLogo_1 UImage
---@field companylogobg UImage
---@field ConfirmButtonText UCommonTextBlock
---@field CreditFocusFix UFS_Button_C
---@field Credits UFS_Button_C
---@field Credits_218 UCredits_C
---@field CreditsContainer UBorder
---@field DeleteFileBG UUIArea_C
---@field DeleteFileModal UFS_Modal_C
---@field DeleteFileScreen UCanvasPanel
---@field DeleteProgress UProgressBar
---@field DeleteSaveSlotWIdget USaveSlotWidget_C
---@field FadeScreen UImage
---@field FF_Logo UImage
---@field FS_Modal UFS_Modal_C
---@field IntroCanvas UCanvasPanel
---@field IntroInputBlocker UButton
---@field LanguageConfirmButton UFS_Button_C
---@field LanguageSelectOption UOptionsMenu_Entry_C
---@field LoadBackupScreen_C_1 ULoadBackupScreen_C
---@field LoadGameButton UFS_Button_C
---@field LoadMenuContainer UBorder
---@field LoadSavedGameBUtton UFS_Button_C
---@field LoadSavedGameContainer USizeBox
---@field LogoScaleBox UScaleBox
---@field MainOptions UBorder
---@field mainScreenSwitcher UWidgetSwitcher
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field MenuButtonHintsWidget_1 UMenuButtonHintsWidget_C
---@field MenuButtonHintsWidget_325 UMenuButtonHintsWidget_C
---@field menubuttonsstandin UOverlay
---@field Options UFS_Button_C
---@field OptionsMenu_LanguageSelector UOptionsMenu_LanguageSelector_C
---@field Quit UFS_Button_C
---@field SaveGamesUIArea UUIArea_C
---@field SaveScreenTitle UCommonTextBlock
---@field SaveScreenTitle_1 UCommonTextBlock
---@field SaveSlotWidget_0 USaveSlotWidget_C
---@field SaveSlotWidget_1 USaveSlotWidget_C
---@field SaveSlotWidget_2 USaveSlotWidget_C
---@field SaveSlotWidget_3 USaveSlotWidget_C
---@field SaveSlotWidget_4 USaveSlotWidget_C
---@field SuspendLoadWarning UCommonTextBlock
---@field TestBG UImage
---@field TestingVerNum UCommonTextBlock
---@field TitleScreenButtonsContainer UCanvasPanel
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field UnrealLogoScaleBox UScaleBox
---@field UserDisplayVerNum UCommonTextBlock
---@field VerNumBox UHorizontalBox
---@field VersionText UCommonTextBlock
---@field WishlistButton UWishlistButton_C
---@field laoding boolean
---@field InOptions boolean
---@field SaveGameList TArray<UFS_SaveSlot_C>
---@field TotalSlotsToLoad int32
---@field NewestSave int32
---@field InSaveMenu boolean
---@field NewGameMode boolean
---@field ModalOpen boolean
---@field ModalOpenTime float
---@field ModalDialogueCancel FTitleScreenUI_CModalDialogueCancel
---@field ModalDialogueConfirm FTitleScreenUI_CModalDialogueConfirm
---@field CurrentSlotContext int32
---@field AnyValidSaves boolean
---@field SaveSlots TArray<USaveSlotWidget_C>
---@field ['Delete Mode'] boolean
---@field LoadGameMenuHints TArray<FButtonHint>
---@field LoadGameMenuText FText
---@field DeleteModeText FText
---@field IntroPlaying boolean
---@field CreditsOpened boolean
---@field FocusedSaveSlot int32
---@field FBLogoSound UAudioComponent
---@field LoadBackupMenuOpen boolean
---@field CurrentBackupSlotContext int32
---@field CurrentSlotIsbackup boolean
---@field MenuCam ACameraActor
---@field IntroDone boolean
---@field LockedOut boolean
---@field InitialLanguageSelect boolean
---@field ShaderCompileInst ULevelStreamingDynamic
---@field ShaderCompileOverlay UShaderCompileWidget_C
---@field deletetimefill float
---@field blockfocus boolean
---@field VideoPlayer UMediaPlayer
---@field MediaTex UMediaTexture
---@field VerNum UVerNum_DA_C
local UTitleScreenUI_C = {}

function UTitleScreenUI_C:BackToMainMenu() end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_ConfirmButton_K2Node_ComponentBoundEvent_8_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_Credits_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UTitleScreenUI_C:BndEvt__TitleScreenUI_FS_Modal_K2Node_ComponentBoundEvent_5_Opened__DelegateSignature() end

function UTitleScreenUI_C:BndEvt__TitleScreenUI_FS_Modal_K2Node_ComponentBoundEvent_7_Closed__DelegateSignature() end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_LanguageConfirmButton_K2Node_ComponentBoundEvent_6_CommonButtonBaseClicked__DelegateSignature(Button) end

function UTitleScreenUI_C:BndEvt__TitleScreenUI_LoadBackupScreen_C_1_K2Node_ComponentBoundEvent_2_Cancelled__DelegateSignature() end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_LoadGameButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_Options_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UTitleScreenUI_C:BndEvt__TitleScreenUI_Quit_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

function UTitleScreenUI_C:CancelDeleteMode() end

function UTitleScreenUI_C:CancelLoadSuspend() end

function UTitleScreenUI_C:CancelledDelete() end

---@param Index int32
function UTitleScreenUI_C:ClearSuspendClicked(Index) end

function UTitleScreenUI_C:CloseCredits() end

function UTitleScreenUI_C:CloseLoadBackups() end

function UTitleScreenUI_C:CloseModal() end

function UTitleScreenUI_C:CompileShaders() end

function UTitleScreenUI_C:ConfirmLanguage() end

function UTitleScreenUI_C:ConfirmLoadSuspend() end

function UTitleScreenUI_C:Construct() end

function UTitleScreenUI_C:CustomEvent_1() end

function UTitleScreenUI_C:CustomEvent_2() end

function UTitleScreenUI_C:CustomEvent_3() end

function UTitleScreenUI_C:CustomEvent_4() end

function UTitleScreenUI_C:CustomEvent_5() end

function UTitleScreenUI_C:DeleteSlot() end

function UTitleScreenUI_C:DoneCompilingShaders() end

function UTitleScreenUI_C:DoneWithCompile() end

---@param EntryPoint int32
function UTitleScreenUI_C:ExecuteUbergraph_TitleScreenUI(EntryPoint) end

function UTitleScreenUI_C:IntroAnimFinished() end

function UTitleScreenUI_C:IsDeleteModeGamepadConfirmButtonPressed() end

function UTitleScreenUI_C:LoadSaves() end

function UTitleScreenUI_C:LockOutFade() end

function UTitleScreenUI_C:MainMenuMusicStart() end

function UTitleScreenUI_C:ModalDialogueCancelCallback() end

function UTitleScreenUI_C:ModalDialogueCancel__DelegateSignature() end

function UTitleScreenUI_C:ModalDialogueConfirmCallback() end

function UTitleScreenUI_C:ModalDialogueConfirm__DelegateSignature() end

function UTitleScreenUI_C:NewGameOnNewSlotConfirmed() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UTitleScreenUI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function UTitleScreenUI_C:OpenLoadBackupMenu() end

---@param Question FText
function UTitleScreenUI_C:OpenLoadGameModal(Question) end

---@param Question FText
function UTitleScreenUI_C:OpenModalDialogue(Question) end

function UTitleScreenUI_C:OptionsMenuClosed() end

function UTitleScreenUI_C:PlayFBLogo() end

function UTitleScreenUI_C:PlayFFLogoVid() end

---@param IsDesignTime boolean
function UTitleScreenUI_C:PreConstruct(IsDesignTime) end

function UTitleScreenUI_C:ReadyForIntro() end

function UTitleScreenUI_C:RefreshSlots() end

function UTitleScreenUI_C:ResetFocusPostDelete() end

function UTitleScreenUI_C:SaveGameOnDelay() end

---@param Navigation EUINavigation
function UTitleScreenUI_C:SaveSlot0Nav(Navigation) end

---@param Navigation EUINavigation
function UTitleScreenUI_C:SaveSlot1Nav(Navigation) end

---@param Navigation EUINavigation
function UTitleScreenUI_C:SaveSlot2Nav(Navigation) end

---@param Navigation EUINavigation
function UTitleScreenUI_C:SaveSlot3Nav(Navigation) end

---@param Navigation EUINavigation
function UTitleScreenUI_C:SaveSlot4Nav(Navigation) end

---@param Index int32
function UTitleScreenUI_C:SaveSlotFocused(Index) end

---@param Index int32
---@param Backup boolean
---@param BackupSlot int32
function UTitleScreenUI_C:SaveSlotSelected(Index, Backup, BackupSlot) end

function UTitleScreenUI_C:SequenceEvent__ENTRYPOINTTitleScreenUI_0() end

function UTitleScreenUI_C:SequenceEvent__ENTRYPOINTTitleScreenUI_1() end

function UTitleScreenUI_C:SequenceEvent__ENTRYPOINTTitleScreenUI_2() end

function UTitleScreenUI_C:SequenceEvent__ENTRYPOINTTitleScreenUI_3() end

function UTitleScreenUI_C:SetDefaultFOcus() end

function UTitleScreenUI_C:SetUpInitialLanguageSelect() end

function UTitleScreenUI_C:SetversionText() end

function UTitleScreenUI_C:Skip() end

function UTitleScreenUI_C:SkipIntroSplashes() end

function UTitleScreenUI_C:StartDeleteMode() end

function UTitleScreenUI_C:StartDeleteSlot() end

function UTitleScreenUI_C:StartIntroSplashes() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UTitleScreenUI_C:Tick(MyGeometry, InDeltaTime) end

function UTitleScreenUI_C:TriggerGameLoad() end

function UTitleScreenUI_C:UpdateDeleteMode() end

function UTitleScreenUI_C:UseLoadGameHints() end

function UTitleScreenUI_C:WrapUpSplashes() end

function UTitleScreenUI_C:cancelload() end

---@param Slot int32
---@param Backup boolean
---@param BackupSlot int32
UTitleScreenUI_C['Load Slot'] = function(self, Slot, Backup, BackupSlot) end
