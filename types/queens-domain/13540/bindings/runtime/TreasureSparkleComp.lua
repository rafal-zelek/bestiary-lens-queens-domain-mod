---@meta

---@class UTreasureSparkleComp_C : UInstancedStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sockets TArray<FTreasureSparkleTransientData>
---@field CycleLengthPerFlare float
---@field ActiveTime float
---@field Allmeshes TArray<UMeshComponent>
local UTreasureSparkleComp_C = {}

function UTreasureSparkleComp_C:CSPreview() end

function UTreasureSparkleComp_C:Construct() end

---@param EntryPoint int32
function UTreasureSparkleComp_C:ExecuteUbergraph_TreasureSparkleComp(EntryPoint) end

function UTreasureSparkleComp_C:ReceiveBeginPlay() end
