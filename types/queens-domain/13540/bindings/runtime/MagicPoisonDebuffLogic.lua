---@meta

---@class UMagicPoisonDebuffLogic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Updated FMagicPoisonDebuffLogic_CUpdated
---@field CurrentBuildup float
---@field Active boolean
---@field LocalDT float
---@field LastApplicationTime float
---@field Applied FMagicPoisonDebuffLogic_CApplied
---@field StatusScreenOverlayType TSubclassOf<AStatusScreenOverlay_C>
---@field CurrentScreenOverlay AStatusScreenOverlay_C
---@field SubmergeAndHitSortPris int32
---@field StatusScreenOverlayType_0 TSubclassOf<AStatusScreenOverlay_C>
---@field TickOverlay AStatusScreenOverlay_C
local UMagicPoisonDebuffLogic_C = {}

function UMagicPoisonDebuffLogic_C:Applied__DelegateSignature() end

---@param Amount float
---@param FromDamage boolean
function UMagicPoisonDebuffLogic_C:ApplyMagicPoison(Amount, FromDamage) end

---@param Incoming float
---@param ResistedAmt float
function UMagicPoisonDebuffLogic_C:ApplyRotResistToIncomingRot(Incoming, ResistedAmt) end

function UMagicPoisonDebuffLogic_C:DoDamageTick() end

---@param EntryPoint int32
function UMagicPoisonDebuffLogic_C:ExecuteUbergraph_MagicPoisonDebuffLogic(EntryPoint) end

function UMagicPoisonDebuffLogic_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UMagicPoisonDebuffLogic_C:ReceiveTick(DeltaSeconds) end

function UMagicPoisonDebuffLogic_C:RestoreFromSave() end

function UMagicPoisonDebuffLogic_C:TraceForRot() end

function UMagicPoisonDebuffLogic_C:UpdateTrace() end

---@param Value float
---@param Max float
---@param Active boolean
function UMagicPoisonDebuffLogic_C:Updated__DelegateSignature(Value, Max, Active) end

UMagicPoisonDebuffLogic_C['Notify About Change'] = function(self) end

UMagicPoisonDebuffLogic_C['Update Effect'] = function(self) end
