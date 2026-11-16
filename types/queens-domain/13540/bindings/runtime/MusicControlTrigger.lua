---@meta

---@class AMusicControlTrigger_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BArrow UArrowComponent
---@field VolumeVisCube UStaticMeshComponent
---@field BSideBox UBoxComponent
---@field ASideBox UBoxComponent
---@field BSide UTextRenderComponent
---@field AArrow UArrowComponent
---@field ASide UTextRenderComponent
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field PlayerRef ACharacter
---@field MusicAreaDataA UFS_MusicAreaData
---@field ASideColor FLinearColor
---@field MusicAreaDataB UFS_MusicAreaData
---@field BSideColor FLinearColor
---@field ['Other Side Trigger (Optional)'] AMusicControlTrigger_C
---@field IsBSide boolean
---@field ['Solid Mode'] boolean
---@field ASideIsAltTrack boolean
---@field ASideData UMusicTrackData_C
---@field ASideAreaName FText
---@field ASideLocationName FText
---@field OldTrigger AMusicControlTrigger_C
---@field LastDataChangeTime FDateTime
---@field BSideIsAltTrack boolean
---@field BSideData UMusicTrackData_C
---@field BSideAreaName FText
---@field BSideLocationName FText
---@field ApplyMusicOnBSide boolean
---@field ApplyMusicOnASide boolean
---@field ApplyAreaOnASide boolean
---@field ApplyAreaOnBSide boolean
---@field ['Delay Music Change Till Grounded'] boolean
---@field BeginningSideWasA boolean
local AMusicControlTrigger_C = {}

function AMusicControlTrigger_C:ActivateASide() end

function AMusicControlTrigger_C:ActivateBSide() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AMusicControlTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AMusicControlTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function AMusicControlTrigger_C:CheckAndUpdateData() end

---@param ASideTriggered boolean
---@param Should_Run boolean
function AMusicControlTrigger_C:CheckIsCorrectSide(ASideTriggered, Should_Run) end

function AMusicControlTrigger_C:EvalExit() end

---@param EntryPoint int32
function AMusicControlTrigger_C:ExecuteUbergraph_MusicControlTrigger(EntryPoint) end

function AMusicControlTrigger_C:Flip() end

---@param Sweep boolean
---@param Hit FHitResult
function AMusicControlTrigger_C:IsPlayerOnASide(Sweep, Hit) end

---@param ASide boolean
function AMusicControlTrigger_C:ManualToggle(ASide) end

function AMusicControlTrigger_C:Refresh() end

function AMusicControlTrigger_C:Reset() end

---@param SolidMode boolean
function AMusicControlTrigger_C:SwitchSolidMode(SolidMode) end

function AMusicControlTrigger_C:UpdateLabels() end

function AMusicControlTrigger_C:UpdateLink() end

function AMusicControlTrigger_C:UpdateStyling() end

function AMusicControlTrigger_C:UserConstructionScript() end

AMusicControlTrigger_C['Refresh Other link Data'] = function(self) end
