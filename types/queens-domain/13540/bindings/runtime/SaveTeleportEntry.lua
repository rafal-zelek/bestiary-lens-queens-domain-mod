---@meta

---@class USaveTeleportEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Name UCommonTextBlock
---@field SelectBorder UBorder
---@field Shadow UImage
---@field AreaData UFS_LocationData
---@field TeleportTo FSaveTeleportEntry_CTeleportTo
---@field Selected FSaveTeleportEntry_CSelected
local USaveTeleportEntry_C = {}

---@param Button UFS_Button_C
function USaveTeleportEntry_C:BndEvt__TeleporterDestination_FS_Button_K2Node_ComponentBoundEvent_3_Selected__DelegateSignature(Button) end

---@param Button UFS_Button_C
function USaveTeleportEntry_C:BndEvt__TeleporterDestination_FS_Button_K2Node_ComponentBoundEvent_4_Deselected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function USaveTeleportEntry_C:BndEvt__TeleporterDestination_FS_Button_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(Button) end

function USaveTeleportEntry_C:Construct() end

---@param EntryPoint int32
function USaveTeleportEntry_C:ExecuteUbergraph_SaveTeleportEntry(EntryPoint) end

---@param IsDesignTime boolean
function USaveTeleportEntry_C:PreConstruct(IsDesignTime) end

---@param Loc UFS_LocationData
function USaveTeleportEntry_C:Selected__DelegateSignature(Loc) end

---@param Teleporter UFS_LocationData
function USaveTeleportEntry_C:TeleportTo__DelegateSignature(Teleporter) end
