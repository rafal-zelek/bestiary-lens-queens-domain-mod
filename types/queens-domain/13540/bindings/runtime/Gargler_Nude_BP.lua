---@meta

---@class AGargler_Nude_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WeaponDissolveIn_NewTrack_0_96492B5440DB5DF5F09FF6BC17B18ADD float
---@field WeaponDissolveIn__Direction_96492B5440DB5DF5F09FF6BC17B18ADD ETimelineDirection::Type
---@field WeaponDissolveIn UTimelineComponent
local AGargler_Nude_BP_C = {}

---@param Damaged boolean
function AGargler_Nude_BP_C:ActivateTrap(Damaged) end

---@param Mode EnemyBehaviourMode::Type
function AGargler_Nude_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AGargler_Nude_BP_C:ExecuteUbergraph_Gargler_Nude_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGargler_Nude_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnBlendOut_186590C64886639FB4B3288A40DAA6A8(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnBlendOut_42E9DFFC4AA2B16F7E48DE8CAB1DD8B2(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnBlendOut_95107C7A4BF4DD5BB674898B43B1675C(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnBlendOut_983BB38A454EFEBABE29AB9F60046874(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnCompleted_186590C64886639FB4B3288A40DAA6A8(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnCompleted_42E9DFFC4AA2B16F7E48DE8CAB1DD8B2(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnCompleted_95107C7A4BF4DD5BB674898B43B1675C(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnCompleted_983BB38A454EFEBABE29AB9F60046874(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnInterrupted_186590C64886639FB4B3288A40DAA6A8(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnInterrupted_42E9DFFC4AA2B16F7E48DE8CAB1DD8B2(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnInterrupted_95107C7A4BF4DD5BB674898B43B1675C(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnInterrupted_983BB38A454EFEBABE29AB9F60046874(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyBegin_186590C64886639FB4B3288A40DAA6A8(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyBegin_42E9DFFC4AA2B16F7E48DE8CAB1DD8B2(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyBegin_95107C7A4BF4DD5BB674898B43B1675C(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyBegin_983BB38A454EFEBABE29AB9F60046874(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyEnd_186590C64886639FB4B3288A40DAA6A8(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyEnd_42E9DFFC4AA2B16F7E48DE8CAB1DD8B2(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyEnd_95107C7A4BF4DD5BB674898B43B1675C(NotifyName) end

---@param NotifyName FName
function AGargler_Nude_BP_C:OnNotifyEnd_983BB38A454EFEBABE29AB9F60046874(NotifyName) end

---@param Dissolve float
function AGargler_Nude_BP_C:SetWeaponDissolve(Dissolve) end

function AGargler_Nude_BP_C:UpdateInitialBehaviour() end

function AGargler_Nude_BP_C:UserConstructionScript() end

function AGargler_Nude_BP_C:WeaponDissolveIn__FinishedFunc() end

function AGargler_Nude_BP_C:WeaponDissolveIn__UpdateFunc() end
