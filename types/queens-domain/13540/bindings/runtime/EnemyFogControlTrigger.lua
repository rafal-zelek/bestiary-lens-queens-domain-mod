---@meta

---@class AEnemyFogControlTrigger_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VolumeVisCube UStaticMeshComponent
---@field BSideBox UBoxComponent
---@field ASideBox UBoxComponent
---@field Arrow1 UArrowComponent
---@field BSide UTextRenderComponent
---@field arrow UArrowComponent
---@field ASide UTextRenderComponent
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field CurrentEnemyRef AEnemyBase_C
---@field ['Other Side Trigger (Optional)'] AEnemyFogControlTrigger_C
---@field IsBSide boolean
---@field ASideColor FLinearColor
---@field ASideData UENVControlData_C
---@field ASideTransitionTime float
---@field BSideColor FLinearColor
---@field OldTrigger AEnemyFogControlTrigger_C
---@field LastDataChangeTime FDateTime
---@field ['Solid Mode'] boolean
---@field BSideData UENVControlData_C
---@field BSideTransitionTime float
local AEnemyFogControlTrigger_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AEnemyFogControlTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AEnemyFogControlTrigger_C:BndEvt__ENVControlTrigger_Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function AEnemyFogControlTrigger_C:CheckAndUpdateData() end

---@param ASideTriggered boolean
---@param Should_Run boolean
function AEnemyFogControlTrigger_C:CheckIsCorrectSide(ASideTriggered, Should_Run) end

function AEnemyFogControlTrigger_C:EvalExit() end

---@param EntryPoint int32
function AEnemyFogControlTrigger_C:ExecuteUbergraph_EnemyFogControlTrigger(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AEnemyFogControlTrigger_C:GetCurrentFogDAs(Alpha, Beta) end

---@param Condition boolean
function AEnemyFogControlTrigger_C:ManualToggle(Condition) end

function AEnemyFogControlTrigger_C:Refresh() end

function AEnemyFogControlTrigger_C:Reset() end

---@param DA UENVControlData_C
function AEnemyFogControlTrigger_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AEnemyFogControlTrigger_C:SetBetaFogDA(DA) end

---@param SolidMode boolean
function AEnemyFogControlTrigger_C:SwitchSolidMode(SolidMode) end

function AEnemyFogControlTrigger_C:UpdateFogDAValues() end

function AEnemyFogControlTrigger_C:UpdateLink() end

function AEnemyFogControlTrigger_C:UpdateStyling() end

function AEnemyFogControlTrigger_C:UserConstructionScript() end

AEnemyFogControlTrigger_C['Refresh Other link Data'] = function(self) end
