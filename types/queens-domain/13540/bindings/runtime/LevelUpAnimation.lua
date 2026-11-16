---@meta

---@class ULevelUpAnimation_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LevelUp UWidgetAnimation
---@field CanvasPanel_1 UCanvasPanel
---@field CommonTextBlock_73 UCommonTextBlock
---@field Flare UImage
---@field Flare_1 UImage
---@field Flare_2 UImage
---@field Flare_3 UImage
---@field Flare_4 UImage
---@field Shadow UImage
---@field Text FText
---@field LevelUpCue USoundBase
local ULevelUpAnimation_C = {}

function ULevelUpAnimation_C:Construct() end

function ULevelUpAnimation_C:End() end

---@param EntryPoint int32
function ULevelUpAnimation_C:ExecuteUbergraph_LevelUpAnimation(EntryPoint) end

function ULevelUpAnimation_C:Play() end

---@param IsDesignTime boolean
function ULevelUpAnimation_C:PreConstruct(IsDesignTime) end

function ULevelUpAnimation_C:SequenceEvent__ENTRYPOINTLevelUpAnimation_0() end
