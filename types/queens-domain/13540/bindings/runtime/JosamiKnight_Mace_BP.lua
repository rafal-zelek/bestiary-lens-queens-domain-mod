---@meta

---@class AJosamiKnight_Mace_BP_C : AJosamiKnight_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WooshFX UNiagaraComponent
---@field LanceAudio UAudioComponent
---@field WeaponHitbox USphereComponent
---@field WeaponHitbox3 USphereComponent
---@field WeaponHitbox2 USphereComponent
---@field CurrentSpinSpeed float
---@field EnableLanceFX boolean
---@field SpinSoundInterp float
---@field RoboLanceEnd USoundBase
---@field SpinTime float
local AJosamiKnight_Mace_BP_C = {}

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AJosamiKnight_Mace_BP_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Mace_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AJosamiKnight_Mace_BP_C:CancelAttacks() end

function AJosamiKnight_Mace_BP_C:CancelSpinnyWalk() end

---@param EntryPoint int32
function AJosamiKnight_Mace_BP_C:ExecuteUbergraph_JosamiKnight_Mace_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiKnight_Mace_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnBlendOut_9BA875EB4EBB3E6ECB1D6F8C1B6C4197(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnBlendOut_B6247E9E41CCCDA8440594B7CC4683C4(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnBlendOut_C04318D24C18A9570BADCD87AF510ED5(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnCompleted_9BA875EB4EBB3E6ECB1D6F8C1B6C4197(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnCompleted_B6247E9E41CCCDA8440594B7CC4683C4(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnCompleted_C04318D24C18A9570BADCD87AF510ED5(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnInterrupted_9BA875EB4EBB3E6ECB1D6F8C1B6C4197(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnInterrupted_B6247E9E41CCCDA8440594B7CC4683C4(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnInterrupted_C04318D24C18A9570BADCD87AF510ED5(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyBegin_9BA875EB4EBB3E6ECB1D6F8C1B6C4197(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyBegin_B6247E9E41CCCDA8440594B7CC4683C4(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyBegin_C04318D24C18A9570BADCD87AF510ED5(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyEnd_9BA875EB4EBB3E6ECB1D6F8C1B6C4197(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyEnd_B6247E9E41CCCDA8440594B7CC4683C4(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Mace_BP_C:OnNotifyEnd_C04318D24C18A9570BADCD87AF510ED5(NotifyName) end

---@param Duration float
function AJosamiKnight_Mace_BP_C:Paralyze(Duration) end

---@param DeltaSeconds float
function AJosamiKnight_Mace_BP_C:ReceiveTick(DeltaSeconds) end

function AJosamiKnight_Mace_BP_C:SpinnyEnded() end

function AJosamiKnight_Mace_BP_C:SpinnyStarted() end

function AJosamiKnight_Mace_BP_C:Stagger() end
