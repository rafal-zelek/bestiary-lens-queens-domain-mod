---@meta

---@class AJarHammer_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
---@field BrokenHandle UStaticMeshComponent
---@field Scene USceneComponent
---@field Mesh UStaticMeshComponent
---@field brokenmeshfade_NewTrack_0_C34028AC4DB20648575F4087A705BBA5 float
---@field brokenmeshfade__Direction_C34028AC4DB20648575F4087A705BBA5 ETimelineDirection::Type
---@field brokenmeshfade UTimelineComponent
local AJarHammer_WeaponVisuals_C = {}

function AJarHammer_WeaponVisuals_C:DoEvolutionAnim() end

---@param EntryPoint int32
function AJarHammer_WeaponVisuals_C:ExecuteUbergraph_JarHammer_WeaponVisuals(EntryPoint) end

---@param Loc FTransform
function AJarHammer_WeaponVisuals_C:GetEVoItemSpawnLoc(Loc) end

function AJarHammer_WeaponVisuals_C:ReceiveBeginPlay() end

function AJarHammer_WeaponVisuals_C:brokenmeshfade__FinishedFunc() end

function AJarHammer_WeaponVisuals_C:brokenmeshfade__UpdateFunc() end
