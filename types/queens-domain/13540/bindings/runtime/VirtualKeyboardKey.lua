---@meta

---@class UVirtualKeyboardKey_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PressedAnimation UWidgetAnimation
---@field CharacterDisplay UTextBlock
---@field FS_Button UFS_Button_C
---@field Glow UImage
---@field Overlay_0 UOverlay
---@field SizeBox_0 USizeBox
---@field Hovered boolean
---@field CharacterToDisplay FString
---@field Clicked FVirtualKeyboardKey_CClicked
---@field DoubleWidth boolean
---@field Translation FVector2D
local UVirtualKeyboardKey_C = {}

---@param Button UCommonButtonBase
function UVirtualKeyboardKey_C:BndEvt__VirtualKeyboardKey_FS_Button_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UVirtualKeyboardKey_C:BndEvt__VirtualKeyboardKey_FS_Button_K2Node_ComponentBoundEvent_5_Selected__DelegateSignature(Button) end

---@param Button UFS_Button_C
function UVirtualKeyboardKey_C:BndEvt__VirtualKeyboardKey_FS_Button_K2Node_ComponentBoundEvent_6_Deselected__DelegateSignature(Button) end

---@param Character FString
function UVirtualKeyboardKey_C:Clicked__DelegateSignature(Character) end

---@param EntryPoint int32
function UVirtualKeyboardKey_C:ExecuteUbergraph_VirtualKeyboardKey(EntryPoint) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UVirtualKeyboardKey_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UVirtualKeyboardKey_C:PreConstruct(IsDesignTime) end

function UVirtualKeyboardKey_C:PressedExternally() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UVirtualKeyboardKey_C:Tick(MyGeometry, InDeltaTime) end
