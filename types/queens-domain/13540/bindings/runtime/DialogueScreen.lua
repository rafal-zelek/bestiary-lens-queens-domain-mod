---@meta

---@class UDialogueScreen_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field AdvanceButton UFS_Button_C
---@field DialogueOptionEntry UDialogueOptionEntry_C
---@field DialogueOptionEntry_1 UDialogueOptionEntry_C
---@field DialogueOptionsContainer UVerticalBox
---@field DialogueSequenceText UFB_AnimRichTextBlock
---@field DialogueTypeSwitcher UWidgetSwitcher
---@field Greeting UCommonTextBlock
---@field Leave UDialogueOptionEntry_C
---@field MoveOnIcon UImage
---@field NPCName UCommonRichTextBlock
---@field NPCNameBox UOverlay
---@field ScrollBox_112 UScrollBox
---@field SequenceConfirmButton UFS_Button_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field DialogueOptionChosen FDialogueScreen_CDialogueOptionChosen
---@field DialogueSequenceContinue FDialogueScreen_CDialogueSequenceContinue
---@field OptionsDialogue boolean
---@field SkipTime float
---@field LastSelectedOption int32
---@field CurrentExitOption UDialogueOptionEntry_C
---@field NPC ANPC_Base_C
---@field LeaveIndex int32
---@field DefaultFont FSlateFontInfo
---@field DefaultFont_Light FSlateFontInfo
local UDialogueScreen_C = {}

---@param Button UCommonButtonBase
function UDialogueScreen_C:BndEvt__DialogueScreen_CloseButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end

function UDialogueScreen_C:BndEvt__DialogueScreen_DialogueSequenceText_K2Node_ComponentBoundEvent_1_AnimTextFinishedPrinting__DelegateSignature() end

---@param Button UCommonButtonBase
function UDialogueScreen_C:BndEvt__DialogueScreen_SequenceConfirmButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function UDialogueScreen_C:ConfirmPressed() end

---@param Index int32
---@param Leave boolean
function UDialogueScreen_C:DialogueOptionChosen__DelegateSignature(Index, Leave) end

function UDialogueScreen_C:DialogueSequenceContinue__DelegateSignature() end

---@param EntryPoint int32
function UDialogueScreen_C:ExecuteUbergraph_DialogueScreen(EntryPoint) end

---@param Index int32
function UDialogueScreen_C:LastOption(Index) end

---@param Index int32
function UDialogueScreen_C:LeaveButtonCLicked(Index) end

function UDialogueScreen_C:ManageFocus() end

function UDialogueScreen_C:NextOption() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UDialogueScreen_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Index int32
function UDialogueScreen_C:OptionClicked(Index) end

function UDialogueScreen_C:PRevOption() end

---@param IsDesignTime boolean
function UDialogueScreen_C:PreConstruct(IsDesignTime) end

function UDialogueScreen_C:RemoveFromView() end

function UDialogueScreen_C:RevertFocus() end

---@param Options TArray<FS_DialogueOption>
---@param NPC ANPC_Base_C
---@param Header FText
function UDialogueScreen_C:ShowDialogueOptions(Options, NPC, Header) end

---@param Entry FS_DialogueSequenceEntry
---@param NPC ANPC_Base_C
function UDialogueScreen_C:ShowDialogueSequenceEntry(Entry, NPC) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UDialogueScreen_C:Tick(MyGeometry, InDeltaTime) end

function UDialogueScreen_C:UpdateFontStyle() end

---@param NPC ANPC_Base_C
UDialogueScreen_C['Update NPC'] = function(self, NPC) end
