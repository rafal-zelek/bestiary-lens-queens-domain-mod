---@meta

---@class UJournalMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoryList UCategoryList_C
---@field CompletionBox_1 UCanvasPanel
---@field CompletionRateBox USizeBox
---@field CompletionRatePercent_1 UCommonTextBlock
---@field DescriptionAndStatsUIArea UUIArea_C
---@field DescriptionContainer UVerticalBox
---@field DescriptionScrollbox UScrollBox
---@field DescText UCommonRichTextBlock
---@field EnemyDescriptionBox UEnemyDescriptionBox_C
---@field EnemyStats UVerticalBox
---@field EntryList UVerticalBox
---@field EntryScrollbox UScrollBox
---@field FS_3DWidget UFS_3DWidget_C
---@field InteractibleArea UHorizontalBox
---@field JournalEntry UJournalEntry_C
---@field JournalEntry_1 UJournalEntry_C
---@field JournalEntry_2 UJournalEntry_C
---@field JournalEntry_3 UJournalEntry_C
---@field JournalEntry_4 UJournalEntry_C
---@field JournalEntry_5 UJournalEntry_C
---@field JournalEntry_6 UJournalEntry_C
---@field JournalEntry_7 UJournalEntry_C
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field MissingEnemyModeltext UCommonTextBlock
---@field NoteBG UImage
---@field NoteBG_1 UImage
---@field NoteCanvas UCanvasPanel
---@field NoteScrollBox UScrollBox
---@field NoteText UCommonRichTextBlock
---@field NoteTitleText UCommonTextBlock
---@field NPCName UCommonRichTextBlock
---@field RightSide UUIArea_C
---@field RightSideBG UUIArea_C
---@field RightSideBG_1 UUIArea_C
---@field Title UCommonTextBlock
---@field UIArea_358 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Closed FJournalMenu_CClosed
---@field JournalEntries TArray<UJournalEntry_C>
---@field LastSelectedIndex int32
---@field ['3DVis'] AJournal3DVisualizer_C
---@field LocalDT float
---@field NotesHints TArray<FButtonHint>
---@field DemoHints TArray<FButtonHint>
---@field AllEnemyData TArray<UEnemyData_C>
---@field JournalRWM AJournal_RWM_BP_C
local UJournalMenu_C = {}

---@param Index int32
function UJournalMenu_C:BndEvt__JournalMenu_CategoryList_K2Node_ComponentBoundEvent_0_CategoryChanged__DelegateSignature(Index) end

function UJournalMenu_C:Close() end

function UJournalMenu_C:Closed__DelegateSignature() end

function UJournalMenu_C:Construct() end

---@param EnemyData UEnemyData_C
function UJournalMenu_C:DisplayEnemyData(EnemyData) end

---@param NPCData UNPC_Data_C
function UJournalMenu_C:DisplayNPCData(NPCData) end

function UJournalMenu_C:DisplayNull() end

---@param InputPin UReadableText_DataAsset_C
function UJournalMenu_C:DisplayReadableText(InputPin) end

---@param EntryPoint int32
function UJournalMenu_C:ExecuteUbergraph_JournalMenu(EntryPoint) end

---@param Entry UJournalEntry_C
function UJournalMenu_C:ItemEntrySelected(Entry) end

function UJournalMenu_C:ManageFocus() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UJournalMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Up boolean
function UJournalMenu_C:PageSkip(Up) end

function UJournalMenu_C:RevertFocusToList() end

function UJournalMenu_C:ShowEnemyBestiary() end

function UJournalMenu_C:ShowNPCs() end

function UJournalMenu_C:ShowNotesInventory() end

function UJournalMenu_C:ShowTutorialsInventory() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UJournalMenu_C:SortEnemies(ObjectA, ObjectB, Result) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UJournalMenu_C:SortNPCs(ObjectA, ObjectB, Result) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UJournalMenu_C:SortNotes(ObjectA, ObjectB, Result) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UJournalMenu_C:Tick(MyGeometry, InDeltaTime) end

---@param Target UScrollBox
function UJournalMenu_C:UpdateScrollOffset(Target) end

---@param Entry UJournalEntry_C
function UJournalMenu_C:itemEntryClicked(Entry) end

UJournalMenu_C['UpdateCompletion%'] = function(self) end
