---@meta

---@class AIntroTextManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field IntroTextWidget UIntroTextWidget_C
local AIntroTextManager_C = {}

---@param EntryPoint int32
function AIntroTextManager_C:ExecuteUbergraph_IntroTextManager(EntryPoint) end

function AIntroTextManager_C:HideText() end

function AIntroTextManager_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function AIntroTextManager_C:ReceiveEndPlay(EndPlayReason) end

---@param DeltaSeconds float
function AIntroTextManager_C:ReceiveTick(DeltaSeconds) end

---@param Text FText
function AIntroTextManager_C:ShowText(Text) end
