---@meta

---@class ASpider_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LowerFromCeiling_Interp_F5DAFECD412413BE675B5B86438E3EDD float
---@field LowerFromCeiling__Direction_F5DAFECD412413BE675B5B86438E3EDD ETimelineDirection::Type
---@field LowerFromCeiling UTimelineComponent
---@field Projectile TSubclassOf<ASpider_Projectile_C>
---@field RangedAttacking boolean
---@field OriginalMeshPos FVector
---@field TrapMeshPos FVector
---@field TrapLaunchTimePermeterTravelled float
---@field LaunchTrapMode boolean
---@field FlyingTrap boolean
---@field TargetFlyingTrapDir FVector
---@field FlyingTrapSpeed float
---@field ActivatingTrap boolean
---@field MaxTrapTriggerDelay float
---@field LaunchTrapAttackRange float
---@field CurrentSilk UNiagaraComponent
---@field SilkAttachPt FVector
---@field Spider_Launch_Montage UAnimMontage
---@field AttackSound USoundBase
---@field TrapMode_Land UAnimMontage
---@field TauntMontage UAnimMontage
---@field ProjectileAttack UAnimMontage
local ASpider_Base_BP_C = {}

---@param Damaged boolean
function ASpider_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ASpider_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function ASpider_Base_BP_C:DetachSilk() end

function ASpider_Base_BP_C:DisableCollisionForTrap() end

function ASpider_Base_BP_C:DoRangedAttack() end

function ASpider_Base_BP_C:EnableCollisionForTrap() end

---@param Mode EnemyBehaviourMode::Type
function ASpider_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ASpider_Base_BP_C:ExecuteUbergraph_Spider_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ASpider_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

function ASpider_Base_BP_C:LowerFromCeiling__FinishedFunc() end

function ASpider_Base_BP_C:LowerFromCeiling__UpdateFunc() end

function ASpider_Base_BP_C:MeleeAttack() end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_08312C7E4F859EFC03704692AAD92F3C(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_4ACA5EE74E23BCA962705A80F8BE0258(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_7794AC12461F4DAA6246FDB87D9702E9(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_8B948F444768F563935AF3A2796BEF98(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_92CDFD15486609224434BA96CFAD6D64(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_A6C6515240FADB29F8962786F2538436(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_B71628DA489FC88E7E25C483A73F3512(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnBlendOut_DA39C1D24C9FC2BCEB84608B2CE5420B(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_08312C7E4F859EFC03704692AAD92F3C(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_4ACA5EE74E23BCA962705A80F8BE0258(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_7794AC12461F4DAA6246FDB87D9702E9(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_8B948F444768F563935AF3A2796BEF98(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_92CDFD15486609224434BA96CFAD6D64(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_A6C6515240FADB29F8962786F2538436(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_B71628DA489FC88E7E25C483A73F3512(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnCompleted_DA39C1D24C9FC2BCEB84608B2CE5420B(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_08312C7E4F859EFC03704692AAD92F3C(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_4ACA5EE74E23BCA962705A80F8BE0258(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_7794AC12461F4DAA6246FDB87D9702E9(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_8B948F444768F563935AF3A2796BEF98(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_92CDFD15486609224434BA96CFAD6D64(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_A6C6515240FADB29F8962786F2538436(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_B71628DA489FC88E7E25C483A73F3512(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnInterrupted_DA39C1D24C9FC2BCEB84608B2CE5420B(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_08312C7E4F859EFC03704692AAD92F3C(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_4ACA5EE74E23BCA962705A80F8BE0258(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_7794AC12461F4DAA6246FDB87D9702E9(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_8B948F444768F563935AF3A2796BEF98(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_92CDFD15486609224434BA96CFAD6D64(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_A6C6515240FADB29F8962786F2538436(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_B71628DA489FC88E7E25C483A73F3512(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyBegin_DA39C1D24C9FC2BCEB84608B2CE5420B(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_08312C7E4F859EFC03704692AAD92F3C(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_4ACA5EE74E23BCA962705A80F8BE0258(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_7794AC12461F4DAA6246FDB87D9702E9(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_8B948F444768F563935AF3A2796BEF98(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_92CDFD15486609224434BA96CFAD6D64(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_A6C6515240FADB29F8962786F2538436(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_B71628DA489FC88E7E25C483A73F3512(NotifyName) end

---@param NotifyName FName
function ASpider_Base_BP_C:OnNotifyEnd_DA39C1D24C9FC2BCEB84608B2CE5420B(NotifyName) end

function ASpider_Base_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASpider_Base_BP_C:ReceiveTick(DeltaSeconds) end

---@param Spawner AFishManerSpawner_Base_C
function ASpider_Base_BP_C:SetPreviewTrapModeLoc(Spawner) end

function ASpider_Base_BP_C:Taunt() end

function ASpider_Base_BP_C:TickBehaviour() end
