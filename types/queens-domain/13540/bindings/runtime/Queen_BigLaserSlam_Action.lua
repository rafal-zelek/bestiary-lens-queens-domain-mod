---@meta

---@class UQueen_BigLaserSlam_Action_C : UEnemyAction_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Combos1 TArray<FQueenLaserCombo>
---@field Combos2 TArray<FQueenLaserCombo>
---@field Combos3 TArray<FQueenLaserCombo>
---@field SelectedCombo FQueenLaserCombo
---@field CurrentComboIndex int32
---@field ['As Queen BP'] AQueen_BP_C
---@field CurrentLaserProjectile AQueenLaser_BP_C
local UQueen_BigLaserSlam_Action_C = {}

---@param Reason EFS_EnemyActionCancelReason
function UQueen_BigLaserSlam_Action_C:CancelAction(Reason) end

function UQueen_BigLaserSlam_Action_C:EndLaser() end

---@param EntryPoint int32
function UQueen_BigLaserSlam_Action_C:ExecuteUbergraph_Queen_BigLaserSlam_Action(EntryPoint) end

function UQueen_BigLaserSlam_Action_C:GetCurrentComboTargetRotation() end

function UQueen_BigLaserSlam_Action_C:GetLaserPos() end

---@param Progress float
---@param Rotation FRotator
function UQueen_BigLaserSlam_Action_C:GetLaserRotation(Progress, Rotation) end

---@param Context AFS_EnemyCharacterBase
function UQueen_BigLaserSlam_Action_C:InitAction_BP(Context) end

---@param StartingSection FName
function UQueen_BigLaserSlam_Action_C:JumpToSection(StartingSection) end

---@param NotifyName FName
function UQueen_BigLaserSlam_Action_C:OnBlendOut_55E20CB3497414AD1E8F99BD2350A7D9(NotifyName) end

---@param NotifyName FName
function UQueen_BigLaserSlam_Action_C:OnCompleted_55E20CB3497414AD1E8F99BD2350A7D9(NotifyName) end

---@param NotifyName FName
function UQueen_BigLaserSlam_Action_C:OnInterrupted_55E20CB3497414AD1E8F99BD2350A7D9(NotifyName) end

---@param NotifyName FName
function UQueen_BigLaserSlam_Action_C:OnNotifyBegin_55E20CB3497414AD1E8F99BD2350A7D9(NotifyName) end

---@param NotifyName FName
function UQueen_BigLaserSlam_Action_C:OnNotifyEnd_55E20CB3497414AD1E8F99BD2350A7D9(NotifyName) end

function UQueen_BigLaserSlam_Action_C:RotateLaserDown() end

function UQueen_BigLaserSlam_Action_C:RunAction_BP() end

function UQueen_BigLaserSlam_Action_C:SelectCombo() end

function UQueen_BigLaserSlam_Action_C:SlamImpact() end

function UQueen_BigLaserSlam_Action_C:StartLaser() end
