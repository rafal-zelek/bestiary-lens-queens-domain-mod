---@meta

---@class ASecretTeleporterDestination_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field LocationData UFS_LocationData
---@field LocationRenderer AActor
local ASecretTeleporterDestination_C = {}

---@param EntryPoint int32
function ASecretTeleporterDestination_C:ExecuteUbergraph_SecretTeleporterDestination(EntryPoint) end

function ASecretTeleporterDestination_C:GetAltThumbnailRenderer() end

function ASecretTeleporterDestination_C:GetLocationData() end

function ASecretTeleporterDestination_C:GetThumbnailRenderer() end

function ASecretTeleporterDestination_C:IsRenderer() end

---@param Actor AActor
---@param Mode FName
function ASecretTeleporterDestination_C:ReceiveTeleport(Actor, Mode) end

---@param Renderer TScriptInterface<IFS_Destination>
function ASecretTeleporterDestination_C:SetAltThumbnailRenderer(Renderer) end

---@param Renderer TScriptInterface<IFS_Destination>
function ASecretTeleporterDestination_C:SetThumbnailRenderer(Renderer) end

function ASecretTeleporterDestination_C:UpdateTeleportTransform() end

function ASecretTeleporterDestination_C:UserConstructionScript() end
