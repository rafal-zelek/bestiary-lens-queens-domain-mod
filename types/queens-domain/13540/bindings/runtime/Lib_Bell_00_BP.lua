---@meta

---@class ALib_Bell_00_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Ring1x_NewTrack_0_3272C4BD41C5CF9BACB07D9A95D674B3 float
---@field Ring1x__Direction_3272C4BD41C5CF9BACB07D9A95D674B3 ETimelineDirection::Type
---@field Ring1x UTimelineComponent
---@field Ring2x_NewTrack_0_0D1C7B024B594CF891DD35BEAC39D54F float
---@field Ring2x__Direction_0D1C7B024B594CF891DD35BEAC39D54F ETimelineDirection::Type
---@field Ring2x UTimelineComponent
---@field Ring3x_NewTrack_0_5D4052BE46C3B380BB5C84AC4E54C1F7 float
---@field Ring3x__Direction_5D4052BE46C3B380BB5C84AC4E54C1F7 ETimelineDirection::Type
---@field Ring3x UTimelineComponent
---@field AlphaFog UENVControlData_C
---@field BetaFog UENVControlData_C
---@field RingActivatables TArray<TScriptInterface<IActivatable_C>>
local ALib_Bell_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_Bell_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ALib_Bell_00_BP_C:CheatRingBell() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_Bell_00_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALib_Bell_00_BP_C:ExecuteUbergraph_Lib_Bell_00_BP(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function ALib_Bell_00_BP_C:GetCurrentFogDAs(Alpha, Beta) end

function ALib_Bell_00_BP_C:Ring1x__FinishedFunc() end

function ALib_Bell_00_BP_C:Ring1x__Ring__EventFunc() end

function ALib_Bell_00_BP_C:Ring1x__UpdateFunc() end

function ALib_Bell_00_BP_C:Ring2x__FinishedFunc() end

function ALib_Bell_00_BP_C:Ring2x__Ring__EventFunc() end

function ALib_Bell_00_BP_C:Ring2x__UpdateFunc() end

function ALib_Bell_00_BP_C:Ring3x__FinishedFunc() end

function ALib_Bell_00_BP_C:Ring3x__Ring__EventFunc() end

function ALib_Bell_00_BP_C:Ring3x__UpdateFunc() end

---@param DA UENVControlData_C
function ALib_Bell_00_BP_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function ALib_Bell_00_BP_C:SetBetaFogDA(DA) end

function ALib_Bell_00_BP_C:UpdateFogDAValues() end

function ALib_Bell_00_BP_C:UserConstructionScript() end
