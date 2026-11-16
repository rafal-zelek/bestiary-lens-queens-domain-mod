---@meta

---@class UFoodGetAnims_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackUp ULevelUpAnimation_C
---@field Healing ULevelUpAnimation_C
---@field HealthUp ULevelUpAnimation_C
---@field LuckAndResUp ULevelUpAnimation_C
---@field MagicRateUp ULevelUpAnimation_C
---@field SpeedUp ULevelUpAnimation_C
---@field ItemToAnim TMap<UFS_ItemData_C, ULevelUpAnimation_C>
local UFoodGetAnims_C = {}

function UFoodGetAnims_C:Construct() end

function UFoodGetAnims_C:CustomEvent_0() end

---@param EntryPoint int32
function UFoodGetAnims_C:ExecuteUbergraph_FoodGetAnims(EntryPoint) end

function UFoodGetAnims_C:InitItemToAnimMap() end

---@param ItemData UFS_ItemData_C
function UFoodGetAnims_C:ItemChanged(ItemData) end
