---@meta

---@class AMechaKnight_DualAxe_Base_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WeaponHitbox8 USphereComponent
---@field WeaponHitbox4 USphereComponent
---@field Weapon_L_Hitbox USphereComponent
---@field WeaponHitbox7 USphereComponent
---@field WeaponHitbox6 USphereComponent
---@field WeaponHitbox5 USphereComponent
---@field WeaponHitbox3 USphereComponent
---@field WeaponHitbox1 USphereComponent
---@field WeaponHitbox2 USphereComponent
---@field Weapon_L UEnemyAttachmentMesh_C
---@field Weapon_R_Hitbox USphereComponent
---@field Weapon_R UEnemyAttachmentMesh_C
---@field Timeline_6_0_NewTrack_1_8A127C184141E24BA81A3A8D22831DB5 float
---@field Timeline_6_0__Direction_8A127C184141E24BA81A3A8D22831DB5 ETimelineDirection::Type
---@field Timeline_6_0 UTimelineComponent
---@field LeftAxeFade_NewTrack_1_2B4E45094024689D01E21E90583219B3 float
---@field LeftAxeFade__Direction_2B4E45094024689D01E21E90583219B3 ETimelineDirection::Type
---@field LeftAxeFade UTimelineComponent
---@field RemainingThrows int32
---@field WeaponLDissolve float
---@field WeaponRDissolve float
---@field Projectile TSubclassOf<AMechaKnight_Axe_Projectile_C>
local AMechaKnight_DualAxe_Base_C = {}

---@param Damaged boolean
function AMechaKnight_DualAxe_Base_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AMechaKnight_DualAxe_Base_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AMechaKnight_DualAxe_Base_C:CancelAxeThrowAttack() end

function AMechaKnight_DualAxe_Base_C:ConsumeLeftAxe() end

function AMechaKnight_DualAxe_Base_C:ConsumeRightAxe() end

function AMechaKnight_DualAxe_Base_C:DoAxeThrowAttack() end

function AMechaKnight_DualAxe_Base_C:DoCancels() end

function AMechaKnight_DualAxe_Base_C:DoNextAxeThrow() end

function AMechaKnight_DualAxe_Base_C:DoStandardAttack() end

---@param Mode EnemyBehaviourMode::Type
function AMechaKnight_DualAxe_Base_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMechaKnight_DualAxe_Base_C:ExecuteUbergraph_MechaKnight_DualAxe_Base(EntryPoint) end

---@param R boolean
function AMechaKnight_DualAxe_Base_C:GetThrowAnim(R) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMechaKnight_DualAxe_Base_C:Kill(NoRewards, SupressDeathSound) end

function AMechaKnight_DualAxe_Base_C:LeftAxeFade__FinishedFunc() end

function AMechaKnight_DualAxe_Base_C:LeftAxeFade__UpdateFunc() end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnBlendOut_526FBC534DB6E5DB1E990DA6C6BC0B5F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnBlendOut_7CFC984546993B04ACF86C952129FF76(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnBlendOut_B32AAD4F4277551715A4EFA87B5F8D0B(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnBlendOut_EA6EC11B4066C3295D54E5A05E84CF9E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnBlendOut_FB36994A4397795069D5579926A5EC3C(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnCompleted_526FBC534DB6E5DB1E990DA6C6BC0B5F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnCompleted_7CFC984546993B04ACF86C952129FF76(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnCompleted_B32AAD4F4277551715A4EFA87B5F8D0B(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnCompleted_EA6EC11B4066C3295D54E5A05E84CF9E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnCompleted_FB36994A4397795069D5579926A5EC3C(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnInterrupted_526FBC534DB6E5DB1E990DA6C6BC0B5F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnInterrupted_7CFC984546993B04ACF86C952129FF76(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnInterrupted_B32AAD4F4277551715A4EFA87B5F8D0B(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnInterrupted_EA6EC11B4066C3295D54E5A05E84CF9E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnInterrupted_FB36994A4397795069D5579926A5EC3C(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyBegin_526FBC534DB6E5DB1E990DA6C6BC0B5F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyBegin_7CFC984546993B04ACF86C952129FF76(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyBegin_B32AAD4F4277551715A4EFA87B5F8D0B(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyBegin_EA6EC11B4066C3295D54E5A05E84CF9E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyBegin_FB36994A4397795069D5579926A5EC3C(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyEnd_526FBC534DB6E5DB1E990DA6C6BC0B5F(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyEnd_7CFC984546993B04ACF86C952129FF76(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyEnd_B32AAD4F4277551715A4EFA87B5F8D0B(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyEnd_EA6EC11B4066C3295D54E5A05E84CF9E(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Base_C:OnNotifyEnd_FB36994A4397795069D5579926A5EC3C(NotifyName) end

function AMechaKnight_DualAxe_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AMechaKnight_DualAxe_Base_C:ReceiveTick(DeltaSeconds) end

function AMechaKnight_DualAxe_Base_C:Stagger() end

function AMechaKnight_DualAxe_Base_C:Timeline_6_0__FinishedFunc() end

function AMechaKnight_DualAxe_Base_C:Timeline_6_0__UpdateFunc() end
