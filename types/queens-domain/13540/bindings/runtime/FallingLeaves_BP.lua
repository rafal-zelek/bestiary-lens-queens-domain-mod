---@meta

---@class AFallingLeaves_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
---@field Leaves UUFB_CustomBoundsComp
---@field Box UBoxComponent
---@field CullingBox UBoxComponent
---@field Scene USceneComponent
---@field Timeline_0_Fade_CFCEDB514AB1468EF8EEC8B4CF98ADF9 float
---@field Timeline_0__Direction_CFCEDB514AB1468EF8EEC8B4CF98ADF9 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field LeavInstanceMult float
---@field CullBoxPos FVector
---@field CullBoxWidth float
---@field CullBoxRot float
---@field CullBoxHeightScale float
---@field Leaf1Index float
---@field Leaf2Index float
---@field FallDistMultiplier float
---@field WindMult float
---@field AlphaFog UENVControlData_C
---@field BetaFog UENVControlData_C
---@field BaseWindDir FVector
---@field WindRotation float
---@field OutputLeafCount int32
---@field BaseInstMult float
---@field LeafSize float
local AFallingLeaves_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFallingLeaves_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Target UInstancedStaticMeshComponent
function AFallingLeaves_BP_C:AddCullCornersToInstances(Target) end

---@param Target UInstancedStaticMeshComponent
function AFallingLeaves_BP_C:AddInst(Target) end

function AFallingLeaves_BP_C:ConfigureInstances() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFallingLeaves_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFallingLeaves_BP_C:ExecuteUbergraph_FallingLeaves_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFallingLeaves_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AFallingLeaves_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFallingLeaves_BP_C:SetBetaFogDA(DA) end

function AFallingLeaves_BP_C:SetUpCullBox() end

---@param WorldTransform FTransform
---@param InputPin UInstancedStaticMeshComponent
function AFallingLeaves_BP_C:SetUpCullCorner(WorldTransform, InputPin) end

function AFallingLeaves_BP_C:Timeline_0__FinishedFunc() end

function AFallingLeaves_BP_C:Timeline_0__UpdateFunc() end

function AFallingLeaves_BP_C:UpdateCoreData() end

function AFallingLeaves_BP_C:UpdateFogDAValues() end

function AFallingLeaves_BP_C:UserConstructionScript() end
