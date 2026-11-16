---@meta

---@class ALevelLoadNavmeshFixer_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cube UStaticMeshComponent
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field OptionalLevelMask TSet<FString>
---@field ShowSolid boolean
local ALevelLoadNavmeshFixer_C = {}

---@param EntryPoint int32
function ALevelLoadNavmeshFixer_C:ExecuteUbergraph_LevelLoadNavmeshFixer(EntryPoint) end

function ALevelLoadNavmeshFixer_C:LevelLoadFinished() end

---@param LevelName FString
function ALevelLoadNavmeshFixer_C:OnLevelBecameVisible_Event_0(LevelName) end

function ALevelLoadNavmeshFixer_C:ReceiveBeginPlay() end

function ALevelLoadNavmeshFixer_C:UserConstructionScript() end
