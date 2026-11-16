---@meta

---@class UTorch_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FogPushFade_NewTrack_0_1194DA4647496BD7FA875091190B1979 float
---@field FogPushFade__Direction_1194DA4647496BD7FA875091190B1979 ETimelineDirection::Type
---@field FogPushFade UTimelineComponent
---@field CalculatedAltFireMult float
local UTorch_WeaponScript_C = {}

function UTorch_WeaponScript_C:AltAttackPressed() end

function UTorch_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function UTorch_WeaponScript_C:ExecuteUbergraph_Torch_WeaponScript(EntryPoint) end

function UTorch_WeaponScript_C:FogPushFade__FinishedFunc() end

function UTorch_WeaponScript_C:FogPushFade__UpdateFunc() end

---@param Tags FGameplayTagContainer
function UTorch_WeaponScript_C:GetAdditionalTags(Tags) end

---@param TotalDamage float
function UTorch_WeaponScript_C:GetSecondaryFireProps(TotalDamage) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UTorch_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

function UTorch_WeaponScript_C:LeftHand() end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UTorch_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UTorch_WeaponScript_C:OnBlendOut_A97EB1764746FA30BAB7408B5FDEA144(NotifyName) end

---@param NotifyName FName
function UTorch_WeaponScript_C:OnCompleted_A97EB1764746FA30BAB7408B5FDEA144(NotifyName) end

---@param NotifyName FName
function UTorch_WeaponScript_C:OnInterrupted_A97EB1764746FA30BAB7408B5FDEA144(NotifyName) end

---@param NotifyName FName
function UTorch_WeaponScript_C:OnNotifyBegin_A97EB1764746FA30BAB7408B5FDEA144(NotifyName) end

---@param NotifyName FName
function UTorch_WeaponScript_C:OnNotifyEnd_A97EB1764746FA30BAB7408B5FDEA144(NotifyName) end

---@param Attack_Power float
UTorch_WeaponScript_C['Get Weapon Primary Attack Power'] = function(self, Attack_Power) end
