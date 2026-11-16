---@meta

---@class ADropDown_Markup_Spline_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field Billboard UBillboardComponent
---@field Root USceneComponent
---@field DistanceBetweenNavLinks float
---@field NavLinks TArray<UNavLinkComponent>
---@field Arrows TArray<UArrowComponent>
---@field FlipDirection boolean
local ADropDown_Markup_Spline_C = {}

function ADropDown_Markup_Spline_C:CreateNavLinks() end

---@param EntryPoint int32
function ADropDown_Markup_Spline_C:ExecuteUbergraph_DropDown_Markup_Spline(EntryPoint) end

---@param Location FVector
---@param Projection_Height float
---@param Valid boolean
function ADropDown_Markup_Spline_C:ProjectNavLinkToMesh(Location, Projection_Height, Valid) end

function ADropDown_Markup_Spline_C:RebuildNavNearby() end

function ADropDown_Markup_Spline_C:ReceiveBeginPlay() end

function ADropDown_Markup_Spline_C:UserConstructionScript() end

---@param Index int32
---@param Count int32
ADropDown_Markup_Spline_C['Calculate Nav Link Spline Pos'] = function(self, Index, Count) end
