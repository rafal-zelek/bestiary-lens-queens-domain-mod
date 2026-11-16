---@meta

---@class AKing_SeqChar_C : AFS_SequenceCharacter_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DeathFade float
local AKing_SeqChar_C = {}

---@param EntryPoint int32
function AKing_SeqChar_C:ExecuteUbergraph_King_SeqChar(EntryPoint) end

---@param DeltaSeconds float
function AKing_SeqChar_C:ReceiveTick(DeltaSeconds) end

function AKing_SeqChar_C:UpdateFade() end

function AKing_SeqChar_C:UserConstructionScript() end
