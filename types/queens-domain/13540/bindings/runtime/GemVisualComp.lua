---@meta

---@class UGemVisualComp_C : UStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerRef AFS_PlayerChar_C
local UGemVisualComp_C = {}

---@param EntryPoint int32
function UGemVisualComp_C:ExecuteUbergraph_GemVisualComp(EntryPoint) end

function UGemVisualComp_C:FlareUp() end

---@param Charged boolean
---@param Fill float
---@param Cursed boolean
function UGemVisualComp_C:SetState(Charged, Fill, Cursed) end
