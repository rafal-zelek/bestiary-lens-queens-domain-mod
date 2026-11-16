---@meta

---@class ADropDown_Markup_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field InteractibleBox UBoxComponent
---@field SafeZoneBox UBoxComponent
---@field Billboard UBillboardComponent
---@field Root USceneComponent
---@field DistanceBetweenNavLinks float
---@field NavLinks TArray<UNavLinkCustomComponent>
---@field SingleNavLinkMode boolean
---@field SnapDistance float
local ADropDown_Markup_C = {}

function ADropDown_Markup_C:CreateNavLinks() end

---@param EntryPoint int32
function ADropDown_Markup_C:ExecuteUbergraph_DropDown_Markup(EntryPoint) end

---@param ActorToSnap AActor
---@param Position FVector
---@param Rotation FRotator
function ADropDown_Markup_C:GetSnapPos(ActorToSnap, Position, Rotation) end

---@param Location FVector
---@param Projection_Height float
---@param Valid boolean
function ADropDown_Markup_C:ProjectNavLinkToMesh(Location, Projection_Height, Valid) end

function ADropDown_Markup_C:RebuildNavNearby() end

function ADropDown_Markup_C:ReceiveBeginPlay() end

function ADropDown_Markup_C:UserConstructionScript() end

---@param Index int32
---@param Count int32
ADropDown_Markup_C['CalculateNavLinkY Pos From Index'] = function(self, Index, Count) end
