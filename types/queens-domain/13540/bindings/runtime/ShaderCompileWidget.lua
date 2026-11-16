---@meta

---@class UShaderCompileWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CountDebug UCommonTextBlock
---@field HiddenCanvas UCanvasPanel
---@field Progress UProgressBar
local UShaderCompileWidget_C = {}

function UShaderCompileWidget_C:Construct() end

---@param EntryPoint int32
function UShaderCompileWidget_C:ExecuteUbergraph_ShaderCompileWidget(EntryPoint) end

---@param IsDesignTime boolean
function UShaderCompileWidget_C:PreConstruct(IsDesignTime) end
