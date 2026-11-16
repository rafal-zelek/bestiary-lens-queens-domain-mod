---@meta

---@class ABigNut_Interact_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractCollision USphereComponent
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Golem AEnemySpawner_C
---@field Fog UENVControlData_C
---@field AlreadyInteracted boolean
local ABigNut_Interact_C = {}

---@param EntryPoint int32
function ABigNut_Interact_C:ExecuteUbergraph_BigNut_Interact(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ABigNut_Interact_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ABigNut_Interact_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ABigNut_Interact_C:Interact(PlayerInteracting) end

function ABigNut_Interact_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function ABigNut_Interact_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ABigNut_Interact_C:SetBetaFogDA(DA) end

function ABigNut_Interact_C:SpawnedGolem() end

function ABigNut_Interact_C:UpdateFogDAValues() end

function ABigNut_Interact_C:UserConstructionScript() end
