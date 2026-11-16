---@meta

---@class UGrimoire_Entry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOutAnim UWidgetAnimation
---@field DrawInAnim UWidgetAnimation
---@field DrawInRetainer URetainerBox
---@field ShownPasswords UCommonTextBlock
---@field ['In Text'] FText
---@field DrawIn boolean
---@field HideAfterDrawIn boolean
---@field DrawInProgress float
---@field FadeOutProgress float
local UGrimoire_Entry_C = {}

function UGrimoire_Entry_C:Construct() end

---@param EntryPoint int32
function UGrimoire_Entry_C:ExecuteUbergraph_Grimoire_Entry(EntryPoint) end

function UGrimoire_Entry_C:FadeIfInvalid() end

---@param IsDesignTime boolean
function UGrimoire_Entry_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UGrimoire_Entry_C:Tick(MyGeometry, InDeltaTime) end
