---@meta

---@class ADragon_Ros_BP_C : ADragon_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Eye UEnemyAttachmentMesh_C
---@field Timeline_7_BallColor_45B28F024838C118FB2993A8C99754D6 FLinearColor
---@field Timeline_7__Direction_45B28F024838C118FB2993A8C99754D6 ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
local ADragon_Ros_BP_C = {}

function ADragon_Ros_BP_C:AirFireball() end

---@param EntryPoint int32
function ADragon_Ros_BP_C:ExecuteUbergraph_Dragon_Ros_BP(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ADragon_Ros_BP_C:GetFireballDamage(FB_DamageAttributeSet) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ADragon_Ros_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ADragon_Ros_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADragon_Ros_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnBlendOut_86D33F52496AB818E7F7C4BB3BC99C53(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnBlendOut_B1C8F48D492F9C05D03234B49DABE6C2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnCompleted_86D33F52496AB818E7F7C4BB3BC99C53(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnCompleted_B1C8F48D492F9C05D03234B49DABE6C2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnInterrupted_86D33F52496AB818E7F7C4BB3BC99C53(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnInterrupted_B1C8F48D492F9C05D03234B49DABE6C2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnNotifyBegin_86D33F52496AB818E7F7C4BB3BC99C53(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnNotifyBegin_B1C8F48D492F9C05D03234B49DABE6C2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnNotifyEnd_86D33F52496AB818E7F7C4BB3BC99C53(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_BP_C:OnNotifyEnd_B1C8F48D492F9C05D03234B49DABE6C2(NotifyName) end

function ADragon_Ros_BP_C:ReceiveBeginPlay() end

---@param Hit FHitResult
function ADragon_Ros_BP_C:ResistedDamageFlash(Hit) end

function ADragon_Ros_BP_C:RewardDialogueEnded() end

function ADragon_Ros_BP_C:Timeline_7__FinishedFunc() end

function ADragon_Ros_BP_C:Timeline_7__UpdateFunc() end

---@param Hit FHitResult
function ADragon_Ros_BP_C:TookDamageFlash(Hit) end

---@param Start FVector
---@param End FVector
---@param Source AActor
---@param OutHit FHitResult
function ADragon_Ros_BP_C:TraceForCreep(Start, End, Source, OutHit) end
