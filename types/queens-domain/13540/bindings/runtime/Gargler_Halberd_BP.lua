---@meta

---@class AGargler_Halberd_BP_C : AGargler_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HalberdHitbox8 USphereComponent
---@field HalberdHitbox7 USphereComponent
---@field HalberdHitbox USphereComponent
---@field Weapon UEnemyAttachmentMesh_C
---@field HalberdHitbox6 USphereComponent
---@field HalberdHitbox5 USphereComponent
---@field HalberdHitbox4 USphereComponent
---@field HalberdHitbox3 USphereComponent
---@field HalberdHitbox2 USphereComponent
---@field HalberdHitbox1 USphereComponent
---@field StabOnCooldown boolean
local AGargler_Halberd_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AGargler_Halberd_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AGargler_Halberd_BP_C:ExecuteUbergraph_Gargler_Halberd_BP(EntryPoint) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnBlendOut_5DA048F944B5197389E64CBC35C31198(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnBlendOut_A01C028848086562B40E9F96F13532CC(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnBlendOut_E636281847B136D8581CBFB1D38BA8BD(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnCompleted_5DA048F944B5197389E64CBC35C31198(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnCompleted_A01C028848086562B40E9F96F13532CC(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnCompleted_E636281847B136D8581CBFB1D38BA8BD(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnInterrupted_5DA048F944B5197389E64CBC35C31198(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnInterrupted_A01C028848086562B40E9F96F13532CC(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnInterrupted_E636281847B136D8581CBFB1D38BA8BD(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyBegin_5DA048F944B5197389E64CBC35C31198(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyBegin_A01C028848086562B40E9F96F13532CC(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyBegin_E636281847B136D8581CBFB1D38BA8BD(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyEnd_5DA048F944B5197389E64CBC35C31198(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyEnd_A01C028848086562B40E9F96F13532CC(NotifyName) end

---@param NotifyName FName
function AGargler_Halberd_BP_C:OnNotifyEnd_E636281847B136D8581CBFB1D38BA8BD(NotifyName) end

---@param Dissolve float
function AGargler_Halberd_BP_C:SetTrapDissolve(Dissolve) end
