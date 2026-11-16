---@meta

---@class UMagicFireEffectLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MagicFireStarted FMagicFireEffectLogic_CMagicFireStarted
---@field MagicFireStopped FMagicFireEffectLogic_CMagicFireStopped
---@field PlayerConfig UPlayerBalance_C
---@field LastTickTime float
---@field MagicFireDamageTick FMagicFireEffectLogic_CMagicFireDamageTick
---@field CurrentMagicFireDamagePool float
local UMagicFireEffectLogic_C = {}

function UMagicFireEffectLogic_C:ApplyDamageTick() end

---@param Damage float
function UMagicFireEffectLogic_C:ApplyMagicFire(Damage) end

---@param EntryPoint int32
function UMagicFireEffectLogic_C:ExecuteUbergraph_MagicFireEffectLogic(EntryPoint) end

function UMagicFireEffectLogic_C:MagicFireDamageTick__DelegateSignature() end

function UMagicFireEffectLogic_C:MagicFireStarted__DelegateSignature() end

function UMagicFireEffectLogic_C:MagicFireStopped__DelegateSignature() end

function UMagicFireEffectLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UMagicFireEffectLogic_C:ReceiveTick(DeltaSeconds) end

UMagicFireEffectLogic_C['Apply Magic Fire  Tick Damages'] = function(self) end
