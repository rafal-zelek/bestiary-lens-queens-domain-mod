---@meta

---@class AWebBossWall_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BossWebWallFX UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Timeline_0_BurnProgress_63DA1AD4495C1C5D11F95E9C516FDFCC float
---@field Timeline_0__Direction_63DA1AD4495C1C5D11F95E9C516FDFCC ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field AlphaDA UENVControlData_C
---@field BetaDA UENVControlData_C
---@field PreviewProgress float
local AWebBossWall_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AWebBossWall_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AWebBossWall_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AWebBossWall_BP_C:ExecuteUbergraph_WebBossWall_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AWebBossWall_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function AWebBossWall_BP_C:ReceiveBeginPlay() end

---@param DA UENVControlData_C
function AWebBossWall_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AWebBossWall_BP_C:SetBetaFogDA(DA) end

function AWebBossWall_BP_C:Timeline_0__FinishedFunc() end

function AWebBossWall_BP_C:Timeline_0__UpdateFunc() end

function AWebBossWall_BP_C:UpdateFogDAValues() end

function AWebBossWall_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AWebBossWall_BP_C['Restore State From Save Data'] = function(self, Data) end
