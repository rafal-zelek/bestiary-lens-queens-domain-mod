---@meta

---@class ADek_Egg_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Dek_Egg_Activate UNiagaraComponent
---@field Dek_Egg USkeletalMeshComponent
---@field StaticMesh1 UStaticMeshComponent
---@field InteractBox UBoxComponent
---@field Dek_Enable_Progress float
---@field FadeSphere_LowerAmount float
---@field Dragon AROSDragon_Spawner_C
---@field LightsToManage TArray<AFS_Light_Activatable_C>
---@field Sequence ALevelSequenceActor
---@field Open boolean
---@field DoorToManage AROS_Door_BP_C
local ADek_Egg_BP_C = {}

---@param EntryPoint int32
function ADek_Egg_BP_C:ExecuteUbergraph_Dek_Egg_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ADek_Egg_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ADek_Egg_BP_C:Interact(PlayerInteracting) end

function ADek_Egg_BP_C:LoadDekanima() end

function ADek_Egg_BP_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function ADek_Egg_BP_C:ReceiveEndPlay(EndPlayReason) end

function ADek_Egg_BP_C:SpawnDragon() end

function ADek_Egg_BP_C:UpdateProgress() end

function ADek_Egg_BP_C:UserConstructionScript() end
