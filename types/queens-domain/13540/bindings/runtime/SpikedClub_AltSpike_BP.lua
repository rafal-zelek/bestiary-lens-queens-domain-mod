---@meta

---@class ASpikedClub_AltSpike_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpikedClub_AltSpike_Spawn UNiagaraComponent
---@field Mesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Fade_135D405740C3414722AE69B95F6955B6 float
---@field Timeline_0_pos_135D405740C3414722AE69B95F6955B6 float
---@field Timeline_0__Direction_135D405740C3414722AE69B95F6955B6 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Damage FFB_DamageAttributeSet
---@field Delay float
---@field HitboxEnabled boolean
---@field HitActors TSet<AActor>
local ASpikedClub_AltSpike_BP_C = {}

---@param EntryPoint int32
function ASpikedClub_AltSpike_BP_C:ExecuteUbergraph_SpikedClub_AltSpike_BP(EntryPoint) end

function ASpikedClub_AltSpike_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASpikedClub_AltSpike_BP_C:ReceiveTick(DeltaSeconds) end

function ASpikedClub_AltSpike_BP_C:Timeline_0__Enditbox__EventFunc() end

function ASpikedClub_AltSpike_BP_C:Timeline_0__FinishedFunc() end

function ASpikedClub_AltSpike_BP_C:Timeline_0__UpdateFunc() end
