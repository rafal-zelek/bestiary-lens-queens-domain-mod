---@meta

---@class AFishManer_Base_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TrapLaunchTimeline_Interp_F94F75BC4C8F5DC45787C084935AD606 float
---@field TrapLaunchTimeline__Direction_F94F75BC4C8F5DC45787C084935AD606 ETimelineDirection::Type
---@field TrapLaunchTimeline UTimelineComponent
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
---@field SillyFish boolean
---@field RangedAttacking boolean
---@field OriginalMeshPos FVector
---@field TrapMeshPos FVector
---@field TrapLaunchTimePermeterTravelled float
---@field SpitMontage UAnimMontage
---@field PitchOffset float
local AFishManer_Base_BP_C = {}

---@param Damaged boolean
function AFishManer_Base_BP_C:ActivateTrap(Damaged) end

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFishManer_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AFishManer_Base_BP_C:CancelWorshipDelay() end

---@param Mode EnemyBehaviourMode::Type
function AFishManer_Base_BP_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AFishManer_Base_BP_C:ExecuteUbergraph_FishManer_Base_BP(EntryPoint) end

function AFishManer_Base_BP_C:ForcedPotshot() end

---@param bOverride boolean
---@param Location FVector
function AFishManer_Base_BP_C:GetRotationTargetLocationOverride(bOverride, Location) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFishManer_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_0F02DFC147584D6558B437A4A04AF70D(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_465BFCB94ACCB9E55F5B58B5C2BCA250(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_536B6FEC4786CBA010DF4694CB422483(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_6374F60B41CCA1E83F6710BA645DF558(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_98F36E99473F3D4DEE2AA38E072E0318(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_A4A793F149940B07E940499559534ED0(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_A6B0ABF440811BE7F5E22EB9E7969970(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnBlendOut_F38C468A487DCCB50446549816CC7879(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_0F02DFC147584D6558B437A4A04AF70D(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_465BFCB94ACCB9E55F5B58B5C2BCA250(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_536B6FEC4786CBA010DF4694CB422483(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_6374F60B41CCA1E83F6710BA645DF558(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_98F36E99473F3D4DEE2AA38E072E0318(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_A4A793F149940B07E940499559534ED0(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_A6B0ABF440811BE7F5E22EB9E7969970(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnCompleted_F38C468A487DCCB50446549816CC7879(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_0F02DFC147584D6558B437A4A04AF70D(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_465BFCB94ACCB9E55F5B58B5C2BCA250(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_536B6FEC4786CBA010DF4694CB422483(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_6374F60B41CCA1E83F6710BA645DF558(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_98F36E99473F3D4DEE2AA38E072E0318(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_A4A793F149940B07E940499559534ED0(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_A6B0ABF440811BE7F5E22EB9E7969970(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnInterrupted_F38C468A487DCCB50446549816CC7879(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_0F02DFC147584D6558B437A4A04AF70D(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_465BFCB94ACCB9E55F5B58B5C2BCA250(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_536B6FEC4786CBA010DF4694CB422483(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_6374F60B41CCA1E83F6710BA645DF558(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_98F36E99473F3D4DEE2AA38E072E0318(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_A4A793F149940B07E940499559534ED0(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_A6B0ABF440811BE7F5E22EB9E7969970(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyBegin_F38C468A487DCCB50446549816CC7879(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_0F02DFC147584D6558B437A4A04AF70D(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_465BFCB94ACCB9E55F5B58B5C2BCA250(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_536B6FEC4786CBA010DF4694CB422483(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_6374F60B41CCA1E83F6710BA645DF558(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_98F36E99473F3D4DEE2AA38E072E0318(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_A4A793F149940B07E940499559534ED0(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_A6B0ABF440811BE7F5E22EB9E7969970(NotifyName) end

---@param NotifyName FName
function AFishManer_Base_BP_C:OnNotifyEnd_F38C468A487DCCB50446549816CC7879(NotifyName) end

function AFishManer_Base_BP_C:ReceiveBeginPlay() end

---@param Spawner AFishManerSpawner_Base_C
function AFishManer_Base_BP_C:SetPreviewTrapModeLoc(Spawner) end

function AFishManer_Base_BP_C:TrapLaunchTimeline__FinishedFunc() end

function AFishManer_Base_BP_C:TrapLaunchTimeline__UpdateFunc() end

function AFishManer_Base_BP_C:UserConstructionScript() end
