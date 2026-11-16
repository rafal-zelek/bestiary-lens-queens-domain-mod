---@meta

---@class AOW_ElecNode_BP_C : AOW_ElecNode_Connector_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ElecNodeNetworkScript UElecNodeNetworkScript_C
---@field OW_ElecNode_FX UStaticMeshComponent
---@field HitBox USphereComponent
---@field ShutOff_GlowControl_5952E3A341A6E070F90543BEA49C243B float
---@field ShutOff_LightControl_5952E3A341A6E070F90543BEA49C243B float
---@field ShutOff__Direction_5952E3A341A6E070F90543BEA49C243B ETimelineDirection::Type
---@field ShutOff UTimelineComponent
---@field Reset_GlowControl_B09D77264C4919FB56C60E8D3ECFD10D float
---@field Reset_LightControl_B09D77264C4919FB56C60E8D3ECFD10D float
---@field Reset__Direction_B09D77264C4919FB56C60E8D3ECFD10D ETimelineDirection::Type
---@field Reset UTimelineComponent
---@field Overcharge_GlowControl_60531E5C4A0343458D5C3E9C76065494 float
---@field Overcharge_LightControl_60531E5C4A0343458D5C3E9C76065494 float
---@field Overcharge__Direction_60531E5C4A0343458D5C3E9C76065494 ETimelineDirection::Type
---@field Overcharge UTimelineComponent
---@field ConnectedLinks TArray<AOW_ElecLink_BP_C>
---@field ConnectedNodes TArray<AOW_ElecNode_BP_C>
---@field Toggled FOW_ElecNode_BP_CToggled
---@field Guid FGuid
---@field Lock boolean
---@field Connectors TArray<AOW_ElecNode_Connector_Base_C>
local AOW_ElecNode_BP_C = {}

function AOW_ElecNode_BP_C:DoToggleAnim() end

---@param EntryPoint int32
function AOW_ElecNode_BP_C:ExecuteUbergraph_OW_ElecNode_BP(EntryPoint) end

---@param Rear boolean
---@param Flip_Rot boolean
---@param Pos FVector
---@param Rotation FRotator
function AOW_ElecNode_BP_C:GetAttachPoint(Rear, Flip_Rot, Pos, Rotation) end

---@param bPosOverridden boolean
function AOW_ElecNode_BP_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AOW_ElecNode_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function AOW_ElecNode_BP_C:IsOvercharged() end

---@param FromLoad boolean
function AOW_ElecNode_BP_C:LockNode(FromLoad) end

function AOW_ElecNode_BP_C:Overcharge__FinishedFunc() end

function AOW_ElecNode_BP_C:Overcharge__UpdateFunc() end

function AOW_ElecNode_BP_C:ReceiveBeginPlay() end

function AOW_ElecNode_BP_C:RefreshVisualState() end

function AOW_ElecNode_BP_C:Reset__FinishedFunc() end

function AOW_ElecNode_BP_C:Reset__UpdateFunc() end

---@param InBool boolean
function AOW_ElecNode_BP_C:SetSaveState(InBool) end

---@param InBool boolean
function AOW_ElecNode_BP_C:SetStateDirectly(InBool) end

---@param Tags FGameplayTagContainer
function AOW_ElecNode_BP_C:ShouldNotBeTargetedByHoming(Tags) end

function AOW_ElecNode_BP_C:ShutOff__FinishedFunc() end

function AOW_ElecNode_BP_C:ShutOff__UpdateFunc() end

---@param Spread boolean
function AOW_ElecNode_BP_C:Toggle(Spread) end

---@param NewState boolean
---@param Indirect boolean
function AOW_ElecNode_BP_C:Toggled__DelegateSignature(NewState, Indirect) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AOW_ElecNode_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AOW_ElecNode_BP_C:UserConstructionScript() end
