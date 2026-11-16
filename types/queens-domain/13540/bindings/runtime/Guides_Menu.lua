---@meta

---@class UGuides_Menu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoryList UCategoryList_C
---@field EntryList UVerticalBox
---@field EntryScrollbox UScrollBox
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
---@field NoteBG UImage
---@field NoteBG_1 UImage
---@field NoteCanvas UCanvasPanel
---@field NoteScrollBox UScrollBox
---@field NoteText UCommonRichTextBlock
---@field NoteTitleText UCommonTextBlock
---@field NPCName UCommonRichTextBlock
---@field RightSideBG_1 UUIArea_C
---@field Title UCommonTextBlock
---@field UIArea_358 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Closed FGuides_Menu_CClosed
---@field JournalEntries TArray<UJournalEntry_C>
---@field LastSelectedIndex int32
---@field ['3DVis'] AJournal3DVisualizer_C
---@field LocalDT float
---@field NotesHints TArray<FButtonHint>
---@field AllEnemyData TArray<UEnemyData_C>
---@field DemoEnemyList TArray<UEnemyData_C>
---@field CurEntry UJournalEntry_C
local UGuides_Menu_C = {}

---@param Index int32
function UGuides_Menu_C:BndEvt__JournalMenu_CategoryList_K2Node_ComponentBoundEvent_0_CategoryChanged__DelegateSignature(Index) end

function UGuides_Menu_C:Close() end

function UGuides_Menu_C:Closed__DelegateSignature() end

function UGuides_Menu_C:Construct() end

---@param bNewInputType ECommonInputType
function UGuides_Menu_C:CustomEvent_0(bNewInputType) end

function UGuides_Menu_C:DisplayNull() end

---@param InputPin UReadableText_DataAsset_C
function UGuides_Menu_C:DisplayReadableText(InputPin) end

---@param EntryPoint int32
function UGuides_Menu_C:ExecuteUbergraph_Guides_Menu(EntryPoint) end

---@param SourceText FText
---@param Result FText
function UGuides_Menu_C:FormatKeybinds(SourceText, Result) end

---@param InActionName FName
---@param Binding1 FText
function UGuides_Menu_C:GetActionButtonNames(InActionName, Binding1) end

---@param Mapping FKey
---@param Name FText
---@param Bound boolean
function UGuides_Menu_C:GetActionMappingName(Mapping, Name, Bound) end

---@param Result FText
function UGuides_Menu_C:GetNoKeyBoundText(Result) end

---@param Entry UJournalEntry_C
function UGuides_Menu_C:ItemEntrySelected(Entry) end

function UGuides_Menu_C:ManageFocus() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UGuides_Menu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function UGuides_Menu_C:RevertFocusToList() end

function UGuides_Menu_C:ShowEnemyBestiary() end

function UGuides_Menu_C:ShowNPCs() end

function UGuides_Menu_C:ShowNotesInventory() end

function UGuides_Menu_C:ShowTutorialsInventory() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UGuides_Menu_C:SortEnemies(ObjectA, ObjectB, Result) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UGuides_Menu_C:SortNPCs(ObjectA, ObjectB, Result) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UGuides_Menu_C:SortNotes(ObjectA, ObjectB, Result) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UGuides_Menu_C:Tick(MyGeometry, InDeltaTime) end

---@param Entry UJournalEntry_C
function UGuides_Menu_C:itemEntryClicked(Entry) end
