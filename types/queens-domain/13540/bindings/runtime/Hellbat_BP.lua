---@meta

---@class AHellbat_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BodyCollision UBoxComponent
---@field SpikeHitbox USphereComponent
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field OverridingDestination boolean
---@field ['Overridden Destination'] FVector
---@field FightController ADemonBoss_FightController_C
---@field FLightOffset FVector
local AHellbat_BP_C = {}

function AHellbat_BP_C:ActivateEnemyAI() end

---@param Damaged boolean
function AHellbat_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AHellbat_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function AHellbat_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AHellbat_BP_C:ExecuteUbergraph_Hellbat_BP(EntryPoint) end

---@param Target FVector
function AHellbat_BP_C:GetFlightTarget(Target) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function AHellbat_BP_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function AHellbat_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function AHellbat_BP_C:OnBlendOut_397ECC6046FC11B306E744B34B2F0959(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnBlendOut_397ECC6046FC11B306E744B3B6C5047C(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnBlendOut_397ECC6046FC11B306E744B3ECFD9F32(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnBlendOut_BB4C97714E64DC4B1FAF5EBEE84F9664(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnBlendOut_DF294C79421B10A4BB3885B906C845E5(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnCompleted_397ECC6046FC11B306E744B34B2F0959(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnCompleted_397ECC6046FC11B306E744B3B6C5047C(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnCompleted_397ECC6046FC11B306E744B3ECFD9F32(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnCompleted_BB4C97714E64DC4B1FAF5EBEE84F9664(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnCompleted_DF294C79421B10A4BB3885B906C845E5(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnInterrupted_397ECC6046FC11B306E744B34B2F0959(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnInterrupted_397ECC6046FC11B306E744B3B6C5047C(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnInterrupted_397ECC6046FC11B306E744B3ECFD9F32(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnInterrupted_BB4C97714E64DC4B1FAF5EBEE84F9664(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnInterrupted_DF294C79421B10A4BB3885B906C845E5(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B34B2F0959(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B3B6C5047C(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyBegin_397ECC6046FC11B306E744B3ECFD9F32(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyBegin_BB4C97714E64DC4B1FAF5EBEE84F9664(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyBegin_DF294C79421B10A4BB3885B906C845E5(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B34B2F0959(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B3B6C5047C(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyEnd_397ECC6046FC11B306E744B3ECFD9F32(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyEnd_BB4C97714E64DC4B1FAF5EBEE84F9664(NotifyName) end

---@param NotifyName FName
function AHellbat_BP_C:OnNotifyEnd_DF294C79421B10A4BB3885B906C845E5(NotifyName) end

---@param NewState int32
function AHellbat_BP_C:OnStateIndexChanged(NewState) end

function AHellbat_BP_C:ReceiveBeginPlay() end

function AHellbat_BP_C:SetWalkSpeedToDefault() end

function AHellbat_BP_C:Stagger() end

function AHellbat_BP_C:magnetizeToTrack() end

AHellbat_BP_C['Generate New Random FLight Offset'] = function(self) end

AHellbat_BP_C['Should Move Towards Player'] = function(self) end
