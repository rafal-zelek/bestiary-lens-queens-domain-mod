---@meta

---@class ADragon_Ros_Bestiary_C : ADragon_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field Eye UEnemyAttachmentMesh_C
---@field Timeline_7_BallColor_FDD52BF94C779CEA4FAC249357F3C9C9 FLinearColor
---@field Timeline_7__Direction_FDD52BF94C779CEA4FAC249357F3C9C9 ETimelineDirection::Type
---@field Timeline_7 UTimelineComponent
local ADragon_Ros_Bestiary_C = {}

function ADragon_Ros_Bestiary_C:AirFireball() end

---@param EntryPoint int32
function ADragon_Ros_Bestiary_C:ExecuteUbergraph_Dragon_Ros_Bestiary(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ADragon_Ros_Bestiary_C:GetFireballDamage(FB_DamageAttributeSet) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ADragon_Ros_Bestiary_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ADragon_Ros_Bestiary_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADragon_Ros_Bestiary_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnBlendOut_225435C04BD452FF108181BFF82730A2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnBlendOut_279863A04D006CFCB02652A8380BC40A(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnCompleted_225435C04BD452FF108181BFF82730A2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnCompleted_279863A04D006CFCB02652A8380BC40A(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnInterrupted_225435C04BD452FF108181BFF82730A2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnInterrupted_279863A04D006CFCB02652A8380BC40A(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnNotifyBegin_225435C04BD452FF108181BFF82730A2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnNotifyBegin_279863A04D006CFCB02652A8380BC40A(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnNotifyEnd_225435C04BD452FF108181BFF82730A2(NotifyName) end

---@param NotifyName FName
function ADragon_Ros_Bestiary_C:OnNotifyEnd_279863A04D006CFCB02652A8380BC40A(NotifyName) end

function ADragon_Ros_Bestiary_C:ReceiveBeginPlay() end

---@param Hit FHitResult
function ADragon_Ros_Bestiary_C:ResistedDamageFlash(Hit) end

function ADragon_Ros_Bestiary_C:RewardDialogueEnded() end

function ADragon_Ros_Bestiary_C:Timeline_7__FinishedFunc() end

function ADragon_Ros_Bestiary_C:Timeline_7__UpdateFunc() end

---@param Hit FHitResult
function ADragon_Ros_Bestiary_C:TookDamageFlash(Hit) end

---@param Start FVector
---@param End FVector
---@param Source AActor
---@param OutHit FHitResult
function ADragon_Ros_Bestiary_C:TraceForCreep(Start, End, Source, OutHit) end
