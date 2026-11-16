---@meta

---@class ACutsceneManagerBase_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field CutsceneFinished FCutsceneManagerBase_CCutsceneFinished
---@field Sequencer ALevelSequenceActor
---@field ['FSPlayer Char'] AFS_PlayerChar_C
---@field SkipEndHUDUnhide boolean
---@field EndingText FText
---@field EndingTextFadeDelay float
---@field LastText UEndingTextWidget_C
local ACutsceneManagerBase_C = {}

---@param Ended FBeginCutsceneEnded
function ACutsceneManagerBase_C:BeginCutscene(Ended) end

function ACutsceneManagerBase_C:CutsceneEnded() end

function ACutsceneManagerBase_C:CutsceneFinished__DelegateSignature() end

function ACutsceneManagerBase_C:CutsceneSequenceFinished() end

---@param EntryPoint int32
function ACutsceneManagerBase_C:ExecuteUbergraph_CutsceneManagerBase(EntryPoint) end

---@param SequencePlayer ULevelSequencePlayer
function ACutsceneManagerBase_C:GetSequencePlayer(SequencePlayer) end

function ACutsceneManagerBase_C:Internal_StartCutscene() end

function ACutsceneManagerBase_C:Paused() end

function ACutsceneManagerBase_C:Resumed() end

function ACutsceneManagerBase_C:ShowEndingCutsceneText() end

function ACutsceneManagerBase_C:SkipCutscene() end

function ACutsceneManagerBase_C:TryEndCutscene() end
