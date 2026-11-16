---@meta

---@class ADagger_Visuals_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field VisualComps TArray<UPrimitiveComponent>
---@field FPArmsComp USkeletalMeshComponent
local ADagger_Visuals_Base_C = {}

---@param EntryPoint int32
function ADagger_Visuals_Base_C:ExecuteUbergraph_Dagger_Visuals_Base(EntryPoint) end

function ADagger_Visuals_Base_C:ReceiveBeginPlay() end

function ADagger_Visuals_Base_C:SetHide() end

function ADagger_Visuals_Base_C:SetShow() end
