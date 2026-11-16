---@meta

---@class ALevelManagerTrigger_C : AActor
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
---@field ['A Side'] UFS_LevelList
---@field ASideColor FLinearColor
---@field ['B Side'] UFS_LevelList
---@field BSideColor FLinearColor
---@field ['Other Side Trigger (Optional)'] ALevelManagerTrigger_C
---@field IsBSide boolean
---@field ['Solid Mode'] boolean
---@field OldTrigger ALevelManagerTrigger_C
---@field LastDataChangeTime FDateTime
---@field ['Delay Music Change Till Grounded'] boolean
local ALevelManagerTrigger_C = {}

function ALevelManagerTrigger_C:ActivateASide() end

function ALevelManagerTrigger_C:ActivateBSide() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ALevelManagerTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ALevelManagerTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function ALevelManagerTrigger_C:CheckAndUpdateData() end

---@param ASideTriggered boolean
---@param Should_Run boolean
function ALevelManagerTrigger_C:CheckIsCorrectSide(ASideTriggered, Should_Run) end

function ALevelManagerTrigger_C:EvalExit() end

---@param EntryPoint int32
function ALevelManagerTrigger_C:ExecuteUbergraph_LevelManagerTrigger(EntryPoint) end

function ALevelManagerTrigger_C:Flip() end

---@param ASide boolean
function ALevelManagerTrigger_C:ManualToggle(ASide) end

function ALevelManagerTrigger_C:Refresh() end

function ALevelManagerTrigger_C:Reset() end

---@param SolidMode boolean
function ALevelManagerTrigger_C:SwitchSolidMode(SolidMode) end

function ALevelManagerTrigger_C:UpdateLabels() end

function ALevelManagerTrigger_C:UpdateLink() end

function ALevelManagerTrigger_C:UpdateStyling() end

function ALevelManagerTrigger_C:UserConstructionScript() end

ALevelManagerTrigger_C['Refresh Other link Data'] = function(self) end
