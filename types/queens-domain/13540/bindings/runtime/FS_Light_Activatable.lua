---@meta

---@class AFS_Light_Activatable_C : AFS_Light_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActivateAnim_NewTrack_0_C02C1E374B46B4786E79EDAFC6A48971 float
---@field ActivateAnim__Direction_C02C1E374B46B4786E79EDAFC6A48971 ETimelineDirection::Type
---@field ActivateAnim UTimelineComponent
---@field ActivatedIntensity float
---@field ActivatedColor FColor
---@field DeactivatedIntensity float
---@field DeactivatedColor FColor
---@field PreviewActivated boolean
---@field HasEverBeenSetByScript boolean
local AFS_Light_Activatable_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_Light_Activatable_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AFS_Light_Activatable_C:ActivateAnim__FinishedFunc() end

function AFS_Light_Activatable_C:ActivateAnim__UpdateFunc() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_Light_Activatable_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFS_Light_Activatable_C:ExecuteUbergraph_FS_Light_Activatable(EntryPoint) end

function AFS_Light_Activatable_C:InitLight() end

function AFS_Light_Activatable_C:ReceiveBeginPlay() end

---@param InputPin float
function AFS_Light_Activatable_C:SetInterp(InputPin) end

function AFS_Light_Activatable_C:UpdatePreviewCS() end

function AFS_Light_Activatable_C:UserConstructionScript() end
