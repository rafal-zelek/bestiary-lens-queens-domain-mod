---@meta

---@class AGrimoire_UI_Projector_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field FXLoc USceneComponent
---@field Quill UStaticMeshComponent
---@field QuillRestLoc USceneComponent
---@field FeatherRightCenter USceneComponent
---@field FeatherLeftCenter USceneComponent
---@field NextPages UWidgetComponent
---@field ActivePage USkeletalMeshComponent
---@field FlippyPages3 USkeletalMeshComponent
---@field FlippyPages2 USkeletalMeshComponent
---@field FlippyPages1 USkeletalMeshComponent
---@field FlippyPages0 USkeletalMeshComponent
---@field FlippyPageParent USceneComponent
---@field MainBook USkeletalMeshComponent
---@field CurPages UWidgetComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_NewTrack_0_BBF4AC794E26A2982E95AAA4FC6EC451 float
---@field Timeline_0__Direction_BBF4AC794E26A2982E95AAA4FC6EC451 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Mid UMaterialInstanceDynamic
---@field ActivePageMID UMaterialInstanceDynamic
---@field LocalDT float
---@field Closing boolean
---@field FlippyDone boolean
---@field CurPagesWidget UGrimoire_UI_C
---@field NextPagesWidget UGrimoire_UI_C
---@field FinishedWithAnimation FGrimoire_UI_Projector_CFinishedWithAnimation
---@field FeatherAnimCenter FTransform
---@field FeatherCharWidth float
---@field FeatherCharHeight float
---@field AnimatingQuill boolean
---@field PageTurnComplete FGrimoire_UI_Projector_CPageTurnComplete
---@field PageSet int32
---@field OldPageSet int32
local AGrimoire_UI_Projector_C = {}

function AGrimoire_UI_Projector_C:ConfigureMIDs() end

---@param Pw FString
---@param Valid boolean
function AGrimoire_UI_Projector_C:DoFeatherAnimation(Pw, Valid) end

---@param Text FString
function AGrimoire_UI_Projector_C:DoInvalidSubmit(Text) end

---@param Text FString
function AGrimoire_UI_Projector_C:DoValidSubmit(Text) end

---@param EntryPoint int32
function AGrimoire_UI_Projector_C:ExecuteUbergraph_Grimoire_UI_Projector(EntryPoint) end

function AGrimoire_UI_Projector_C:FinishedWithAnimation__DelegateSignature() end

function AGrimoire_UI_Projector_C:GetTargetPos() end

---@param Index int32
function AGrimoire_UI_Projector_C:GoToPage(Index) end

function AGrimoire_UI_Projector_C:InitMIDs() end

function AGrimoire_UI_Projector_C:NextPage() end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnBlendOut_1A45B7CC438E4D65E4F186A401C7CA68(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnBlendOut_3ADDBF0346D74C252EF34A9997B973C3(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnBlendOut_611A6A624D48083823D01FB6830F4F8D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnBlendOut_B81D5B2F49CDE37955B803AFC3BC889D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnBlendOut_E7B5B5714F68115418DF979F98594E7E(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnCompleted_1A45B7CC438E4D65E4F186A401C7CA68(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnCompleted_3ADDBF0346D74C252EF34A9997B973C3(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnCompleted_611A6A624D48083823D01FB6830F4F8D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnCompleted_B81D5B2F49CDE37955B803AFC3BC889D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnCompleted_E7B5B5714F68115418DF979F98594E7E(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnInterrupted_1A45B7CC438E4D65E4F186A401C7CA68(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnInterrupted_3ADDBF0346D74C252EF34A9997B973C3(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnInterrupted_611A6A624D48083823D01FB6830F4F8D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnInterrupted_B81D5B2F49CDE37955B803AFC3BC889D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnInterrupted_E7B5B5714F68115418DF979F98594E7E(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyBegin_1A45B7CC438E4D65E4F186A401C7CA68(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyBegin_3ADDBF0346D74C252EF34A9997B973C3(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyBegin_611A6A624D48083823D01FB6830F4F8D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyBegin_B81D5B2F49CDE37955B803AFC3BC889D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyBegin_E7B5B5714F68115418DF979F98594E7E(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyEnd_1A45B7CC438E4D65E4F186A401C7CA68(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyEnd_3ADDBF0346D74C252EF34A9997B973C3(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyEnd_611A6A624D48083823D01FB6830F4F8D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyEnd_B81D5B2F49CDE37955B803AFC3BC889D(NotifyName) end

---@param NotifyName FName
function AGrimoire_UI_Projector_C:OnNotifyEnd_E7B5B5714F68115418DF979F98594E7E(NotifyName) end

function AGrimoire_UI_Projector_C:PageTurnComplete__DelegateSignature() end

function AGrimoire_UI_Projector_C:PrevPage() end

function AGrimoire_UI_Projector_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AGrimoire_UI_Projector_C:ReceiveTick(DeltaSeconds) end

function AGrimoire_UI_Projector_C:Timeline_0__FinishedFunc() end

function AGrimoire_UI_Projector_C:Timeline_0__UpdateFunc() end
