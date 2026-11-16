---@meta

---@class APoltegeist_BestiaryBP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Chair UStaticMeshComponent
---@field Planter UStaticMeshComponent
---@field Table UStaticMeshComponent
---@field WoobleRoot3 USceneComponent
---@field WoobleRoot2 USceneComponent
---@field WoobleRoot1 USceneComponent
---@field gd_pots_05 UStaticMeshComponent
---@field gd_pots_03 UStaticMeshComponent
---@field gd_pots_04 UStaticMeshComponent
---@field Lib_Flowers UStaticMeshComponent
local APoltegeist_BestiaryBP_C = {}

---@param EntryPoint int32
function APoltegeist_BestiaryBP_C:ExecuteUbergraph_Poltegeist_BestiaryBP(EntryPoint) end

---@param DeltaSeconds float
function APoltegeist_BestiaryBP_C:ReceiveTick(DeltaSeconds) end
