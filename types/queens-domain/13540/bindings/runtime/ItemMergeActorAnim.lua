---@meta

---@class UItemMergeActorAnim_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PutAwayAnim_PutAway_7C872F4E46B633DAD43108A1B857975E float
---@field PutAwayAnim__Direction_7C872F4E46B633DAD43108A1B857975E ETimelineDirection::Type
---@field PutAwayAnim UTimelineComponent
---@field PickUpAnim_PutInFront_E9FEA4BD42124954472BB5A0ABBB9165 float
---@field PickUpAnim__Direction_E9FEA4BD42124954472BB5A0ABBB9165 ETimelineDirection::Type
---@field PickUpAnim UTimelineComponent
---@field Grant FItemMergeActorAnim_CGrant
---@field EnableInput FItemMergeActorAnim_CEnableInput
---@field DisableInput FItemMergeActorAnim_CDisableInput
---@field ['Anim Rate'] float
---@field AnimatedComponent USceneComponent
---@field PickupAnimStartState FTransform
---@field ['Display Data'] UFS_ItemData_C
---@field DesiredPickupEndingScreenPosition FVector
---@field ItemPickupSizeMut float
---@field DesiredPickupRotation FRotator
---@field DesiredPickupScreenPosition FVector
---@field PickupDesiredScreenSize FVector
---@field Done FItemMergeActorAnim_CDone
---@field Rotating boolean
---@field CurrentRotation float
---@field YawOffset float
---@field PitchOffset float
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
---@field DoInsertAnim FItemMergeActorAnim_CDoInsertAnim
local UItemMergeActorAnim_C = {}

---@param InFront float
---@param PutAway float
function UItemMergeActorAnim_C:AnimateComp(InFront, PutAway) end

function UItemMergeActorAnim_C:CalcRestRelativeLoc() end

---@param Debug boolean
function UItemMergeActorAnim_C:CalculateAnimParams(Debug) end

---@param Parent USceneComponent
---@param RelativeTransform FTransform
---@param Comp USceneComponent
function UItemMergeActorAnim_C:CreateTempComp(Parent, RelativeTransform, Comp) end

function UItemMergeActorAnim_C:DisableInput__DelegateSignature() end

function UItemMergeActorAnim_C:DoInsertAnim__DelegateSignature() end

function UItemMergeActorAnim_C:Done__DelegateSignature() end

---@param Rotation FRotator
---@param Loc FVector
function UItemMergeActorAnim_C:DrawRotationOrientation(Rotation, Loc) end

function UItemMergeActorAnim_C:EnableInput__DelegateSignature() end

function UItemMergeActorAnim_C:EndPickupPause() end

---@param EntryPoint int32
function UItemMergeActorAnim_C:ExecuteUbergraph_ItemMergeActorAnim(EntryPoint) end

---@param Comp UCameraComponent
function UItemMergeActorAnim_C:GetCameraComp(Comp) end

function UItemMergeActorAnim_C:GetRealDesiredScreenSize() end

---@param Rest FTransform
---@param PutAway FTransform
function UItemMergeActorAnim_C:GetRestAndPutAwayPositions(Rest, PutAway) end

---@param Time float
function UItemMergeActorAnim_C:GetRestToPutAwayAnim(Time) end

function UItemMergeActorAnim_C:Grant__DelegateSignature() end

function UItemMergeActorAnim_C:PickUpAnim__AllowInput__EventFunc() end

function UItemMergeActorAnim_C:PickUpAnim__FinishedFunc() end

function UItemMergeActorAnim_C:PickUpAnim__StartRotating__EventFunc() end

function UItemMergeActorAnim_C:PickUpAnim__UpdateFunc() end

---@param Comp USceneComponent
---@param Display_Data UFS_ItemData_C
function UItemMergeActorAnim_C:PickUpComponent(Comp, Display_Data) end

function UItemMergeActorAnim_C:PutAway() end

function UItemMergeActorAnim_C:PutAwayAnim__FinishedFunc() end

function UItemMergeActorAnim_C:PutAwayAnim__UpdateFunc() end

function UItemMergeActorAnim_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UItemMergeActorAnim_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function UItemMergeActorAnim_C:SetPDO(ParameterValue) end

function UItemMergeActorAnim_C:StartPickupPause() end
