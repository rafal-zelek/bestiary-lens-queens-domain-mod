---@meta

---@class AMechaKnight_Lance_Base_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WeaponHitbox3 USphereComponent
---@field WeaponHitbox1 USphereComponent
---@field WeaponHitbox2 USphereComponent
---@field Shield_Mesh UEnemyAttachmentMesh_C
---@field WeaponHitbox USphereComponent
---@field WooshFX UNiagaraComponent
---@field LanceAudio UAudioComponent
---@field Weapon_R_Mesh UEnemyAttachmentMesh_C
---@field TrapMontage UAnimMontage
---@field EndCharge boolean
---@field ChargeActive boolean
---@field StartDirection FVector
---@field CurrentLanceSpeed float
---@field EnableLanceFX boolean
---@field Blocking boolean
---@field RoboLanceEnd USoundBase
---@field LanceSoundInterp float
---@field BlockAnim UAnimMontage
local AMechaKnight_Lance_Base_C = {}

---@param Damaged boolean
function AMechaKnight_Lance_Base_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AMechaKnight_Lance_Base_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AMechaKnight_Lance_Base_C:CancelBlockAttack() end

function AMechaKnight_Lance_Base_C:CancelChargeAttack() end

function AMechaKnight_Lance_Base_C:CleanEndCharge() end

function AMechaKnight_Lance_Base_C:DoBlockAttack() end

function AMechaKnight_Lance_Base_C:DoBlockDeflect() end

function AMechaKnight_Lance_Base_C:DoChargeAttack() end

function AMechaKnight_Lance_Base_C:DoDeathCancels() end

---@param EntryPoint int32
function AMechaKnight_Lance_Base_C:ExecuteUbergraph_MechaKnight_Lance_Base(EntryPoint) end

function AMechaKnight_Lance_Base_C:GetChargeLocationPastPlayer() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMechaKnight_Lance_Base_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_0A16C8C24FA1A92EB4E089A5D454E9D3(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_14A5404D45519F83425AF49B70615CD5(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_59F673F144B6B7807CCC25A664DD7E47(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_5ABA30264A9D9E95C71302B32A79AE7A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_A091DE7D44DB7BEBFE135DA30ADB5479(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnBlendOut_EEE146B74E2EE75E8673D8B8C283A903(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_0A16C8C24FA1A92EB4E089A5D454E9D3(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_14A5404D45519F83425AF49B70615CD5(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_59F673F144B6B7807CCC25A664DD7E47(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_5ABA30264A9D9E95C71302B32A79AE7A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_A091DE7D44DB7BEBFE135DA30ADB5479(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnCompleted_EEE146B74E2EE75E8673D8B8C283A903(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_0A16C8C24FA1A92EB4E089A5D454E9D3(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_14A5404D45519F83425AF49B70615CD5(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_59F673F144B6B7807CCC25A664DD7E47(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_5ABA30264A9D9E95C71302B32A79AE7A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_A091DE7D44DB7BEBFE135DA30ADB5479(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnInterrupted_EEE146B74E2EE75E8673D8B8C283A903(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_0A16C8C24FA1A92EB4E089A5D454E9D3(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_14A5404D45519F83425AF49B70615CD5(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_59F673F144B6B7807CCC25A664DD7E47(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_5ABA30264A9D9E95C71302B32A79AE7A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_A091DE7D44DB7BEBFE135DA30ADB5479(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyBegin_EEE146B74E2EE75E8673D8B8C283A903(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_0A16C8C24FA1A92EB4E089A5D454E9D3(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_14A5404D45519F83425AF49B70615CD5(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_59F673F144B6B7807CCC25A664DD7E47(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_5ABA30264A9D9E95C71302B32A79AE7A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_A091DE7D44DB7BEBFE135DA30ADB5479(NotifyName) end

---@param NotifyName FName
function AMechaKnight_Lance_Base_C:OnNotifyEnd_EEE146B74E2EE75E8673D8B8C283A903(NotifyName) end

function AMechaKnight_Lance_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AMechaKnight_Lance_Base_C:ReceiveTick(DeltaSeconds) end

function AMechaKnight_Lance_Base_C:Stagger() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AMechaKnight_Lance_Base_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AMechaKnight_Lance_Base_C:TryEndingChargeMove() end
