---@meta

---@class ADaggerButton_DamageTarget_C : ADamageTarget_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box3 UBoxComponent
---@field Box2 UBoxComponent
---@field Box1 UBoxComponent
---@field Box UBoxComponent
---@field StaticMesh UStaticMeshComponent
---@field ButtonPushinPos float
local ADaggerButton_DamageTarget_C = {}

---@param EntryPoint int32
function ADaggerButton_DamageTarget_C:ExecuteUbergraph_DaggerButton_DamageTarget(EntryPoint) end

function ADaggerButton_DamageTarget_C:Hit() end

---@param Data TArray<FSavableActorState>
ADaggerButton_DamageTarget_C['Restore State From Save Data'] = function(self, Data) end
