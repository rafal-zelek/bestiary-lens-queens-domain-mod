---@meta

---@class AOW_BridgeLock_BP_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field GlowSpriteComp UGlowSpriteComp_C
---@field StaticMesh UStaticMeshComponent
---@field BridgeDoor TArray<TScriptInterface<IActivatable_C>>
---@field Data UFS_FogData_Base
---@field StartingLightIntensity float
---@field StartingGlowColor FLinearColor
local AOW_BridgeLock_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AOW_BridgeLock_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AOW_BridgeLock_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AOW_BridgeLock_BP_C:ExecuteUbergraph_OW_BridgeLock_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AOW_BridgeLock_BP_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function AOW_BridgeLock_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AOW_BridgeLock_BP_C:SetBetaFogDA(DA) end

function AOW_BridgeLock_BP_C:UpdateFogDAValues() end

function AOW_BridgeLock_BP_C:UserConstructionScript() end
