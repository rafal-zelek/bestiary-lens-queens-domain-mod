---@meta

---@class UAcidVialAnimation_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_0_26CC3E184DF356A74485A4A38C4C41C1 float
---@field Timeline_0__Direction_26CC3E184DF356A74485A4A38C4C41C1 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field CurrentPlayerRef AFS_PlayerChar_C
---@field CurrentWeaponRef UWeaponScriptBase_C
---@field TargetWeaponRef UWeaponScriptBase_C
---@field CurrentWeaponVisuals AWeaponVisuals_C
---@field AcidVialVisuals AAcidVial_InHand_C
---@field TempDaggerVis ADefault_Dagger_Visuals_C
local UAcidVialAnimation_C = {}

---@param Player AFS_PlayerChar_C
function UAcidVialAnimation_C:DoVialAnim(Player) end

---@param EntryPoint int32
function UAcidVialAnimation_C:ExecuteUbergraph_AcidVialAnimation(EntryPoint) end

---@param NotifyName FName
function UAcidVialAnimation_C:OnBlendOut_11E28249445E794D32FCA9820AD61219(NotifyName) end

---@param NotifyName FName
function UAcidVialAnimation_C:OnCompleted_11E28249445E794D32FCA9820AD61219(NotifyName) end

---@param NotifyName FName
function UAcidVialAnimation_C:OnInterrupted_11E28249445E794D32FCA9820AD61219(NotifyName) end

---@param NotifyName FName
function UAcidVialAnimation_C:OnNotifyBegin_11E28249445E794D32FCA9820AD61219(NotifyName) end

---@param NotifyName FName
function UAcidVialAnimation_C:OnNotifyEnd_11E28249445E794D32FCA9820AD61219(NotifyName) end

function UAcidVialAnimation_C:ReceiveBeginPlay() end

function UAcidVialAnimation_C:SetUpAndCacheParts() end

function UAcidVialAnimation_C:SwapBackFromTempDagger() end

function UAcidVialAnimation_C:SwapToTempDagger() end

function UAcidVialAnimation_C:Timeline_0__FinishedFunc() end

function UAcidVialAnimation_C:Timeline_0__UpdateFunc() end
