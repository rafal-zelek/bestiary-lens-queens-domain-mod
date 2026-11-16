---@meta

---@class ABat_Base_Bp_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local ABat_Base_Bp_C = {}

---@param Damaged boolean
function ABat_Base_Bp_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABat_Base_Bp_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Mode EnemyBehaviourMode::Type
function ABat_Base_Bp_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABat_Base_Bp_C:ExecuteUbergraph_Bat_Base_Bp(EntryPoint) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ABat_Base_Bp_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnBlendOut_46AD51E944D8E98ABF0C2BABAA394E5B(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnBlendOut_652E461043BDC97406166DAE32822E1E(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnBlendOut_A3907C07450B5F61091E229958B72D1A(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnBlendOut_C873CDA542532C2A792B2AB564237D63(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnCompleted_46AD51E944D8E98ABF0C2BABAA394E5B(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnCompleted_652E461043BDC97406166DAE32822E1E(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnCompleted_A3907C07450B5F61091E229958B72D1A(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnCompleted_C873CDA542532C2A792B2AB564237D63(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnInterrupted_46AD51E944D8E98ABF0C2BABAA394E5B(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnInterrupted_652E461043BDC97406166DAE32822E1E(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnInterrupted_A3907C07450B5F61091E229958B72D1A(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnInterrupted_C873CDA542532C2A792B2AB564237D63(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyBegin_46AD51E944D8E98ABF0C2BABAA394E5B(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyBegin_652E461043BDC97406166DAE32822E1E(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyBegin_A3907C07450B5F61091E229958B72D1A(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyBegin_C873CDA542532C2A792B2AB564237D63(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyEnd_46AD51E944D8E98ABF0C2BABAA394E5B(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyEnd_652E461043BDC97406166DAE32822E1E(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyEnd_A3907C07450B5F61091E229958B72D1A(NotifyName) end

---@param NotifyName FName
function ABat_Base_Bp_C:OnNotifyEnd_C873CDA542532C2A792B2AB564237D63(NotifyName) end
