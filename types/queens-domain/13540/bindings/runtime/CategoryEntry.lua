---@meta

---@class UCategoryEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Button UFS_Button_C
---@field Image_45 UImage
---@field Clicked FCategoryEntry_CClicked
---@field Index int32
---@field Image UTexture2D
---@field Hovered boolean
---@field Selected boolean
---@field Journal boolean
local UCategoryEntry_C = {}

---@param Button UCommonButtonBase
function UCategoryEntry_C:BndEvt__CategoryEntry_FS_Button_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end

function UCategoryEntry_C:BndEvt__CategoryEntry_FS_Button_K2Node_ComponentBoundEvent_2_Hovered__DelegateSignature() end

function UCategoryEntry_C:BndEvt__CategoryEntry_FS_Button_K2Node_ComponentBoundEvent_3_Unhovered__DelegateSignature() end

---@param Index int32
function UCategoryEntry_C:Clicked__DelegateSignature(Index) end

function UCategoryEntry_C:Construct() end

---@param EntryPoint int32
function UCategoryEntry_C:ExecuteUbergraph_CategoryEntry(EntryPoint) end

---@param IsDesignTime boolean
function UCategoryEntry_C:PreConstruct(IsDesignTime) end

function UCategoryEntry_C:RefreshVisualState() end

---@param Selected boolean
function UCategoryEntry_C:SetState(Selected) end
