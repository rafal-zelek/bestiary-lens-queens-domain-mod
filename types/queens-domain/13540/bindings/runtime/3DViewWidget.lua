---@meta

---@class U3DViewWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Display UImage
---@field ['RWM Class'] TSubclassOf<ARenderWorldManager_BP_C>
---@field Size FVector2D
---@field Material UMaterialInstanceDynamic
---@field RWM ARenderWorldManager_BP_C
---@field RT UTextureRenderTarget2D
---@field RmbDown boolean
---@field MouseSensitivity float
---@field ['Rotation Speed'] float
---@field ['AutoScreen%'] boolean
---@field ['Screen%'] float
---@field DisableRotation boolean
---@field CapturedMouse boolean
---@field MouseCaptureStartPose FVector2D
---@field MouseDelta FVector2D
---@field RenderMat UMaterialInterface
---@field RenderMat_Switch UMaterialInterface
---@field ForceHideCursorWhileDragging boolean
---@field BGLevel TSoftObjectPtr<UWorld>
---@field DragCursor EMouseCursor::Type
---@field EnableVerticalRotation boolean
---@field EnableCustomRWMInit boolean
---@field InitRWM F3DViewWidget_CInitRWM
---@field ['Disable RWM Destroy'] boolean
---@field CustomRT UTextureRenderTarget2D
---@field repo boolean
---@field GetCustomResScale F3DViewWidget_CGetCustomResScale
---@field CustomResScale float
---@field RotateLeftKey FKey
---@field RotateRightKey FKey
---@field DisableInput boolean
local U3DViewWidget_C = {}

---@param Delta FVector2D
function U3DViewWidget_C:AddAxisInput(Delta) end

---@param Input FVector2D
function U3DViewWidget_C:AddMouseInput(Input) end

function U3DViewWidget_C:CalcAxisDelta() end

function U3DViewWidget_C:Construct() end

function U3DViewWidget_C:Destruct() end

---@param EntryPoint int32
function U3DViewWidget_C:ExecuteUbergraph_3DViewWidget(EntryPoint) end

---@param RenderMat UMaterialInterface
function U3DViewWidget_C:GetBaseRenderMat(RenderMat) end

function U3DViewWidget_C:GetCustomResScale__DelegateSignature() end

function U3DViewWidget_C:InitRWM__DelegateSignature() end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function U3DViewWidget_C:OnMouseButtonDown(MyGeometry, MouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function U3DViewWidget_C:OnMouseButtonUp(MyGeometry, MouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function U3DViewWidget_C:OnMouseMove(MyGeometry, MouseEvent) end

---@param Move FVector2D
function U3DViewWidget_C:ProcessMouseInput(Move) end

function U3DViewWidget_C:RepositionMouse() end

---@param RWM ARenderWorldManager_BP_C
function U3DViewWidget_C:SetCustomRWM(RWM) end

function U3DViewWidget_C:SetRTSize() end

---@param ShouldRender boolean
function U3DViewWidget_C:SetShouldRender(ShouldRender) end

function U3DViewWidget_C:StartMouseDrag() end

function U3DViewWidget_C:StopMouseDrag() end

---@param Move FVector2D
function U3DViewWidget_C:SubsystemMove(Move) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function U3DViewWidget_C:Tick(MyGeometry, InDeltaTime) end

---@param Geometry FGeometry
function U3DViewWidget_C:UpdateMouseDrag(Geometry) end

---@param Size FVector2D
function U3DViewWidget_C:UpdateRT(Size) end
