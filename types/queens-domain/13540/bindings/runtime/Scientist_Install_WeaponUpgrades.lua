---@meta

---@class UScientist_Install_WeaponUpgrades_C : UFS_DialogueAction
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Counts TArray<int32>
local UScientist_Install_WeaponUpgrades_C = {}

---@param EntryPoint int32
function UScientist_Install_WeaponUpgrades_C:ExecuteUbergraph_Scientist_Install_WeaponUpgrades(EntryPoint) end

---@param Context AActor
function UScientist_Install_WeaponUpgrades_C:RunActionWithinContext(Context) end

function UScientist_Install_WeaponUpgrades_C:TurnInEggs() end
