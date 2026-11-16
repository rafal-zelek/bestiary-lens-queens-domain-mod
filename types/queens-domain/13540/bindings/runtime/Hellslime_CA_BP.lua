---@meta

---@class AHellslime_CA_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field FireballSpawn USceneComponent
---@field currentpfx_0 UNiagaraComponent
---@field CurrentAttackSound_0 UAudioComponent
---@field CurrentFloorPFX_0 UNiagaraComponent
---@field MeleeRange float
---@field Charged boolean
---@field CurrentFireball AHellSlime_Fireball_C
---@field Mid UMaterialInstanceDynamic
---@field GlowColor FLinearColor
local AHellslime_CA_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AHellslime_CA_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AHellslime_CA_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AHellslime_CA_BP_C:ChargeEnded() end

function AHellslime_CA_BP_C:CheckChase() end

function AHellslime_CA_BP_C:CurrentFireballSploded() end

---@param EntryPoint int32
function AHellslime_CA_BP_C:ExecuteUbergraph_Hellslime_CA_BP(EntryPoint) end

function AHellslime_CA_BP_C:Fireball() end

function AHellslime_CA_BP_C:ForceFireball() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AHellslime_CA_BP_C:Kill(NoRewards, SupressDeathSound) end

function AHellslime_CA_BP_C:LaunchFireball() end

function AHellslime_CA_BP_C:Melee() end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnBlendOut_1B67FCE24A545B1B4131DFA56AD0E69D(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnBlendOut_B5B664CA449D233138E4B8A67D1C0DA9(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnCompleted_1B67FCE24A545B1B4131DFA56AD0E69D(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnCompleted_B5B664CA449D233138E4B8A67D1C0DA9(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnInterrupted_1B67FCE24A545B1B4131DFA56AD0E69D(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnInterrupted_B5B664CA449D233138E4B8A67D1C0DA9(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnNotifyBegin_1B67FCE24A545B1B4131DFA56AD0E69D(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnNotifyBegin_B5B664CA449D233138E4B8A67D1C0DA9(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnNotifyEnd_1B67FCE24A545B1B4131DFA56AD0E69D(NotifyName) end

---@param NotifyName FName
function AHellslime_CA_BP_C:OnNotifyEnd_B5B664CA449D233138E4B8A67D1C0DA9(NotifyName) end

function AHellslime_CA_BP_C:ReceiveBeginPlay() end

function AHellslime_CA_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AHellslime_CA_BP_C:ReceiveTick(DeltaSeconds) end

function AHellslime_CA_BP_C:StartFireballCharge() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AHellslime_CA_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

AHellslime_CA_BP_C['Update Rotation'] = function(self) end
