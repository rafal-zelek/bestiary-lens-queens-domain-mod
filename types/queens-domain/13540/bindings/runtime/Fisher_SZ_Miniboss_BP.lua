---@meta

---@class AFisher_SZ_Miniboss_BP_C : AFisher_base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CreepAudio UAudioComponent
---@field MouthFire UNiagaraComponent
---@field GhostFish_GillFire1 UNiagaraComponent
---@field GhostFish_GillFire UNiagaraComponent
---@field FirePuddle TArray<AFisher_SZ_FirePuddle_C>
---@field PuddleTickRate float
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field LastSpawnLoc FVector
local AFisher_SZ_Miniboss_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFisher_SZ_Miniboss_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param Puddle AFisher_SZ_FirePuddle_C
function AFisher_SZ_Miniboss_BP_C:CustomEvent_0(Puddle) end

---@param EntryPoint int32
function AFisher_SZ_Miniboss_BP_C:ExecuteUbergraph_Fisher_SZ_Miniboss_BP(EntryPoint) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnBlendOut_899EF0FF4DA98DAADB54E1AE7D0CD628(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnBlendOut_8DFD44E9489603551C97A0881803198B(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnCompleted_899EF0FF4DA98DAADB54E1AE7D0CD628(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnCompleted_8DFD44E9489603551C97A0881803198B(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnInterrupted_899EF0FF4DA98DAADB54E1AE7D0CD628(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnInterrupted_8DFD44E9489603551C97A0881803198B(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnNotifyBegin_899EF0FF4DA98DAADB54E1AE7D0CD628(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnNotifyBegin_8DFD44E9489603551C97A0881803198B(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnNotifyEnd_899EF0FF4DA98DAADB54E1AE7D0CD628(NotifyName) end

---@param NotifyName FName
function AFisher_SZ_Miniboss_BP_C:OnNotifyEnd_8DFD44E9489603551C97A0881803198B(NotifyName) end

function AFisher_SZ_Miniboss_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFisher_SZ_Miniboss_BP_C:ReceiveTick(DeltaSeconds) end

function AFisher_SZ_Miniboss_BP_C:RemovePuddle() end

function AFisher_SZ_Miniboss_BP_C:SpawnPuddle() end

function AFisher_SZ_Miniboss_BP_C:StartTickloop() end

function AFisher_SZ_Miniboss_BP_C:TickLoop() end

---@param DeltaTime float
function AFisher_SZ_Miniboss_BP_C:UpdateCreepAudio(DeltaTime) end
