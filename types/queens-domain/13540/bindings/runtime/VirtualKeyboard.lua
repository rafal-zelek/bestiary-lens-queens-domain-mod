---@meta

---@class UVirtualKeyboard_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['0'] UVirtualKeyboardKey_C
---@field ['1'] UVirtualKeyboardKey_C
---@field ['2'] UVirtualKeyboardKey_C
---@field ['3'] UVirtualKeyboardKey_C
---@field ['4'] UVirtualKeyboardKey_C
---@field ['5'] UVirtualKeyboardKey_C
---@field ['6'] UVirtualKeyboardKey_C
---@field ['7'] UVirtualKeyboardKey_C
---@field ['8'] UVirtualKeyboardKey_C
---@field ['9'] UVirtualKeyboardKey_C
---@field BackspaceKey UVirtualKeyboardKey_C
---@field ClearButton UVirtualKeyboardKey_C
---@field ConfirmKey UVirtualKeyboardKey_C
---@field LeftArrow UVirtualKeyboardKey_C
---@field LetterKeys UWrapBox
---@field NextPageButton UVirtualKeyboardKey_C
---@field NumberKeys UCanvasPanel
---@field PrevPageButton UVirtualKeyboardKey_C
---@field RetainerBox_0 URetainerBox
---@field RightArrow UVirtualKeyboardKey_C
---@field Textbox UFS_Textbox_C
---@field Keys TMap<FString, UVirtualKeyboardKey_C>
---@field ConfirmButton UVirtualKeyboardKey_C
---@field BackspaceButton UVirtualKeyboardKey_C
---@field CloseButtonPressed FVirtualKeyboard_CCloseButtonPressed
---@field NormalKeyPressed FVirtualKeyboard_CNormalKeyPressed
---@field LeftKeyPressed FVirtualKeyboard_CLeftKeyPressed
---@field RightKeyPressed FVirtualKeyboard_CRightKeyPressed
---@field ConfirmPressed FVirtualKeyboard_CConfirmPressed
---@field BackspaceKeyPressed FVirtualKeyboard_CBackspaceKeyPressed
---@field NextPageKey FVirtualKeyboard_CNextPageKey
---@field PrevPageKey FVirtualKeyboard_CPrevPageKey
local UVirtualKeyboard_C = {}

---@param Character FString
function UVirtualKeyboard_C:BackspaceButtonPressed(Character) end

function UVirtualKeyboard_C:BackspaceKeyPressed__DelegateSignature() end

---@param Character FString
function UVirtualKeyboard_C:BndEvt__VirtualKeyboard_ClearButton_K2Node_ComponentBoundEvent_2_Clicked__DelegateSignature(Character) end

---@param Character FString
function UVirtualKeyboard_C:BndEvt__VirtualKeyboard_NextPageButton_K2Node_ComponentBoundEvent_1_Clicked__DelegateSignature(Character) end

---@param Character FString
function UVirtualKeyboard_C:BndEvt__VirtualKeyboard_PrevPageButton_K2Node_ComponentBoundEvent_0_Clicked__DelegateSignature(Character) end

---@param Character FString
function UVirtualKeyboard_C:CharacterClicked(Character) end

function UVirtualKeyboard_C:ClearText() end

function UVirtualKeyboard_C:CloseButtonPressed__DelegateSignature() end

---@param Character FString
function UVirtualKeyboard_C:ConfirmButtonPressed(Character) end

---@param CurrentString FString
function UVirtualKeyboard_C:ConfirmPressed__DelegateSignature(CurrentString) end

function UVirtualKeyboard_C:Construct() end

---@param EntryPoint int32
function UVirtualKeyboard_C:ExecuteUbergraph_VirtualKeyboard(EntryPoint) end

---@param Character FString
function UVirtualKeyboard_C:LeftKey(Character) end

function UVirtualKeyboard_C:LeftKeyPressed__DelegateSignature() end

function UVirtualKeyboard_C:NextPageKey__DelegateSignature() end

---@param Key FString
function UVirtualKeyboard_C:NormalKeyPressed__DelegateSignature(Key) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UVirtualKeyboard_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param IsDesignTime boolean
function UVirtualKeyboard_C:PreConstruct(IsDesignTime) end

function UVirtualKeyboard_C:PrevPageKey__DelegateSignature() end

---@param Key FString
function UVirtualKeyboard_C:RealKeyPressed(Key) end

---@param Character FString
function UVirtualKeyboard_C:RightKey(Character) end

function UVirtualKeyboard_C:RightKeyPressed__DelegateSignature() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UVirtualKeyboard_C:Tick(MyGeometry, InDeltaTime) end
