---@meta

---@class UKeyUseMenu_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OpenAnim UWidgetAnimation
---@field DescScroll UScrollBox
---@field FocusHack UButton
---@field FS_DescriptionText UFS_DescriptionText_C
---@field ItemList UHorizontalBox
---@field ItemName UCommonTextBlock
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox UCommonHierarchicalScrollBox
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field KeyEntries boolean
---@field LastSelectedInventoryIndex int32
---@field KeyItemEntries TArray<UKeyUseMenuEntry_C>
---@field Player AFS_PlayerChar_C
---@field DefaultErrorMessage FText
---@field NoItemDesc FText
---@field HasAnyValidKeys boolean
---@field Hidden boolean
local UKeyUseMenu_C = {}

function UKeyUseMenu_C:BndEvt__KeyUseMenu_Button_106_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end

function UKeyUseMenu_C:Close() end

function UKeyUseMenu_C:Closed() end

function UKeyUseMenu_C:ConfirmPressed() end

function UKeyUseMenu_C:Construct() end

---@param EntryPoint int32
function UKeyUseMenu_C:ExecuteUbergraph_KeyUseMenu(EntryPoint) end

function UKeyUseMenu_C:FillKeyList() end

---@param InputPin UFS_ItemData_C
function UKeyUseMenu_C:GetNameForItem(InputPin) end

function UKeyUseMenu_C:Hide() end

---@param Item UFS_ItemData_C
---@param Index int32
function UKeyUseMenu_C:ItemSelectionChanged(Item, Index) end

---@param Item UFS_ItemData_C
function UKeyUseMenu_C:KeyClicked(Item) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UKeyUseMenu_C:KeyUseMenu_AutoGenFunc(ObjectA, ObjectB, Result) end

function UKeyUseMenu_C:LastKey() end

function UKeyUseMenu_C:NextKey() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UKeyUseMenu_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function UKeyUseMenu_C:Open() end

function UKeyUseMenu_C:RefreshKeyList() end

function UKeyUseMenu_C:Show() end

---@param InputPin UFS_ItemData_C
function UKeyUseMenu_C:ShowItem(InputPin) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UKeyUseMenu_C:Tick(MyGeometry, InDeltaTime) end

UKeyUseMenu_C['Safely Select Closest Key To Last'] = function(self) end
