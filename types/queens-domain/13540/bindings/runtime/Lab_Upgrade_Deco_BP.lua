---@meta

---@class ALab_Upgrade_Deco_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WorldEventReceiver UWorldEventReceiver_C
---@field Key_NSD FName
---@field Material UMaterialInterface
local ALab_Upgrade_Deco_BP_C = {}

---@param NewValue int32
function ALab_Upgrade_Deco_BP_C:BndEvt__Lab_Upgrade_Deco_BP_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnQuestStateUpdated__DelegateSignature(NewValue) end

function ALab_Upgrade_Deco_BP_C:BndEvt__Lab_Upgrade_Deco_BP_WorldEventReceiver_K2Node_ComponentBoundEvent_2_OnWorldStateChanged__DelegateSignature() end

---@param EntryPoint int32
function ALab_Upgrade_Deco_BP_C:ExecuteUbergraph_Lab_Upgrade_Deco_BP(EntryPoint) end

function ALab_Upgrade_Deco_BP_C:ReceiveBeginPlay() end

function ALab_Upgrade_Deco_BP_C:UserConstructionScript() end
