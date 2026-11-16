---@meta

---@class AJournal_RWM_BP_C : ARenderWorldManager_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OpacityCapture USceneCaptureComponent2D
---@field DirectionalLight2 UDirectionalLightComponent
---@field DirectionalLight UDirectionalLightComponent
---@field DirectionalLight1 UDirectionalLightComponent
---@field PostProcess UPostProcessComponent
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field TiltRoot USceneComponent
---@field ItemRoot USceneComponent
---@field CameraRoot USceneComponent
---@field Rotation float
---@field CurrentViewActor AActor
---@field ViewClass TSubclassOf<AActor>
---@field Config UPlayerBalance_C
---@field ['Enable View Clamp'] boolean
---@field DioramaClass TSubclassOf<AActor>
---@field DioramaActor AActor
---@field JournalData UQD_Journal_Data
---@field ['Initial Rotation'] float
local AJournal_RWM_BP_C = {}

---@param Axes FVector2D
function AJournal_RWM_BP_C:AddRotationAxisInput(Axes) end

---@param AngleDegrees float
---@param Clamped float
function AJournal_RWM_BP_C:ClampRotation(AngleDegrees, Clamped) end

function AJournal_RWM_BP_C:CleanUpCurrentActor() end

---@param _3dConfig FJournal_ViewConfig
function AJournal_RWM_BP_C:Configure3DView(_3dConfig) end

---@param EntryPoint int32
function AJournal_RWM_BP_C:ExecuteUbergraph_Journal_RWM_BP(EntryPoint) end

function AJournal_RWM_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJournal_RWM_BP_C:ReceiveTick(DeltaSeconds) end

---@param Item TSubclassOf<AActor>
---@param ViewConfig UQD_Journal_Data
---@param Diorama__Nonfunctional_ TSubclassOf<AActor>
function AJournal_RWM_BP_C:SetActorType(Item, ViewConfig, Diorama__Nonfunctional_) end

function AJournal_RWM_BP_C:UpdateCamRotation() end

AJournal_RWM_BP_C['Refresh 3DView'] = function(self) end

---@param RT UTextureRenderTarget2D
AJournal_RWM_BP_C['Set Output RT'] = function(self, RT) end
