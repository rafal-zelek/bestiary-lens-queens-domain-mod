---@meta

---@class ANecro_Deco_Base_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Owning Necro Wall'] ANecroWall_Manager_BP_C
---@field DissolveStartPos FVector
local ANecro_Deco_Base_C = {}

function ANecro_Deco_Base_C:DissolveFinished() end

function ANecro_Deco_Base_C:DissolveStarted() end

---@param Radius float
function ANecro_Deco_Base_C:DissolveUpdated(Radius) end

---@param EntryPoint int32
function ANecro_Deco_Base_C:ExecuteUbergraph_Necro_Deco_Base(EntryPoint) end

---@param Pos FVector
---@param CollisionDisableDelay float
function ANecro_Deco_Base_C:InternalDissolveStarted(Pos, CollisionDisableDelay) end

function ANecro_Deco_Base_C:LoadedAsDissolved() end

function ANecro_Deco_Base_C:ReceiveBeginPlay() end

function ANecro_Deco_Base_C:SetUpBindings() end

function ANecro_Deco_Base_C:Updatenav() end

function ANecro_Deco_Base_C:UserConstructionScript() end
