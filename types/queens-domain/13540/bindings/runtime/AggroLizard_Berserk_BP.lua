---@meta

---@class AAggroLizard_Berserk_BP_C : AAggroLizard_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_potioneffect_NewTrack_0_D7E2FF3F43171F7B04B0A3B8E78BFB09 float
---@field Timeline_potioneffect__Direction_D7E2FF3F43171F7B04B0A3B8E78BFB09 ETimelineDirection::Type
---@field Timeline_potioneffect UTimelineComponent
local AAggroLizard_Berserk_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AAggroLizard_Berserk_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AAggroLizard_Berserk_BP_C:DoPotionEffect() end

---@param EntryPoint int32
function AAggroLizard_Berserk_BP_C:ExecuteUbergraph_AggroLizard_Berserk_BP(EntryPoint) end

---@param NotifyName FName
function AAggroLizard_Berserk_BP_C:OnBlendOut_8EFBF59241F2757F76364187E9C2B566(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Berserk_BP_C:OnCompleted_8EFBF59241F2757F76364187E9C2B566(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Berserk_BP_C:OnInterrupted_8EFBF59241F2757F76364187E9C2B566(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Berserk_BP_C:OnNotifyBegin_8EFBF59241F2757F76364187E9C2B566(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Berserk_BP_C:OnNotifyEnd_8EFBF59241F2757F76364187E9C2B566(NotifyName) end

function AAggroLizard_Berserk_BP_C:Timeline_potioneffect__FinishedFunc() end

function AAggroLizard_Berserk_BP_C:Timeline_potioneffect__UpdateFunc() end
