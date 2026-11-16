---@meta

---@class UItemGiveAnimationComp_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PickUpAnim_TakeOut_EE17BE81498A03DD21E24CAEE12DC32E float
---@field PickUpAnim_Opacity_EE17BE81498A03DD21E24CAEE12DC32E float
---@field PickUpAnim_PutInFront_EE17BE81498A03DD21E24CAEE12DC32E float
---@field PickUpAnim__Direction_EE17BE81498A03DD21E24CAEE12DC32E ETimelineDirection::Type
---@field PickUpAnim UTimelineComponent
---@field ['Anim Rate'] float
---@field AnimatedComponent USceneComponent
---@field PickupAnimStartState FTransform
---@field ['Display Data'] UFS_ItemData_C
---@field DesiredPickupEndingScreenPosition FVector
---@field ItemPickupSizeMut float
---@field DesiredPickupRotation FRotator
---@field DesiredPickupScreenPosition FVector
---@field PickupDesiredScreenSize FVector
---@field Done FItemGiveAnimationComp_CDone
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
local UItemGiveAnimationComp_C = {}

---@param InFront float
---@param PutAway float
---@param Opacity float
function UItemGiveAnimationComp_C:AnimateComp(InFront, PutAway, Opacity) end

function UItemGiveAnimationComp_C:CalcRestRelativeLoc() end

---@param Debug boolean
function UItemGiveAnimationComp_C:CalculateAnimParams(Debug) end

---@param Parent USceneComponent
---@param RelativeTransform FTransform
---@param Comp USceneComponent
function UItemGiveAnimationComp_C:CreateTempComp(Parent, RelativeTransform, Comp) end

function UItemGiveAnimationComp_C:Done__DelegateSignature() end

---@param Rotation FRotator
---@param Loc FVector
function UItemGiveAnimationComp_C:DrawRotationOrientation(Rotation, Loc) end

function UItemGiveAnimationComp_C:EndPickupPause() end

---@param EntryPoint int32
function UItemGiveAnimationComp_C:ExecuteUbergraph_ItemGiveAnimationComp(EntryPoint) end

---@param Comp UCameraComponent
function UItemGiveAnimationComp_C:GetCameraComp(Comp) end

function UItemGiveAnimationComp_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function UItemGiveAnimationComp_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function UItemGiveAnimationComp_C:GetRestToPutAwayAnim(Time) end

function UItemGiveAnimationComp_C:PickUpAnim__FinishedFunc() end

function UItemGiveAnimationComp_C:PickUpAnim__UpdateFunc() end

---@param Comp USceneComponent
---@param Display_Data UFS_ItemData_C
---@param TargetPosition FTransform
function UItemGiveAnimationComp_C:PickUpComponent(Comp, Display_Data, TargetPosition) end

function UItemGiveAnimationComp_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UItemGiveAnimationComp_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function UItemGiveAnimationComp_C:SetPDO(ParameterValue) end

function UItemGiveAnimationComp_C:StartPickupPause() end

function UItemGiveAnimationComp_C:TakeOut() end

---@param ParameterValue float
---@param ParameterName FName
UItemGiveAnimationComp_C['Set Param on Item'] = function(self, ParameterValue, ParameterName) end
