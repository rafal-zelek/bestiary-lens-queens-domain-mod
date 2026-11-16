---@meta

---@class ASwampBubblesFX_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BubblesH UHierarchicalInstancedStaticMeshComponent
---@field StinkH UHierarchicalInstancedStaticMeshComponent
---@field Box UBoxComponent
---@field CullingBox UBoxComponent
---@field Scene USceneComponent
---@field Timeline_0_Fade_4D6CA271444048CA99C2C98251CB1B14 float
---@field Timeline_0__Direction_4D6CA271444048CA99C2C98251CB1B14 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field BubblesCount float
---@field StinkCount float
---@field BonusVel FVector
---@field CullBoxPos FVector
---@field CullBoxWidth float
---@field CullBoxDepth float
---@field CullBoxRot float
---@field CullBoxHeightScale float
---@field TotalParticleCount float
local ASwampBubblesFX_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASwampBubblesFX_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param Target UInstancedStaticMeshComponent
function ASwampBubblesFX_C:AddCullCornersToInstances(Target) end

---@param Target UInstancedStaticMeshComponent
function ASwampBubblesFX_C:AddInst(Target) end

function ASwampBubblesFX_C:AutoAssociate() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASwampBubblesFX_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASwampBubblesFX_C:ExecuteUbergraph_SwampBubblesFX(EntryPoint) end

function ASwampBubblesFX_C:FindAndSetCurseFountain() end

function ASwampBubblesFX_C:SetUpCullBox() end

---@param WorldTransform FTransform
---@param InputPin UInstancedStaticMeshComponent
function ASwampBubblesFX_C:SetUpCullCorner(WorldTransform, InputPin) end

function ASwampBubblesFX_C:Timeline_0__FinishedFunc() end

function ASwampBubblesFX_C:Timeline_0__UpdateFunc() end

function ASwampBubblesFX_C:UserConstructionScript() end
