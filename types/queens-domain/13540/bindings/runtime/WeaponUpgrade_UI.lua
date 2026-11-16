---@meta

---@class UWeaponUpgrade_UI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['3DWindow_2'] UOverlay
---@field ['3DWindow_Upgrade'] UOverlay
---@field CoinDisplay UItemDisplay_C
---@field DescriptionWindow UOverlay
---@field FS_3dUpgradeWidget UFS_3DWidget_C
---@field FS_3DWidget UFS_3DWidget_C
---@field FS_DescriptionText UFS_DescriptionText_C
---@field FS_Modal UFS_Modal_C
---@field ItemInspect_DescriptionScrollbox UScrollBox
---@field ItemInspect_StatsSpacer UImage
---@field ItemInspect_WeaponStats UWeaponStats_C
---@field ItemName UCommonTextBlock
---@field ListBox UVerticalBox
---@field ListContainer UCanvasPanel
---@field MainPanel UCanvasPanel
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox_0 UScrollBox
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Upgrade3dView UFS_3DWidget_C
---@field WeaponUpgradeEntry UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_1 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_2 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_3 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_4 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_5 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_6 UWeaponUpgradeEntry_C
---@field WeaponUpgradeEntry_7 UWeaponUpgradeEntry_C
---@field UpgradeEntries TArray<UWeaponUpgradeEntry_C>
---@field AllItems TArray<UFS_Item>
---@field FilteredItems TArray<UFS_ItemData_C>
---@field RealItemCount int32
---@field LastSelected int32
---@field UpgradedItemCount int32
---@field CurrentItem UFS_ItemData_C
---@field Closed FWeaponUpgrade_UI_CClosed
---@field CurrentPurchaseEntry UWeaponUpgradeEntry_C
---@field ExitButton UWeaponUpgradeEntry_C
---@field Station AWeaponUpgradeMachine_C
local UWeaponUpgrade_UI_C = {}

---@param InputPin UFS_ItemData_C
function UWeaponUpgrade_UI_C:CanUpgradeItem(InputPin) end

function UWeaponUpgrade_UI_C:CancelModal() end

function UWeaponUpgrade_UI_C:Close() end

function UWeaponUpgrade_UI_C:Closed__DelegateSignature() end

function UWeaponUpgrade_UI_C:ConfirmedUpgrade() end

function UWeaponUpgrade_UI_C:Construct() end

---@param ItemData UFS_ItemData_C
function UWeaponUpgrade_UI_C:DisplayItem(ItemData) end

---@param Entry UWeaponUpgradeEntry_C
function UWeaponUpgrade_UI_C:EntryClicked(Entry) end

---@param Weapon UWeaponUpgradeEntry_C
function UWeaponUpgrade_UI_C:EntrySelected(Weapon) end

---@param EntryPoint int32
function UWeaponUpgrade_UI_C:ExecuteUbergraph_WeaponUpgrade_UI(EntryPoint) end

---@param Focus UFS_Button_C
function UWeaponUpgrade_UI_C:GetDefaultFocusWidget(Focus) end

---@param Value float
function UWeaponUpgrade_UI_C:NumToTex(Value) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UWeaponUpgrade_UI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param Question FText
---@param Fail boolean
function UWeaponUpgrade_UI_C:OpenModalDialogue(Question, Fail) end

---@param Up boolean
function UWeaponUpgrade_UI_C:PageSkip(Up) end

function UWeaponUpgrade_UI_C:RefreshList() end

---@param Item UFS_ItemData_C
function UWeaponUpgrade_UI_C:SetItemView(Item) end

function UWeaponUpgrade_UI_C:ShopPurchaseCancelled() end

function UWeaponUpgrade_UI_C:SortAndParentEntries() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UWeaponUpgrade_UI_C:SortEntries(ObjectA, ObjectB, Result) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UWeaponUpgrade_UI_C:SortItems(ObjectA, ObjectB, Result) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UWeaponUpgrade_UI_C:Tick(MyGeometry, InDeltaTime) end

function UWeaponUpgrade_UI_C:UpdateBalance() end

---@param DT float
function UWeaponUpgrade_UI_C:UpdateUpgradeRotation(DT) end
