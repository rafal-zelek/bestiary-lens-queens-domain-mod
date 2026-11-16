---@meta

---@class AMechaKnight_RoboLance_C : AMechaKnight_Lance_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MechaKnight_Robo_JetSounds UAudioComponent
---@field Thruster_R UParticleSystemComponent
---@field Thruster_Back UParticleSystemComponent
---@field Thruster_L UParticleSystemComponent
---@field MechaKnight_Robo_BigPoke_FX UNiagaraComponent
---@field WeaponHitbox9 USphereComponent
---@field WeaponHitbox8 USphereComponent
---@field WeaponHitbox6 USphereComponent
---@field WeaponHitbox5 USphereComponent
---@field WeaponHitbox7 USphereComponent
---@field Pokehitbox USphereComponent
---@field ThrusterVal float
local AMechaKnight_RoboLance_C = {}

---@param Damaged boolean
function AMechaKnight_RoboLance_C:ActivateTrap(Damaged) end

---@param Target UObject
---@param Hit FHitResult
---@param PositionOverride FVector
---@param UseOverride boolean
---@param HitTarget boolean
function AMechaKnight_RoboLance_C:ApplyDamageToHitboxTarget(Target, Hit, PositionOverride, UseOverride, HitTarget) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AMechaKnight_RoboLance_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AMechaKnight_RoboLance_C:CancelChargeAttack() end

function AMechaKnight_RoboLance_C:CleanEndCharge() end

function AMechaKnight_RoboLance_C:DoChargeAttack() end

---@param Mode EnemyBehaviourMode::Type
function AMechaKnight_RoboLance_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMechaKnight_RoboLance_C:ExecuteUbergraph_MechaKnight_RoboLance(EntryPoint) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_035A7D3649EA17E9F22ECC85EED24470(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_32323909428C8DA6620C74AEB81C766F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_5139E9E64F0E6870E3F5F897CE4BB9FA(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_6B5ABCEC4F77DA9323B3CF99B04173F2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_E979215349CBE3A65155468ECCD903BD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_F016468145CD9FF950194AA4D6E3D925(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_F064B9F945AC007BA72DD99949EFC64E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_F710BEB34E1B2A54374A5B9A6BAA8FCD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnBlendOut_F710BEB34E1B2A54374A5B9AF89371B2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_035A7D3649EA17E9F22ECC85EED24470(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_32323909428C8DA6620C74AEB81C766F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_5139E9E64F0E6870E3F5F897CE4BB9FA(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_6B5ABCEC4F77DA9323B3CF99B04173F2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_E979215349CBE3A65155468ECCD903BD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_F016468145CD9FF950194AA4D6E3D925(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_F064B9F945AC007BA72DD99949EFC64E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_F710BEB34E1B2A54374A5B9A6BAA8FCD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnCompleted_F710BEB34E1B2A54374A5B9AF89371B2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_035A7D3649EA17E9F22ECC85EED24470(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_32323909428C8DA6620C74AEB81C766F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_5139E9E64F0E6870E3F5F897CE4BB9FA(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_6B5ABCEC4F77DA9323B3CF99B04173F2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_E979215349CBE3A65155468ECCD903BD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_F016468145CD9FF950194AA4D6E3D925(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_F064B9F945AC007BA72DD99949EFC64E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_F710BEB34E1B2A54374A5B9A6BAA8FCD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnInterrupted_F710BEB34E1B2A54374A5B9AF89371B2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_035A7D3649EA17E9F22ECC85EED24470(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_32323909428C8DA6620C74AEB81C766F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_5139E9E64F0E6870E3F5F897CE4BB9FA(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_6B5ABCEC4F77DA9323B3CF99B04173F2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_E979215349CBE3A65155468ECCD903BD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_F016468145CD9FF950194AA4D6E3D925(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_F064B9F945AC007BA72DD99949EFC64E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A6BAA8FCD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AF89371B2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_035A7D3649EA17E9F22ECC85EED24470(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_32323909428C8DA6620C74AEB81C766F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_5139E9E64F0E6870E3F5F897CE4BB9FA(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_6B5ABCEC4F77DA9323B3CF99B04173F2(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_E979215349CBE3A65155468ECCD903BD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_F016468145CD9FF950194AA4D6E3D925(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_F064B9F945AC007BA72DD99949EFC64E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A6BAA8FCD(NotifyName) end

---@param NotifyName FName
function AMechaKnight_RoboLance_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AF89371B2(NotifyName) end

---@param DeltaSeconds float
function AMechaKnight_RoboLance_C:ReceiveTick(DeltaSeconds) end

function AMechaKnight_RoboLance_C:UncolliderWithPlayerTemporarily() end

function AMechaKnight_RoboLance_C:UpdateThrusters() end
