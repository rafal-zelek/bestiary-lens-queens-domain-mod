---@meta

---@class UWeaponEvoAnimation_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayMaterialAnim_Squish_65C51679403456F83357C3B0D0CBC12D float
---@field PlayMaterialAnim_Out_65C51679403456F83357C3B0D0CBC12D float
---@field PlayMaterialAnim__Direction_65C51679403456F83357C3B0D0CBC12D ETimelineDirection::Type
---@field PlayMaterialAnim UTimelineComponent
---@field CurrentPlayerRef AFS_PlayerChar_C
---@field CurrentWeaponRef UWeaponScriptBase_C
---@field TargetWeaponRef UWeaponScriptBase_C
---@field TargetWeaponVisuals AWeaponVisuals_C
---@field CurrentWeaponVisuals AWeaponVisuals_C
---@field CurrentWeaponVisualComps TArray<UMeshComponent>
---@field TargetWeaponVisualComps TArray<UMeshComponent>
---@field ['Evolution Graphics'] FFS_WeaponEvolutionConfig
---@field CurrentPickup AItemPickup_Base_C
---@field NormalEvo boolean
---@field Offhand boolean
local UWeaponEvoAnimation_C = {}

function UWeaponEvoAnimation_C:CancelFallback() end

function UWeaponEvoAnimation_C:CancelMatAnim() end

function UWeaponEvoAnimation_C:CustomEvent_0() end

function UWeaponEvoAnimation_C:CustomEvent_1() end

---@param Weapon UWeaponScriptBase_C
---@param Player AFS_PlayerChar_C
---@param Offhand boolean
function UWeaponEvoAnimation_C:DoEvoAnim(Weapon, Player, Offhand) end

function UWeaponEvoAnimation_C:DoNormalEvo() end

function UWeaponEvoAnimation_C:EmergencyFallback() end

function UWeaponEvoAnimation_C:EvoAnimDone() end

---@param EntryPoint int32
function UWeaponEvoAnimation_C:ExecuteUbergraph_WeaponEvoAnimation(EntryPoint) end

---@param Value UWeaponScriptBase_C
function UWeaponEvoAnimation_C:GetEvolvedWeaponScript(Value) end

function UWeaponEvoAnimation_C:OpenInspect() end

function UWeaponEvoAnimation_C:PlayMaterialAnim__FinishedFunc() end

function UWeaponEvoAnimation_C:PlayMaterialAnim__UpdateFunc() end

function UWeaponEvoAnimation_C:ReceiveBeginPlay() end

function UWeaponEvoAnimation_C:SetUpAndCacheParts() end

function UWeaponEvoAnimation_C:SetUpItemPickup() end

UWeaponEvoAnimation_C['Clean Up Post Evo'] = function(self) end

UWeaponEvoAnimation_C['Initialize material Params'] = function(self) end
