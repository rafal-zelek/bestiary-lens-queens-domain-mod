---@meta

---@class AJosamiKnight_Spear_BP_C : AJosamiKnight_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShieldHitbox USphereComponent
---@field Hitbox7 USphereComponent
---@field Hitbox6 USphereComponent
---@field Hitbox5 USphereComponent
---@field Hitbox4 USphereComponent
---@field Hitbox3 USphereComponent
---@field Hitbox2 USphereComponent
---@field SpearHitbox USphereComponent
---@field Weapon_L UEnemyAttachmentMesh_C
---@field Blocking boolean
---@field EnableParry boolean
---@field PlayerInFrontTime float
---@field Projectile TSubclassOf<AJosami_Spear_Projectile_C>
local AJosamiKnight_Spear_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Spear_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AJosamiKnight_Spear_BP_C:CancelBlock() end

function AJosamiKnight_Spear_BP_C:DoMeleeAttacks() end

function AJosamiKnight_Spear_BP_C:DoParry() end

function AJosamiKnight_Spear_BP_C:DoProjectiles() end

function AJosamiKnight_Spear_BP_C:DoShieldBLock() end

function AJosamiKnight_Spear_BP_C:DoShieldBash() end

---@param EntryPoint int32
function AJosamiKnight_Spear_BP_C:ExecuteUbergraph_JosamiKnight_Spear_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiKnight_Spear_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnBlendOut_33D2A03D44542275143FCC9697C9980A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnBlendOut_490A1F1B428CF788CAC815B15F384B57(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnBlendOut_51904DE04CC6A4626ACE3CB0BE089977(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnBlendOut_67382BA7444AF0D928BFE7A9F01CE30E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnBlendOut_FF10B4B94A7D9B4D12E684B79BAB576B(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnCompleted_33D2A03D44542275143FCC9697C9980A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnCompleted_490A1F1B428CF788CAC815B15F384B57(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnCompleted_51904DE04CC6A4626ACE3CB0BE089977(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnCompleted_67382BA7444AF0D928BFE7A9F01CE30E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnCompleted_FF10B4B94A7D9B4D12E684B79BAB576B(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnInterrupted_33D2A03D44542275143FCC9697C9980A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnInterrupted_490A1F1B428CF788CAC815B15F384B57(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnInterrupted_51904DE04CC6A4626ACE3CB0BE089977(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnInterrupted_67382BA7444AF0D928BFE7A9F01CE30E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnInterrupted_FF10B4B94A7D9B4D12E684B79BAB576B(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyBegin_33D2A03D44542275143FCC9697C9980A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyBegin_490A1F1B428CF788CAC815B15F384B57(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyBegin_51904DE04CC6A4626ACE3CB0BE089977(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyBegin_67382BA7444AF0D928BFE7A9F01CE30E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyBegin_FF10B4B94A7D9B4D12E684B79BAB576B(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyEnd_33D2A03D44542275143FCC9697C9980A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyEnd_490A1F1B428CF788CAC815B15F384B57(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyEnd_51904DE04CC6A4626ACE3CB0BE089977(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyEnd_67382BA7444AF0D928BFE7A9F01CE30E(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Spear_BP_C:OnNotifyEnd_FF10B4B94A7D9B4D12E684B79BAB576B(NotifyName) end

function AJosamiKnight_Spear_BP_C:RecoverFromBlock() end

function AJosamiKnight_Spear_BP_C:Stagger() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AJosamiKnight_Spear_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param HitLocation FVector
---@param HitLocationIsValid boolean
---@param AppliedDamage FFB_DamageAttributeSet
function AJosamiKnight_Spear_BP_C:handleshieldresistance(Hit, DamageToApply, Applier, HitLocation, HitLocationIsValid, AppliedDamage) end
