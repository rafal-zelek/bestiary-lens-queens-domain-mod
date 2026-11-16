---@meta

---@class UItemPickupAnimationComp_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PutAwayAnim_PutAway_FCA783454EE930BFA45A80AEAB8C663F float
---@field PutAwayAnim__Direction_FCA783454EE930BFA45A80AEAB8C663F ETimelineDirection::Type
---@field PutAwayAnim UTimelineComponent
---@field PickUpAnim_PutInFront_169FD8C748257217D7569FB834667549 float
---@field PickUpAnim__Direction_169FD8C748257217D7569FB834667549 ETimelineDirection::Type
---@field PickUpAnim UTimelineComponent
---@field Grant FItemPickupAnimationComp_CGrant
---@field EnableInput FItemPickupAnimationComp_CEnableInput
---@field DisableInput FItemPickupAnimationComp_CDisableInput
---@field ['Anim Rate'] float
---@field AnimatedComponent USceneComponent
---@field PickupAnimStartState FTransform
---@field ['Display Data'] UFS_ItemData_C
---@field DesiredPickupEndingScreenPosition FVector
---@field ItemPickupSizeMut float
---@field DesiredPickupRotation FRotator
---@field DesiredPickupScreenPosition FVector
---@field PickupDesiredScreenSize FVector
---@field Done FItemPickupAnimationComp_CDone
---@field Rotating boolean
---@field CurrentRotation float
---@field RotationHackOffset float
---@field RotationRate float
---@field ['3DViewConfig'] U3DWidgetsettings_C
---@field BasePosOffsetHack FVector
---@field DisableRelativeLocCompensation boolean
---@field ForceAutoPutAway FVector
---@field LastRot FRotator
---@field TempComps TArray<USceneComponent>
---@field LocalRotBase USceneComponent
---@field RotationAnimBase USceneComponent
---@field PickupAttach USceneComponent
---@field DialoguePickup boolean
local UItemPickupAnimationComp_C = {}

---@param InFront float
---@param PutAway float
function UItemPickupAnimationComp_C:AnimateComp(InFront, PutAway) end

function UItemPickupAnimationComp_C:CalcRestRelativeLoc() end

---@param Debug boolean
function UItemPickupAnimationComp_C:CalculateAnimParams(Debug) end

---@param Parent USceneComponent
---@param RelativeTransform FTransform
---@param Comp USceneComponent
function UItemPickupAnimationComp_C:CreateTempComp(Parent, RelativeTransform, Comp) end

function UItemPickupAnimationComp_C:DisableInput__DelegateSignature() end

function UItemPickupAnimationComp_C:Done__DelegateSignature() end

---@param Rotation FRotator
---@param Loc FVector
function UItemPickupAnimationComp_C:DrawRotationOrientation(Rotation, Loc) end

function UItemPickupAnimationComp_C:EnableInput__DelegateSignature() end

function UItemPickupAnimationComp_C:EndPickupPause() end

---@param EntryPoint int32
function UItemPickupAnimationComp_C:ExecuteUbergraph_ItemPickupAnimationComp(EntryPoint) end

---@param Comp UCameraComponent
function UItemPickupAnimationComp_C:GetCameraComp(Comp) end

function UItemPickupAnimationComp_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function UItemPickupAnimationComp_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function UItemPickupAnimationComp_C:GetRestToPutAwayAnim(Time) end

function UItemPickupAnimationComp_C:Grant__DelegateSignature() end

function UItemPickupAnimationComp_C:PickUpAnim__AllowInput__EventFunc() end

function UItemPickupAnimationComp_C:PickUpAnim__FinishedFunc() end

function UItemPickupAnimationComp_C:PickUpAnim__StartRotating__EventFunc() end

function UItemPickupAnimationComp_C:PickUpAnim__UpdateFunc() end

---@param Comp USceneComponent
---@param Display_Data UFS_ItemData_C
---@param DialoguePickup boolean
function UItemPickupAnimationComp_C:PickUpComponent(Comp, Display_Data, DialoguePickup) end

function UItemPickupAnimationComp_C:PutAway() end

function UItemPickupAnimationComp_C:PutAwayAnim__FinishedFunc() end

function UItemPickupAnimationComp_C:PutAwayAnim__UpdateFunc() end

function UItemPickupAnimationComp_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UItemPickupAnimationComp_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function UItemPickupAnimationComp_C:SetPDO(ParameterValue) end

function UItemPickupAnimationComp_C:StartPickupPause() end
