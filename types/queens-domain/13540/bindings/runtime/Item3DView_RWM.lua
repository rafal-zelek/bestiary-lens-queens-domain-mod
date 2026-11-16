---@meta

---@class AItem3DView_RWM_C : ARenderWorldManager_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field TiltRoot USceneComponent
---@field ItemRoot USceneComponent
---@field CameraRoot USceneComponent
---@field Rotation float
---@field ThumbnailMode boolean
---@field CurrentItemActor AActor
---@field CurrentItem UFS_ItemData_C
---@field PickupMode boolean
---@field Config UPlayerBalance_C
---@field PickupCurve AItemPutAwayCurve_C
---@field Mode Item3DViewMode::Type
local AItem3DView_RWM_C = {}

---@param Axes FVector2D
function AItem3DView_RWM_C:AddRotationAxisInput(Axes) end

---@param _3dConfig FItem3DConfig
function AItem3DView_RWM_C:Configure3DView(_3dConfig) end

---@param self2 ARuneVisionCharm_Pickup_C
function AItem3DView_RWM_C:ConfigureRuneVision(self2) end

---@param EntryPoint int32
function AItem3DView_RWM_C:ExecuteUbergraph_Item3DView_RWM(EntryPoint) end

---@param Item UFS_ItemData_C
function AItem3DView_RWM_C:GetItemActorBP(Item) end

function AItem3DView_RWM_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AItem3DView_RWM_C:ReceiveTick(DeltaSeconds) end

---@param Item UFS_ItemData_C
function AItem3DView_RWM_C:SetActorFromItem(Item) end

---@param FOV float
function AItem3DView_RWM_C:SetFOV(FOV) end

function AItem3DView_RWM_C:UpdateCamRotation() end

AItem3DView_RWM_C['Refresh 3DView'] = function(self) end

---@param RT UTextureRenderTarget2D
AItem3DView_RWM_C['Set Output RT'] = function(self, RT) end
