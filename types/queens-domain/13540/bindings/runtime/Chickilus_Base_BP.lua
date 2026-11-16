---@meta

---@class AChickilus_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpikeHitbox1 USphereComponent
---@field SpikeHitbox USphereComponent
---@field TrapMontage UAnimMontage
---@field Shaking float
---@field EggingUp boolean
---@field EggUpResistance boolean
---@field LastEggUpTime float
---@field EnableEggUpOnHit boolean
local AChickilus_Base_BP_C = {}

---@param Damaged boolean
function AChickilus_Base_BP_C:ActivateTrap(Damaged) end

function AChickilus_Base_BP_C:Aggrod() end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AChickilus_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Damage FFB_DamageAttributeSet
---@param Hit FHitResult
---@param Multiplier float
---@param Resisted boolean
---@param Immune boolean
---@param BonusDamage boolean
function AChickilus_Base_BP_C:DetermineTakenDamageMultiplier(Damage, Hit, Multiplier, Resisted, Immune, BonusDamage) end

function AChickilus_Base_BP_C:EmergencyEndEggUp() end

function AChickilus_Base_BP_C:EndEggUp() end

---@param Mode EnemyBehaviourMode::Type
function AChickilus_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AChickilus_Base_BP_C:ExecuteUbergraph_Chickilus_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AChickilus_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnBlendOut_1B2B2C064C99D129FABC5B9B22FC78B0(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnBlendOut_44CA44D84F5CC3FA840D43B881985F91(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnBlendOut_4769335A4320C2A2D7472F970ECEB722(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnBlendOut_A722D0004F8CB3956A76498780D27C7D(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnBlendOut_FA6DB78C4003D1CFA567E480D626FF53(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnCompleted_1B2B2C064C99D129FABC5B9B22FC78B0(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnCompleted_44CA44D84F5CC3FA840D43B881985F91(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnCompleted_4769335A4320C2A2D7472F970ECEB722(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnCompleted_A722D0004F8CB3956A76498780D27C7D(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnCompleted_FA6DB78C4003D1CFA567E480D626FF53(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnInterrupted_1B2B2C064C99D129FABC5B9B22FC78B0(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnInterrupted_44CA44D84F5CC3FA840D43B881985F91(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnInterrupted_4769335A4320C2A2D7472F970ECEB722(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnInterrupted_A722D0004F8CB3956A76498780D27C7D(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnInterrupted_FA6DB78C4003D1CFA567E480D626FF53(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyBegin_1B2B2C064C99D129FABC5B9B22FC78B0(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyBegin_44CA44D84F5CC3FA840D43B881985F91(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyBegin_4769335A4320C2A2D7472F970ECEB722(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyBegin_A722D0004F8CB3956A76498780D27C7D(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyBegin_FA6DB78C4003D1CFA567E480D626FF53(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyEnd_1B2B2C064C99D129FABC5B9B22FC78B0(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyEnd_44CA44D84F5CC3FA840D43B881985F91(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyEnd_4769335A4320C2A2D7472F970ECEB722(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyEnd_A722D0004F8CB3956A76498780D27C7D(NotifyName) end

---@param NotifyName FName
function AChickilus_Base_BP_C:OnNotifyEnd_FA6DB78C4003D1CFA567E480D626FF53(NotifyName) end

function AChickilus_Base_BP_C:ReceiveBeginPlay() end

function AChickilus_Base_BP_C:SetEggUpEndState() end

function AChickilus_Base_BP_C:Stagger() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AChickilus_Base_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

function AChickilus_Base_BP_C:TryToDoEggUp() end

---@param StartingPosition float
AChickilus_Base_BP_C['Begin Egg Up'] = function(self, StartingPosition) end
