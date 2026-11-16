---@meta

---@class UGrimoire_UI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LeftPageEntries UVerticalBox
---@field RightPageEntries UVerticalBox
---@field Close FGrimoire_UI_CClose
---@field IsClosing boolean
---@field DisplayedPasswords FString
---@field Submitting boolean
---@field ['Virtual Keyboard'] UVirtualKeyboard_C
---@field CurrentPasswordSetIndex int32
---@field PrimaryUI boolean
---@field PageTurnComplete FGrimoire_UI_CPageTurnComplete
local UGrimoire_UI_C = {}

function UGrimoire_UI_C:CloseUI() end

function UGrimoire_UI_C:Close__DelegateSignature() end

function UGrimoire_UI_C:Construct() end

---@param Password FString
function UGrimoire_UI_C:DoAcceptedAnimation(Password) end

---@param Password FString
function UGrimoire_UI_C:DoRejectAnimation(Password) end

---@param EntryPoint int32
function UGrimoire_UI_C:ExecuteUbergraph_Grimoire_UI(EntryPoint) end

function UGrimoire_UI_C:FadeInvalidEntries() end

function UGrimoire_UI_C:GetNewEntryPageContainer() end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UGrimoire_UI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function UGrimoire_UI_C:PageTurnComplete__DelegateSignature() end

---@param Set int32
function UGrimoire_UI_C:RefreshDisplayedPasswords(Set) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UGrimoire_UI_C:Tick(MyGeometry, InDeltaTime) end
