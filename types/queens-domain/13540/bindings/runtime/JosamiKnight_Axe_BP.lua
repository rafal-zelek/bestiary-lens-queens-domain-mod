---@meta

---@class AJosamiKnight_Axe_BP_C : AJosamiKnight_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ExplosionHitbox USphereComponent
---@field WeaponHitbox6 USphereComponent
---@field WeaponHitbox5 USphereComponent
---@field WeaponHitbox4 USphereComponent
---@field WeaponHitbox3 USphereComponent
---@field WeaponHitbox2 USphereComponent
---@field WeaponHitbox1 USphereComponent
---@field WeaponHitbox USphereComponent
---@field ExplodeAttackExplodeSound USoundCue
---@field ExplodeAttackChargeSound USoundCue
---@field ExplodeAttackSystem UNiagaraSystem
local AJosamiKnight_Axe_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Axe_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AJosamiKnight_Axe_BP_C:ExecuteUbergraph_JosamiKnight_Axe_BP(EntryPoint) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnBlendOut_84A671F44ED42A8E2462DC92B23644E9(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnBlendOut_CB887DAA4ED6CBCCC69B28AAAEE99064(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnBlendOut_E9E6A86A4B34DDBBEF3675BB11F704FB(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnCompleted_84A671F44ED42A8E2462DC92B23644E9(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnCompleted_CB887DAA4ED6CBCCC69B28AAAEE99064(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnCompleted_E9E6A86A4B34DDBBEF3675BB11F704FB(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnInterrupted_84A671F44ED42A8E2462DC92B23644E9(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnInterrupted_CB887DAA4ED6CBCCC69B28AAAEE99064(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnInterrupted_E9E6A86A4B34DDBBEF3675BB11F704FB(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyBegin_84A671F44ED42A8E2462DC92B23644E9(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyBegin_CB887DAA4ED6CBCCC69B28AAAEE99064(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyBegin_E9E6A86A4B34DDBBEF3675BB11F704FB(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyEnd_84A671F44ED42A8E2462DC92B23644E9(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyEnd_CB887DAA4ED6CBCCC69B28AAAEE99064(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Axe_BP_C:OnNotifyEnd_E9E6A86A4B34DDBBEF3675BB11F704FB(NotifyName) end
