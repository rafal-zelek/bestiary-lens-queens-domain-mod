---@meta

---@class USequenceDirector_C : ULevelSequenceDirector
---@field UberGraphFrame FPointerToUberGraphFrame
local USequenceDirector_C = {}

---@param EntryPoint int32
function USequenceDirector_C:ExecuteUbergraph_SequenceDirector(EntryPoint) end

---@param IntroTextManager AIntroTextManager_C
function USequenceDirector_C:HideText(IntroTextManager) end

---@param IntroTextManager AIntroTextManager_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_0(IntroTextManager) end

---@param IntroTextManager AIntroTextManager_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_1(IntroTextManager) end

---@param IntroTextManager AIntroTextManager_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_2(IntroTextManager) end

---@param IntroTextManager AIntroTextManager_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_3(IntroTextManager) end

---@param IntroTextManager AIntroTextManager_C
---@param Text FText
function USequenceDirector_C:ShowText(IntroTextManager, Text) end
