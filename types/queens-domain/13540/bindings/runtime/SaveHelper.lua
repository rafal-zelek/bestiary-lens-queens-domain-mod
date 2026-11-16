---@meta

---@class USaveHelper_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SaveDataLoaded FSaveHelper_CSaveDataLoaded
---@field WorldWasReset FSaveHelper_CWorldWasReset
local USaveHelper_C = {}

---@param EntryPoint int32
function USaveHelper_C:ExecuteUbergraph_SaveHelper(EntryPoint) end

function USaveHelper_C:LoadStateFromSave() end

function USaveHelper_C:ReceiveBeginPlay() end

function USaveHelper_C:SaveDataLoaded__DelegateSignature() end

function USaveHelper_C:WorldWasReset__DelegateSignature() end
