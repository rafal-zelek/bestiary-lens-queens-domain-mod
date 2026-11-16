---@meta

---@class ABookBug_Magic_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Bug_FloatFX UNiagaraComponent
---@field TrapHitbox USphereComponent
---@field ActivatingTrap boolean
---@field ShelfTrapAttackRange float
---@field FlyingTrap boolean
---@field TargetFlyingTrapDir FVector
---@field FlyingTrapSpeed float
---@field Proejctile TSubclassOf<ABug_Magicball_C>
local ABookBug_Magic_BP_C = {}

---@param Damaged boolean
function ABookBug_Magic_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABookBug_Magic_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Hit FHitResult
function ABookBug_Magic_BP_C:BlockDagger(Hit) end

---@param Mode EnemyBehaviourMode::Type
function ABookBug_Magic_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function ABookBug_Magic_BP_C:ExecuteUbergraph_BookBug_Magic_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ABookBug_Magic_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_2BA3064B482A84BF185F54A4AA5030BF(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_4A606E9A4ACC72D97088B6B235982F8F(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_64B812124228DE0F2264A5A687095FAB(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_65753D0A4B8F900AE5BD9D97EBBB033E(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_8F27546E453A6206668A25A44DB7E7AA(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_AD59A9E04F54CF21F3F647AE2B614E86(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_E3965D1540DE179D985C5C9968A2C905(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnBlendOut_F4CED6384CA4ACFCC73951AE837DCD17(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_2BA3064B482A84BF185F54A4AA5030BF(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_4A606E9A4ACC72D97088B6B235982F8F(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_64B812124228DE0F2264A5A687095FAB(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_65753D0A4B8F900AE5BD9D97EBBB033E(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_8F27546E453A6206668A25A44DB7E7AA(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_AD59A9E04F54CF21F3F647AE2B614E86(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_E3965D1540DE179D985C5C9968A2C905(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnCompleted_F4CED6384CA4ACFCC73951AE837DCD17(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_2BA3064B482A84BF185F54A4AA5030BF(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_4A606E9A4ACC72D97088B6B235982F8F(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_64B812124228DE0F2264A5A687095FAB(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_65753D0A4B8F900AE5BD9D97EBBB033E(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_8F27546E453A6206668A25A44DB7E7AA(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_AD59A9E04F54CF21F3F647AE2B614E86(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_E3965D1540DE179D985C5C9968A2C905(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnInterrupted_F4CED6384CA4ACFCC73951AE837DCD17(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_2BA3064B482A84BF185F54A4AA5030BF(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_4A606E9A4ACC72D97088B6B235982F8F(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_64B812124228DE0F2264A5A687095FAB(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_65753D0A4B8F900AE5BD9D97EBBB033E(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_8F27546E453A6206668A25A44DB7E7AA(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_AD59A9E04F54CF21F3F647AE2B614E86(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_E3965D1540DE179D985C5C9968A2C905(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyBegin_F4CED6384CA4ACFCC73951AE837DCD17(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_2BA3064B482A84BF185F54A4AA5030BF(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_4A606E9A4ACC72D97088B6B235982F8F(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_64B812124228DE0F2264A5A687095FAB(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_65753D0A4B8F900AE5BD9D97EBBB033E(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_8F27546E453A6206668A25A44DB7E7AA(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_AD59A9E04F54CF21F3F647AE2B614E86(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_E3965D1540DE179D985C5C9968A2C905(NotifyName) end

---@param NotifyName FName
function ABookBug_Magic_BP_C:OnNotifyEnd_F4CED6384CA4ACFCC73951AE837DCD17(NotifyName) end

function ABookBug_Magic_BP_C:ReceiveBeginPlay() end

function ABookBug_Magic_BP_C:TickBehaviour() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ABookBug_Magic_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function ABookBug_Magic_BP_C:UserConstructionScript() end

---@param CanSeePlayer boolean
ABookBug_Magic_BP_C['Can See Target Player'] = function(self, CanSeePlayer) end

ABookBug_Magic_BP_C['Update Rotation'] = function(self) end
