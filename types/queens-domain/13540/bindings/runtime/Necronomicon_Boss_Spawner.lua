---@meta

---@class ANecronomicon_Boss_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EaterHeight USceneComponent
---@field BookBlockerBox UBoxComponent
---@field InteractBox UBoxComponent
---@field BookLoc USceneComponent
---@field StartingLectern USkeletalMeshComponent
---@field EaterLoc USkeletalMeshComponent
---@field MeatPlatforms TArray<ANecro_MeatPlatform_C>
---@field BossFightActivatables TArray<TScriptInterface<IActivatable_C>>
---@field StartingZombieSpawners int32
---@field InteractText FText
---@field Door ANecro_Boss_Door_C
---@field LecternStartPos FTransform
local ANecronomicon_Boss_Spawner_C = {}

function ANecronomicon_Boss_Spawner_C:BndEvt__Necronomicon_Boss_Spawner_SaveHelper_K2Node_ComponentBoundEvent_0_SaveDataLoaded__DelegateSignature() end

function ANecronomicon_Boss_Spawner_C:CustomEvent_0() end

---@param EntryPoint int32
function ANecronomicon_Boss_Spawner_C:ExecuteUbergraph_Necronomicon_Boss_Spawner(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ANecronomicon_Boss_Spawner_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ANecronomicon_Boss_Spawner_C:HideLectern() end

---@param PlayerInteracting AActor
function ANecronomicon_Boss_Spawner_C:Interact(PlayerInteracting) end

function ANecronomicon_Boss_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ANecronomicon_Boss_Spawner_C:ReceiveBeginPlay() end

function ANecronomicon_Boss_Spawner_C:SetUpEncounter() end
