---@meta

---@class ALever_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field Mesh UStaticMeshComponent
---@field Timeline_0_Anim_D8110049461910B3D0AEE9B72E05CD99 float
---@field Timeline_0__Direction_D8110049461910B3D0AEE9B72E05CD99 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field AnimateLever_Anim_C5629A9D400A41257328D092B1B6EDEB float
---@field AnimateLever__Direction_C5629A9D400A41257328D092B1B6EDEB ETimelineDirection::Type
---@field AnimateLever UTimelineComponent
---@field ['Valid Keys'] TSet<UFS_ItemData_C>
---@field KeyTags TSet<FName>
---@field ActivatableTargets TArray<TScriptInterface<IActivatable_C>>
---@field ['Activate Controls Interactibility'] boolean
---@field ToggledOn boolean
---@field Activated FLever_CActivated
---@field DisableSaving boolean
---@field ActivateSound USoundBase
---@field IncorrectKeyText FText
---@field InteractingPlayer AActor
---@field Fog UENVControlData_C
---@field Fog_Beta UENVControlData_C
---@field Disabled boolean
---@field DisableFogVertexColor boolean
local ALever_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALever_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param ActivatedFromLoad boolean
function ALever_C:Activated__DelegateSignature(ActivatedFromLoad) end

function ALever_C:AnimateLeverPull() end

function ALever_C:AnimateLeverReset() end

function ALever_C:AnimateLever__FinishedFunc() end

function ALever_C:AnimateLever__UpdateFunc() end

function ALever_C:ConfigureForElevator() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ALever_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALever_C:ExecuteUbergraph_Lever(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALever_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ALever_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ALever_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param PlayerInteracting AActor
function ALever_C:Interact(PlayerInteracting) end

function ALever_C:Reset() end

---@param DA UENVControlData_C
function ALever_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ALever_C:SetBetaFogDA(DA) end

---@param Disabled boolean
function ALever_C:SetDisabled(Disabled) end

function ALever_C:Timeline_0__FinishedFunc() end

function ALever_C:Timeline_0__UpdateFunc() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ALever_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ALever_C:UpdateFogDAValues() end

function ALever_C:UserConstructionScript() end

function ALever_C:ValidKeyInserted() end

---@param Data TArray<FSavableActorState>
ALever_C['Restore State From Save Data'] = function(self, Data) end

ALever_C['Restore to switched'] = function(self) end
