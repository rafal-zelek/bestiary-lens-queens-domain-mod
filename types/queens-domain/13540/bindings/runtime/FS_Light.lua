---@meta

---@class AFS_Light_C : APointLight
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CullDistMultiplier float
---@field Enabled boolean
---@field ActivationMode FSLightActivationMode::Type
---@field ['Starts Disabled'] boolean
---@field FadeTime float
---@field FadeStartTime float
---@field IntensityCached float
local AFS_Light_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_Light_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AFS_Light_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

function AFS_Light_C:Disable() end

function AFS_Light_C:Enable() end

function AFS_Light_C:EndFade() end

---@param EntryPoint int32
function AFS_Light_C:ExecuteUbergraph_FS_Light(EntryPoint) end

function AFS_Light_C:InitLight() end

function AFS_Light_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFS_Light_C:ReceiveTick(DeltaSeconds) end

function AFS_Light_C:RefreshEnabled() end

function AFS_Light_C:StartFade() end

function AFS_Light_C:UpdatePreviewCS() end

function AFS_Light_C:UserConstructionScript() end

---@param Percent float
---@param AnimTime float
AFS_Light_C['GetFade%'] = function(self, Percent, AnimTime) end
