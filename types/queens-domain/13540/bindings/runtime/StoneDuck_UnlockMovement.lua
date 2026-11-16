---@meta

---@class UStoneDuck_UnlockMovement_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PutAwayAnim_PutAway_EAEC291942BCBF4CAB2E288229F3B07D float
---@field PutAwayAnim__Direction_EAEC291942BCBF4CAB2E288229F3B07D ETimelineDirection::Type
---@field PutAwayAnim UTimelineComponent
---@field PickUpAnim_PutInFront_F08E68CE43F56868C434EE89A80F43C1 float
---@field PickUpAnim__Direction_F08E68CE43F56868C434EE89A80F43C1 ETimelineDirection::Type
---@field PickUpAnim UTimelineComponent
---@field Grant FStoneDuck_UnlockMovement_CGrant
---@field EnableInput FStoneDuck_UnlockMovement_CEnableInput
---@field DisableInput FStoneDuck_UnlockMovement_CDisableInput
---@field ['Anim Rate'] float
---@field AnimatedComponent UStaticMeshComponent
---@field PickupAnimStartState FTransform
---@field ['Display Data'] UFS_ItemData_C
---@field DesiredPickupEndingScreenPosition FVector
---@field ItemPickupSizeMut float
---@field DesiredPickupRotation FRotator
---@field DesiredPickupScreenPosition FVector
---@field PickupDesiredScreenSize FVector
---@field Done FStoneDuck_UnlockMovement_CDone
---@field Rotating boolean
---@field CurrentRotation float
---@field RotationRate float
---@field ['3DViewConfig'] U3DWidgetsettings_C
---@field BasePosOffsetHack FVector
---@field DisableRelativeLocCompensation boolean
---@field ForceAutoPutAway FVector
---@field LastRot FRotator
---@field StartRotTime float
---@field LastRealTime float
---@field LocalDT float
---@field PickupAngle float
---@field ExtraSizeMult float
local UStoneDuck_UnlockMovement_C = {}

---@param InFront float
---@param PutAway float
function UStoneDuck_UnlockMovement_C:AnimateComp(InFront, PutAway) end

function UStoneDuck_UnlockMovement_C:CalculateAnimParams() end

function UStoneDuck_UnlockMovement_C:DisableInput__DelegateSignature() end

function UStoneDuck_UnlockMovement_C:Done__DelegateSignature() end

function UStoneDuck_UnlockMovement_C:EnableInput__DelegateSignature() end

function UStoneDuck_UnlockMovement_C:EndPickupPause() end

---@param EntryPoint int32
function UStoneDuck_UnlockMovement_C:ExecuteUbergraph_StoneDuck_UnlockMovement(EntryPoint) end

function UStoneDuck_UnlockMovement_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function UStoneDuck_UnlockMovement_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function UStoneDuck_UnlockMovement_C:GetRestToPutAwayAnim(Time) end

function UStoneDuck_UnlockMovement_C:Grant__DelegateSignature() end

function UStoneDuck_UnlockMovement_C:MoveInFrontOfScreen() end

function UStoneDuck_UnlockMovement_C:PickUpAnim__AllowInput__EventFunc() end

function UStoneDuck_UnlockMovement_C:PickUpAnim__FinishedFunc() end

function UStoneDuck_UnlockMovement_C:PickUpAnim__StartRotating__EventFunc() end

function UStoneDuck_UnlockMovement_C:PickUpAnim__UpdateFunc() end

---@param Comp UStaticMeshComponent
---@param Display_Data UFS_ItemData_C
function UStoneDuck_UnlockMovement_C:PickUpComponent(Comp, Display_Data) end

function UStoneDuck_UnlockMovement_C:PutAwayAnim__FinishedFunc() end

function UStoneDuck_UnlockMovement_C:PutAwayAnim__UpdateFunc() end

function UStoneDuck_UnlockMovement_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UStoneDuck_UnlockMovement_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function UStoneDuck_UnlockMovement_C:SetPDO(ParameterValue) end

function UStoneDuck_UnlockMovement_C:StartPickupPause() end

function UStoneDuck_UnlockMovement_C:WrapUp() end
