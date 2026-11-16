---@meta

---@class AWhaleKingPoisonManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field PoisonCircles TArray<AWhaleKingPoisonCircle_C>
---@field TickRate float
---@field ['Damage To Apply'] FFB_DamageAttributeSet
local AWhaleKingPoisonManager_C = {}

---@param EntryPoint int32
function AWhaleKingPoisonManager_C:ExecuteUbergraph_WhaleKingPoisonManager(EntryPoint) end

function AWhaleKingPoisonManager_C:ReceiveBeginPlay() end

function AWhaleKingPoisonManager_C:RemovePoison() end

function AWhaleKingPoisonManager_C:StartTickloop() end

function AWhaleKingPoisonManager_C:TickLoop() end
