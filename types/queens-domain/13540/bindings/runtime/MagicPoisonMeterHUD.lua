---@meta

---@class UMagicPoisonMeterHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Activate UWidgetAnimation
---@field FadeInAnim UWidgetAnimation
---@field CanvasPanel_0 UCanvasPanel
---@field Fill UImage
---@field Image_166 UImage
---@field Stacks UCommonTextBlock
---@field Visible boolean
local UMagicPoisonMeterHUD_C = {}

function UMagicPoisonMeterHUD_C:Construct() end

---@param EntryPoint int32
function UMagicPoisonMeterHUD_C:ExecuteUbergraph_MagicPoisonMeterHUD(EntryPoint) end

function UMagicPoisonMeterHUD_C:FadeIn() end

function UMagicPoisonMeterHUD_C:FadeOut() end

---@param Value float
---@param Max float
---@param Active boolean
function UMagicPoisonMeterHUD_C:updatedpoison(Value, Max, Active) end
