---@meta

---@class IOptionsEntry_C : IInterface
local IOptionsEntry_C = {}

---@param List UOptionsList_base_C
function IOptionsEntry_C:Init(List) end

---@param TemplateDefaults UFS_SystemSave_C
function IOptionsEntry_C:RevertToDefault(TemplateDefaults) end
