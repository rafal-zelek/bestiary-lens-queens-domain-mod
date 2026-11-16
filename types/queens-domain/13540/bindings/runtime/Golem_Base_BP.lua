---@meta

---@class AGolem_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Body UBoxComponent
---@field Upperleg_R UBoxComponent
---@field Upperleg_L UBoxComponent
---@field LowerLeg_R UBoxComponent
---@field LowerLeg_L UBoxComponent
---@field TrapModeCollision UStaticMeshComponent
---@field RangedAttacking boolean
---@field Projectile TSubclassOf<AGolem_Rock_Projectile_C>
---@field CurrentProjectileInstance_L AGolem_Rock_Projectile_C
---@field CurrentProjectileInstance_R AGolem_Rock_Projectile_C
---@field ThrowMontage UAnimMontage
---@field SmallGolem boolean
---@field TreeGolem boolean
---@field RockThrowRange float
---@field RockGrabSystem UNiagaraSystem
---@field RockMat UMaterialInterface
---@field TrapActivateSound1 USoundBase
---@field TrapActivateSound2 USoundBase
local AGolem_Base_BP_C = {}

---@param Damaged boolean
function AGolem_Base_BP_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AGolem_Base_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AGolem_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AGolem_Base_BP_C:CleanUpProjectiles() end

---@param Mode EnemyBehaviourMode::Type
function AGolem_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AGolem_Base_BP_C:ExecuteUbergraph_Golem_Base_BP(EntryPoint) end

function AGolem_Base_BP_C:GetDropLocation() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGolem_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_14A306D3416E752F3886A6B7872590FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_272C2E0446B9299EB6EE62AD190D0846(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_639AE79844C7679FDBD563B8A7CD1AB1(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_687398BA4DAC95441BC0E5A4D71366C6(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_72031CFE4250A524515A9598B3A4ED19(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_C23470E54153FD3BB71FFA96C3DD5490(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_C42E1C5F453E8C7E02E1359F45DDC92C(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnBlendOut_E335095F43CEB5FEF96D40811347B7FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_14A306D3416E752F3886A6B7872590FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_272C2E0446B9299EB6EE62AD190D0846(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_639AE79844C7679FDBD563B8A7CD1AB1(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_687398BA4DAC95441BC0E5A4D71366C6(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_72031CFE4250A524515A9598B3A4ED19(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_C23470E54153FD3BB71FFA96C3DD5490(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_C42E1C5F453E8C7E02E1359F45DDC92C(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnCompleted_E335095F43CEB5FEF96D40811347B7FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_14A306D3416E752F3886A6B7872590FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_272C2E0446B9299EB6EE62AD190D0846(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_639AE79844C7679FDBD563B8A7CD1AB1(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_687398BA4DAC95441BC0E5A4D71366C6(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_72031CFE4250A524515A9598B3A4ED19(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_C23470E54153FD3BB71FFA96C3DD5490(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_C42E1C5F453E8C7E02E1359F45DDC92C(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnInterrupted_E335095F43CEB5FEF96D40811347B7FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_14A306D3416E752F3886A6B7872590FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_272C2E0446B9299EB6EE62AD190D0846(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_639AE79844C7679FDBD563B8A7CD1AB1(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_687398BA4DAC95441BC0E5A4D71366C6(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_72031CFE4250A524515A9598B3A4ED19(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_C23470E54153FD3BB71FFA96C3DD5490(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_C42E1C5F453E8C7E02E1359F45DDC92C(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyBegin_E335095F43CEB5FEF96D40811347B7FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_14A306D3416E752F3886A6B7872590FD(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_272C2E0446B9299EB6EE62AD190D0846(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_639AE79844C7679FDBD563B8A7CD1AB1(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_687398BA4DAC95441BC0E5A4D71366C6(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_72031CFE4250A524515A9598B3A4ED19(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_C23470E54153FD3BB71FFA96C3DD5490(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_C42E1C5F453E8C7E02E1359F45DDC92C(NotifyName) end

---@param NotifyName FName
function AGolem_Base_BP_C:OnNotifyEnd_E335095F43CEB5FEF96D40811347B7FD(NotifyName) end

function AGolem_Base_BP_C:ReceiveBeginPlay() end

---@param L boolean
function AGolem_Base_BP_C:SpawnProjectile(L) end

---@param SystemTemplate UNiagaraSystem
---@param Location FVector
---@param Rotation FRotator
---@param Scale FVector
function AGolem_Base_BP_C:SpawnRockPFX(SystemTemplate, Location, Rotation, Scale) end

function AGolem_Base_BP_C:Stagger() end

---@param Projectile AEnemy_Projectile_Base_C
function AGolem_Base_BP_C:ThrowProjectile(Projectile) end
