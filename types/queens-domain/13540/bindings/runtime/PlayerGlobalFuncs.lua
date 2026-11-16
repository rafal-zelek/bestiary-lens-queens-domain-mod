---@meta

---@class IPlayerGlobalFuncs_C : IInterface
local IPlayerGlobalFuncs_C = {}

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function IPlayerGlobalFuncs_C:ActivateBossHPBar(Enemy, Group) end

---@param Amount float
function IPlayerGlobalFuncs_C:AddAmountTOHealth(Amount) end

---@param Old_Equip UFS_ItemData_C
---@param NewlyEquipped UFS_ItemData_C
---@param Swap boolean
---@param OldSlotID int32
---@param NewSlotID int32
function IPlayerGlobalFuncs_C:ChangedDaggerEquip(Old_Equip, NewlyEquipped, Swap, OldSlotID, NewSlotID) end

---@param Enemy AEnemyBase_C
---@param Group UEnemyData_C
function IPlayerGlobalFuncs_C:DeactivateBossHPBar(Enemy, Group) end

---@param Did boolean
function IPlayerGlobalFuncs_C:DidRecentlyTeleport(Did) end

---@param EnemyData UQD_EnemyData_base
function IPlayerGlobalFuncs_C:EnemyRegistered(EnemyData) end

---@param PhysMat UPhysicalMaterial
---@param Pos FVector
function IPlayerGlobalFuncs_C:FakeEnvBonk(PhysMat, Pos) end

---@param PowerMeterFill float
---@param ChargeAmount float
---@param MotionValue float
---@param TotalHitMultiplier float
---@param DurationMultiplier float
function IPlayerGlobalFuncs_C:GetActiveAttackInfo(PowerMeterFill, ChargeAmount, MotionValue, TotalHitMultiplier, DurationMultiplier) end

---@param WeaponSlot int32
---@param HasAnyWeaponsEquipped boolean
---@param WeaponItem UFS_Item
---@param ThrowWepSlot int32
---@param HasAnyThrowWepsEquipped boolean
---@param ThrowWepItem UFS_Item
function IPlayerGlobalFuncs_C:GetEquippedWeaponItems(WeaponSlot, HasAnyWeaponsEquipped, WeaponItem, ThrowWepSlot, HasAnyThrowWepsEquipped, ThrowWepItem) end

---@param Comp UCameraComponent
function IPlayerGlobalFuncs_C:GetFirstPersonCamera(Comp) end

---@param Weapon UWeaponScriptBase_C
function IPlayerGlobalFuncs_C:GetInHandWeapon(Weapon) end

---@param PPC UPostProcessComponent
---@param Mid UMaterialInstanceDynamic
---@param HUD UPhotoMode_HUD_C
function IPlayerGlobalFuncs_C:GetPhotoModeData(PPC, Mid, HUD) end

---@param Spline AItemPutAwayCurve_C
function IPlayerGlobalFuncs_C:GetPickupSpline(Spline) end

---@param DoingIt boolean
function IPlayerGlobalFuncs_C:GetPlayerDoingQuickInteraction(DoingIt) end

---@param IsIn boolean
function IPlayerGlobalFuncs_C:IsInModalMenu(IsIn) end

---@param In boolean
function IPlayerGlobalFuncs_C:IsInReadTextMenu(In) end

---@param Berserk boolean
---@param WeakEffect boolean
function IPlayerGlobalFuncs_C:IsPlayerBerserking(Berserk, WeakEffect) end

---@param Bounded boolean
function IPlayerGlobalFuncs_C:IsPlayerBindinged(Bounded) end

---@param Dashing boolean
function IPlayerGlobalFuncs_C:IsPlayerDashing(Dashing) end

---@param Diseased boolean
function IPlayerGlobalFuncs_C:IsPlayerDiseased(Diseased) end

---@param Heavy boolean
function IPlayerGlobalFuncs_C:IsPlayerHeavy(Heavy) end

---@param Iron boolean
---@param WeakEffect boolean
function IPlayerGlobalFuncs_C:IsPlayerIron(Iron, WeakEffect) end

---@param Poisoned boolean
function IPlayerGlobalFuncs_C:IsPlayerPoisoned(Poisoned) end

---@param Resting boolean
function IPlayerGlobalFuncs_C:IsPlayerResting(Resting) end

---@param RotResist boolean
function IPlayerGlobalFuncs_C:IsPlayerRotResisting(RotResist) end

---@param Teleporting boolean
function IPlayerGlobalFuncs_C:IsPlayerTeleporting(Teleporting) end

---@param Weak boolean
function IPlayerGlobalFuncs_C:IsPlayerWeakened(Weak) end

---@param Invulnerable boolean
function IPlayerGlobalFuncs_C:IsSupposedToBeInvulnerable(Invulnerable) end

---@param Changed_Item UFS_ItemData_C
---@param Equipped boolean
function IPlayerGlobalFuncs_C:ItemEquipChanged(Changed_Item, Equipped) end

---@param Message FText
---@param Title FText
---@param Note_DA UReadableText_DataAsset_C
---@param Inspect boolean
function IPlayerGlobalFuncs_C:PlayerReadMessage(Message, Title, Note_DA, Inspect) end

---@param Location FTransform
---@param ForcedMidair boolean
function IPlayerGlobalFuncs_C:Player_GetSafeLocationInfo(Location, ForcedMidair) end

---@param Amt int32
function IPlayerGlobalFuncs_C:Player_GiveXP(Amt) end

function IPlayerGlobalFuncs_C:Player_RecapHP() end

function IPlayerGlobalFuncs_C:Player_SkipCutscene() end

function IPlayerGlobalFuncs_C:Player_WriteStatusToSave() end

---@param DoingIt boolean
function IPlayerGlobalFuncs_C:SetPlayerDoingQuickInteraction(DoingIt) end

---@param Duration float
function IPlayerGlobalFuncs_C:TempDisablePlayerJump(Duration) end

function IPlayerGlobalFuncs_C:TogglePhotoMode() end

IPlayerGlobalFuncs_C['Cache Input States'] = function(self) end

---@param Amount float
---@param Weapon UFS_ItemData_C
---@param ConsumedWeaponAbilityPoints boolean
IPlayerGlobalFuncs_C['Generate on Hit Resources'] = function(self, Amount, Weapon, ConsumedWeaponAbilityPoints) end

---@param Grounded boolean
IPlayerGlobalFuncs_C['Is Player Grounded'] = function(self, Grounded) end

IPlayerGlobalFuncs_C['Player Closed KeyMenu'] = function(self) end

---@param NewGuide UReadableText_DataAsset_C
IPlayerGlobalFuncs_C['Player Grant Guide'] = function(self, NewGuide) end

---@param Keyable TScriptInterface<IKeyableObject_C>
IPlayerGlobalFuncs_C['Player Open Keymenu'] = function(self, Keyable) end

IPlayerGlobalFuncs_C['Player Update Aspect Ratio'] = function(self) end

IPlayerGlobalFuncs_C['Restore Cached Input States'] = function(self) end
