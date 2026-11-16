---@meta

---@class UChallenges_Menu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoryList UCategoryList_C
---@field ChallengeDesc UCommonTextBlock
---@field ChallengeEntry UChallengeEntry_C
---@field ChallengeEntry_1 UChallengeEntry_C
---@field ChallengeEntry_2 UChallengeEntry_C
---@field ChallengeEntry_3 UChallengeEntry_C
---@field ChallengeEntry_4 UChallengeEntry_C
---@field ChallengeEntry_5 UChallengeEntry_C
---@field ChallengeIcon UImage
---@field ChallengeModal UFS_Modal_C
---@field ChallengeTitle UCommonTextBlock
---@field CompletionBox UCanvasPanel
---@field CompletionRatePercent UCommonTextBlock
---@field CurrentStatValue UCommonTextBlock
---@field EntryList UVerticalBox
---@field EntryScrollbox UScrollBox
---@field FS_3DWidget UFS_3DWidget_C
---@field InteractibleArea UHorizontalBox
---@field MaxStatValue UCommonTextBlock
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field StatDisplayCanvas UCanvasPanel
---@field Title UCommonTextBlock
---@field UIArea_269 UUIArea_C
---@field UIArea_358 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Closed FChallenges_Menu_CClosed
---@field Entries TArray<UChallengeEntry_C>
---@field LastSelectedIndex int32
---@field LocalDT float
---@field NotesHints TArray<FButtonHint>
---@field ChallengeData UFS_ChallengeData
---@field SortedChallenges TArray<FFS_ChallengeDefinition>
---@field IndexMap TMap<int32, int32>
---@field OpenTime float
local UChallenges_Menu_C = {}

---@param Index int32
function UChallenges_Menu_C:BndEvt__JournalMenu_CategoryList_K2Node_ComponentBoundEvent_0_CategoryChanged__DelegateSignature(Index) end

function UChallenges_Menu_C:CancelThornBlade() end

function UChallenges_Menu_C:CheckChallengeBlade() end

function UChallenges_Menu_C:Close() end

function UChallenges_Menu_C:Closed__DelegateSignature() end

function UChallenges_Menu_C:Construct() end

---@param Entry UChallengeEntry_C
function UChallenges_Menu_C:EntryClicked(Entry) end

---@param EntryPoint int32
function UChallenges_Menu_C:ExecuteUbergraph_Challenges_Menu(EntryPoint) end

function UChallenges_Menu_C:GetTotalChallenges() end

function UChallenges_Menu_C:GrantThornBlade() end

---@param Entry UChallengeEntry_C
function UChallenges_Menu_C:ItemEntrySelected(Entry) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UChallenges_Menu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Up boolean
function UChallenges_Menu_C:PageSkip(Up) end

function UChallenges_Menu_C:PopulateList() end

---@param IsDesignTime boolean
function UChallenges_Menu_C:PreConstruct(IsDesignTime) end

function UChallenges_Menu_C:RevertFocusToList() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UChallenges_Menu_C:Tick(MyGeometry, InDeltaTime) end

function UChallenges_Menu_C:UpdateGlows() end

UChallenges_Menu_C['Manage Focus'] = function(self) end
