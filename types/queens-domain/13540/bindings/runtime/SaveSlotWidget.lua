---@meta

---@class USaveSlotWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Accessory0 USaveSlot_ItemDisplay_C
---@field Accessory1 USaveSlot_ItemDisplay_C
---@field Accessory2 USaveSlot_ItemDisplay_C
---@field AreaNameLabel UCommonTextBlock
---@field AreaScreenshot UImage
---@field CoinCount UCommonTextBlock
---@field CoinIcon USaveSlot_ItemDisplay_C
---@field Dagger0 USaveSlot_ItemDisplay_C
---@field Dagger1 USaveSlot_ItemDisplay_C
---@field Dagger2 USaveSlot_ItemDisplay_C
---@field ending1 UImage
---@field ending2 UImage
---@field ending3 UImage
---@field ending4 UImage
---@field FS_Button UFS_Button_C
---@field Image UImage
---@field Image_175 UImage
---@field LevelValue UCommonTextBlock
---@field NewGameModeSwitcher UWidgetSwitcher
---@field PlayTime UCommonTextBlock
---@field SaveDate UCommonTextBlock
---@field Shade UImage
---@field Weapon0 USaveSlot_ItemDisplay_C
---@field Weapon1 USaveSlot_ItemDisplay_C
---@field Weapon2 USaveSlot_ItemDisplay_C
---@field Weapons UHorizontalBox
---@field ['My Save'] UFS_SaveSlot_C
---@field Index int32
---@field titlescreen UTitleScreenUI_C
---@field Backup boolean
---@field BackupIndex int32
---@field ['Is Suspend Save'] boolean
local USaveSlotWidget_C = {}

---@param Button UCommonButtonBase
function USaveSlotWidget_C:BndEvt__SaveSlotWidget_FS_Button_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end

function USaveSlotWidget_C:Construct() end

---@param In FDateTime
function USaveSlotWidget_C:DateTimeTOText(In) end

---@param EntryPoint int32
function USaveSlotWidget_C:ExecuteUbergraph_SaveSlotWidget(EntryPoint) end

---@param InFocusEvent FFocusEvent
function USaveSlotWidget_C:OnAddedToFocusPath(InFocusEvent) end

---@param IsDesignTime boolean
function USaveSlotWidget_C:PreConstruct(IsDesignTime) end

---@param Navigation EUINavigation
function USaveSlotWidget_C:PressedRightNavButton(Navigation) end

---@param My_Save UFS_SaveSlot_C
function USaveSlotWidget_C:Refresh(My_Save) end

function USaveSlotWidget_C:UpdateEndingsIcons() end
