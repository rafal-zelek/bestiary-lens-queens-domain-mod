---@meta

---@class UChallengeEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Icon UImage
---@field Name UCommonTextBlock
---@field Index int32
---@field Clicked FChallengeEntry_CClicked
---@field Selected FChallengeEntry_CSelected
---@field EntryData FFS_ChallengeDefinition
---@field TargetGlowiness float
---@field Glowiness float
local UChallengeEntry_C = {}

---@param Button UFS_Button_C
function UChallengeEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UChallengeEntry_C:BndEvt__InventoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(Button) end

---@param Entry UChallengeEntry_C
function UChallengeEntry_C:Clicked__DelegateSignature(Entry) end

function UChallengeEntry_C:Construct() end

---@param EntryPoint int32
function UChallengeEntry_C:ExecuteUbergraph_ChallengeEntry(EntryPoint) end

---@param SelectedEntry UChallengeEntry_C
function UChallengeEntry_C:Selected__DelegateSignature(SelectedEntry) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UChallengeEntry_C:Tick(MyGeometry, InDeltaTime) end
