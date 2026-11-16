---@meta

---@class UMementoMirror_EffectScript_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
local UMementoMirror_EffectScript_C = {}

---@param EntryPoint int32
function UMementoMirror_EffectScript_C:ExecuteUbergraph_MementoMirror_EffectScript(EntryPoint) end

---@param Array TArray<AActor>
---@param RevealedAny boolean
function UMementoMirror_EffectScript_C:TryToRevealGhostList(Array, RevealedAny) end

function UMementoMirror_EffectScript_C:UseMirror() end
