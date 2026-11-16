---@meta

---@class AJosamiKnight_Gun_BP_C : AJosamiKnight_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FootHitbox USphereComponent
---@field Laser_L UStaticMeshComponent
---@field Laser_R UStaticMeshComponent
---@field Laser_C UStaticMeshComponent
---@field Scene_0 USceneComponent
---@field Aiming boolean
---@field AimTarget FVector
---@field SnipingMode boolean
---@field LastSeenPlayerLoc FVector
---@field FireballClass TSubclassOf<ACrawler_Fireball_C>
---@field DodgeLoc FVector
---@field DodgeStart FVector
local AJosamiKnight_Gun_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AJosamiKnight_Gun_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AJosamiKnight_Gun_BP_C:CancelDodge() end

function AJosamiKnight_Gun_BP_C:CancelSniper() end

function AJosamiKnight_Gun_BP_C:CheckChase() end

---@param EntryPoint int32
function AJosamiKnight_Gun_BP_C:ExecuteUbergraph_JosamiKnight_Gun_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AJosamiKnight_Gun_BP_C:Kill(NoRewards, SupressDeathSound) end

function AJosamiKnight_Gun_BP_C:MoveTowardsPlayer() end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnBlendOut_20B43EFE49B0B3AC0842928A80E2583D(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnBlendOut_651A31874464C75F38EB5495592BEA38(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A7DDFBF03(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A89CE676A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9AF45A2D45(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnCompleted_20B43EFE49B0B3AC0842928A80E2583D(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnCompleted_651A31874464C75F38EB5495592BEA38(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A7DDFBF03(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A89CE676A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9AF45A2D45(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnInterrupted_20B43EFE49B0B3AC0842928A80E2583D(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnInterrupted_651A31874464C75F38EB5495592BEA38(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A7DDFBF03(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A89CE676A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9AF45A2D45(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyBegin_20B43EFE49B0B3AC0842928A80E2583D(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyBegin_651A31874464C75F38EB5495592BEA38(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A7DDFBF03(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A89CE676A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9AF45A2D45(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyEnd_20B43EFE49B0B3AC0842928A80E2583D(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyEnd_651A31874464C75F38EB5495592BEA38(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A7DDFBF03(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A89CE676A(NotifyName) end

---@param NotifyName FName
function AJosamiKnight_Gun_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9AF45A2D45(NotifyName) end

---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function AJosamiKnight_Gun_BP_C:QueryFinished(QueryInstance, QueryStatus) end

function AJosamiKnight_Gun_BP_C:RandomizeStartingAimTarget() end

function AJosamiKnight_Gun_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AJosamiKnight_Gun_BP_C:ReceiveTick(DeltaSeconds) end

---@param Target FVector
---@param Standing boolean
---@param Velocity FVector
---@param Lead float
function AJosamiKnight_Gun_BP_C:ShootAtTarget(Target, Standing, Velocity, Lead) end

function AJosamiKnight_Gun_BP_C:Stagger() end

function AJosamiKnight_Gun_BP_C:StartSnipeLaser() end

function AJosamiKnight_Gun_BP_C:StartWandering() end

function AJosamiKnight_Gun_BP_C:UnAggrod() end

function AJosamiKnight_Gun_BP_C:UpdateAiming() end

function AJosamiKnight_Gun_BP_C:UpdateSniperModeExit() end
