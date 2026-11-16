---@meta

---@class ALibrary_RotateBridge_C : AElevator_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field Sound USceneComponent
---@field Fog UENVControlData_C
local ALibrary_RotateBridge_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALibrary_RotateBridge_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALibrary_RotateBridge_C:ExecuteUbergraph_Library_RotateBridge(EntryPoint) end

function ALibrary_RotateBridge_C:GetCollidingComponents() end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALibrary_RotateBridge_C:GetCurrentFogDAs(Alpha, Beta) end

function ALibrary_RotateBridge_C:NotifyLeversAboutStartMove() end

---@param DA UENVControlData_C
function ALibrary_RotateBridge_C:SetAlphaFogDA(DA) end

function ALibrary_RotateBridge_C:UpdateFogDAValues() end

function ALibrary_RotateBridge_C:UserConstructionScript() end
