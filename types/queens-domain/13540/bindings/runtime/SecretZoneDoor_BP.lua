---@meta

---@class ASecretZoneDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
---@field Door USkeletalMeshComponent
---@field Frame UStaticMeshComponent
local ASecretZoneDoor_BP_C = {}

function ASecretZoneDoor_BP_C:BndEvt__SecretZoneDoor_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

function ASecretZoneDoor_BP_C:BndEvt__SecretZoneDoor_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_5_FinishedAdding__DelegateSignature() end

---@param EntryPoint int32
function ASecretZoneDoor_BP_C:ExecuteUbergraph_SecretZoneDoor_BP(EntryPoint) end

---@param Key UFS_ItemData_C
function ASecretZoneDoor_BP_C:InsertKey(Key) end

---@param NotifyName FName
function ASecretZoneDoor_BP_C:OnBlendOut_3F0FCB854BD3D6B69E03D99AFB41086F(NotifyName) end

---@param NotifyName FName
function ASecretZoneDoor_BP_C:OnCompleted_3F0FCB854BD3D6B69E03D99AFB41086F(NotifyName) end

---@param NotifyName FName
function ASecretZoneDoor_BP_C:OnInterrupted_3F0FCB854BD3D6B69E03D99AFB41086F(NotifyName) end

---@param NotifyName FName
function ASecretZoneDoor_BP_C:OnNotifyBegin_3F0FCB854BD3D6B69E03D99AFB41086F(NotifyName) end

---@param NotifyName FName
function ASecretZoneDoor_BP_C:OnNotifyEnd_3F0FCB854BD3D6B69E03D99AFB41086F(NotifyName) end

function ASecretZoneDoor_BP_C:OpenDoor() end

function ASecretZoneDoor_BP_C:SetToOpenState() end
