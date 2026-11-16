---@meta

---@class UTeleporterDestination_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Name UCommonTextBlock
---@field AreaData UFS_LocationData
---@field Unlocked boolean
---@field TeleportTo FTeleporterDestination_CTeleportTo
---@field AlreadyHere boolean
---@field SavePoint boolean
---@field Selected FTeleporterDestination_CSelected
---@field ExitButton boolean
local UTeleporterDestination_C = {}

---@param Button UFS_Button_C
function UTeleporterDestination_C:BndEvt__TeleporterDestination_FS_Button_K2Node_ComponentBoundEvent_0_Selected__DelegateSignature(Button) end

---@param Button UCommonButtonBase
function UTeleporterDestination_C:BndEvt__TeleporterDestination_FS_Button_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(Button) end

function UTeleporterDestination_C:Configure() end

---@param EntryPoint int32
function UTeleporterDestination_C:ExecuteUbergraph_TeleporterDestination(EntryPoint) end

function UTeleporterDestination_C:IsUnlocked() end

---@param IsDesignTime boolean
function UTeleporterDestination_C:PreConstruct(IsDesignTime) end

---@param Location UFS_LocationData
function UTeleporterDestination_C:Selected__DelegateSignature(Location) end

---@param Teleporter UFS_LocationData
function UTeleporterDestination_C:TeleportTo__DelegateSignature(Teleporter) end
