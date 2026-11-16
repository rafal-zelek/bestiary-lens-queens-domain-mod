---@meta

---@class ANamedSaveDataSetterVolume_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field HasBeenSet boolean
---@field SetEveryTime boolean
---@field NamedSaveData TMap<FName, FNamedSaveDataSetter_Config>
local ANamedSaveDataSetterVolume_C = {}

---@param EntryPoint int32
function ANamedSaveDataSetterVolume_C:ExecuteUbergraph_NamedSaveDataSetterVolume(EntryPoint) end

---@param OtherActor AActor
function ANamedSaveDataSetterVolume_C:ReceiveActorBeginOverlap(OtherActor) end

---@param Data TArray<FSavableActorState>
ANamedSaveDataSetterVolume_C['Restore State From Save Data'] = function(self, Data) end
