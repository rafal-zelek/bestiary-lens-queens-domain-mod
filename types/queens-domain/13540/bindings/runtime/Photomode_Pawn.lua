---@meta

---@class APhotomode_Pawn_C : ASpectatorPawn
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Camera UCameraComponent
---@field LocalDelta float
---@field StartTransform FTransform
---@field MaxTravelDist float
---@field ControllerZoomRate float
---@field MouseZoomRate float
---@field ZoomHeld boolean
---@field UnZoomHeld boolean
---@field TiltRightHeld boolean
---@field TiltLeftHeld boolean
---@field HUD UPhotoMode_HUD_C
---@field HUDHidden boolean
---@field AllFilters TArray<UPostProcessComponent>
---@field FilterIndex int32
---@field PhotomodeBlocker AStaticMeshActor
---@field BlockInput boolean
---@field InternalRotation FRotator
---@field FilterData UPhotoMode_Filters_C
---@field OptionsOpen boolean
---@field PPC UPostProcessComponent
---@field ColorCorrectionMID UMaterialInstanceDynamic
---@field InPhotoMode boolean
---@field EnterTime float
local APhotomode_Pawn_C = {}

---@param Delta float
function APhotomode_Pawn_C:AdjustZoom(Delta) end

function APhotomode_Pawn_C:ConsoleScreenshotFinished() end

---@param ScreenshotHandle FScreenshotHandle
---@param Result ESteamResult
function APhotomode_Pawn_C:CustomEvent_0(ScreenshotHandle, Result) end

---@param Value float
function APhotomode_Pawn_C:DeadZone(Value) end

function APhotomode_Pawn_C:EndPhotoMode() end

function APhotomode_Pawn_C:EnterPhotoMode() end

---@param EntryPoint int32
function APhotomode_Pawn_C:ExecuteUbergraph_Photomode_Pawn(EntryPoint) end

function APhotomode_Pawn_C:HandleInput() end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_C_K2Node_InputKeyEvent_4(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_E_K2Node_InputKeyEvent_10(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_E_K2Node_InputKeyEvent_9(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_F_K2Node_InputKeyEvent_13(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_FaceButton_Bottom_K2Node_InputKeyEvent_19(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_FaceButton_Left_K2Node_InputKeyEvent_14(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_FaceButton_Right_K2Node_InputKeyEvent_0(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_FaceButton_Top_K2Node_InputKeyEvent_3(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_LeftShoulder_K2Node_InputKeyEvent_7(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_LeftShoulder_K2Node_InputKeyEvent_8(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_LeftTrigger_K2Node_InputKeyEvent_17(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_LeftTrigger_K2Node_InputKeyEvent_18(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_RightShoulder_K2Node_InputKeyEvent_5(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_RightShoulder_K2Node_InputKeyEvent_6(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_RightThumbstick_K2Node_InputKeyEvent_2(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_RightTrigger_K2Node_InputKeyEvent_15(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Gamepad_RightTrigger_K2Node_InputKeyEvent_16(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Pause_K2Node_InputActionEvent_0(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Q_K2Node_InputKeyEvent_11(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_Q_K2Node_InputKeyEvent_12(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_R_K2Node_InputKeyEvent_1(Key) end

---@param Key FKey
function APhotomode_Pawn_C:InpActEvt_SpaceBar_K2Node_InputKeyEvent_20(Key) end

---@param AxisValue float
function APhotomode_Pawn_C:InpAxisKeyEvt_MouseWheelAxis_K2Node_InputAxisKeyEvent_0(AxisValue) end

---@param Move FVector2D
function APhotomode_Pawn_C:MouseMove(Move) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function APhotomode_Pawn_C:Photomode_Pawn_AutoGenFunc(ObjectA, ObjectB, Result) end

function APhotomode_Pawn_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APhotomode_Pawn_C:ReceiveTick(DeltaSeconds) end

function APhotomode_Pawn_C:RefreshHUDHidden() end

---@param LUT UTexture
function APhotomode_Pawn_C:SetFilter(LUT) end

---@param Condition boolean
function APhotomode_Pawn_C:SetOptionsState(Condition) end

function APhotomode_Pawn_C:SetUpTravelLimit() end

function APhotomode_Pawn_C:TakeConsoleScreenshot() end

function APhotomode_Pawn_C:TakeScreenshot() end

function APhotomode_Pawn_C:ToggleHUDHidden() end

function APhotomode_Pawn_C:UpdateCam() end

function APhotomode_Pawn_C:UpdateColor() end

APhotomode_Pawn_C['Initial Cache Global Data'] = function(self) end
