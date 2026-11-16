---@meta

---@class ALocationThumbnailRenderer_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PreviewCam UCameraComponent
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field DefaultSceneRoot USceneComponent
---@field ActorsToHide TArray<AActor>
---@field LocationActor AActor
---@field Alt boolean
local ALocationThumbnailRenderer_C = {}

---@param EntryPoint int32
function ALocationThumbnailRenderer_C:ExecuteUbergraph_LocationThumbnailRenderer(EntryPoint) end

function ALocationThumbnailRenderer_C:GetAltThumbnailRenderer() end

function ALocationThumbnailRenderer_C:GetLocationData() end

function ALocationThumbnailRenderer_C:GetThumbnailRenderer() end

function ALocationThumbnailRenderer_C:IsRenderer() end

---@param Actor AActor
---@param Mode FName
function ALocationThumbnailRenderer_C:ReceiveTeleport(Actor, Mode) end

---@param Renderer TScriptInterface<IFS_Destination>
function ALocationThumbnailRenderer_C:SetAltThumbnailRenderer(Renderer) end

---@param self2 UFS_LocationData
function ALocationThumbnailRenderer_C:SetRT(self2) end

---@param Renderer TScriptInterface<IFS_Destination>
function ALocationThumbnailRenderer_C:SetThumbnailRenderer(Renderer) end

function ALocationThumbnailRenderer_C:UpdateTeleportTransform() end

function ALocationThumbnailRenderer_C:UserConstructionScript() end
