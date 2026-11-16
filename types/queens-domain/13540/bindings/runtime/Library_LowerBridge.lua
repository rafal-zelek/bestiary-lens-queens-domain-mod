---@meta

---@class ALibrary_LowerBridge_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sound USceneComponent
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Anim_5BB65E824D6B8FE194989E915E9F7ECA float
---@field Timeline_0__Direction_5BB65E824D6B8FE194989E915E9F7ECA ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Fog UENVControlData_C
---@field StartRotation FRotator
local ALibrary_LowerBridge_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALibrary_LowerBridge_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ALibrary_LowerBridge_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALibrary_LowerBridge_C:ExecuteUbergraph_Library_LowerBridge(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALibrary_LowerBridge_C:GetCurrentFogDAs(Alpha, Beta) end

---@param DA UENVControlData_C
function ALibrary_LowerBridge_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ALibrary_LowerBridge_C:SetBetaFogDA(DA) end

function ALibrary_LowerBridge_C:Timeline_0__Bounces__EventFunc() end

function ALibrary_LowerBridge_C:Timeline_0__FinishedFunc() end

function ALibrary_LowerBridge_C:Timeline_0__UpdateFunc() end

function ALibrary_LowerBridge_C:UpdateFogDAValues() end

function ALibrary_LowerBridge_C:Updatenav() end

function ALibrary_LowerBridge_C:UserConstructionScript() end
