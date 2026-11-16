---@meta

---@class UFS_Cheats_C : UFS_CheatManagerBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChallengeData UFS_ChallengeData
local UFS_Cheats_C = {}

function UFS_Cheats_C:AddAllEnemiesToBestiary() end

---@param inString FString
function UFS_Cheats_C:AddEnemyToBestiary(inString) end

---@param Content FString
function UFS_Cheats_C:AddNote(Content) end

---@param NewSlomo float
function UFS_Cheats_C:BPSlomo(NewSlomo) end

function UFS_Cheats_C:BindingMe() end

---@param String FString
function UFS_Cheats_C:ChallengeSimulateComplete(String) end

---@param String FString
function UFS_Cheats_C:ChallengeSimulateProgress(String) end

---@param Slot FString
function UFS_Cheats_C:CheatLoad(Slot) end

---@param Slot FString
function UFS_Cheats_C:CheatSave(Slot) end

function UFS_Cheats_C:ClearBestiaryData() end

function UFS_Cheats_C:CompleteAllChallenges() end

---@param Loaded UObject
function UFS_Cheats_C:Completed_3C7E31BE4295F3BEC1C4C6B4D93DBB9E(Loaded) end

---@param Loaded UObject
function UFS_Cheats_C:Completed_507B46B54E796B6031AB6FAD784149EE(Loaded) end

---@param Loaded UObject
function UFS_Cheats_C:Completed_6C3948F14607E22DE414EAA59C190594(Loaded) end

---@param Loaded UObject
function UFS_Cheats_C:Completed_88BE3A104CD3781B0F6D48BEACB4B004(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_D31691CC4B866FFCDBBD9AAE8DD3E937(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_E88E44B843851DC743756C957CF50011(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_EB8A0C1F4303ECE5CEBEE29413FD7646(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_EB8A0C1F4303ECE5CEBEE294271A33DA(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_EB8A0C1F4303ECE5CEBEE2946371C2A6(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_EB8A0C1F4303ECE5CEBEE29486BAC158(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_EB8A0C1F4303ECE5CEBEE294E2633575(Loaded) end

---@param Loaded UObject
function UFS_Cheats_C:Completed_F674C7C441CEAC508B3548A916BE53A5(Loaded) end

---@param Loaded TArray<UObject>
function UFS_Cheats_C:Completed_FDE29EF74BF5F697858FA98701ECE7CA(Loaded) end

function UFS_Cheats_C:DeadGod() end

function UFS_Cheats_C:DeleteChallengeSave() end

---@param Item FString
function UFS_Cheats_C:DeleteItem(Item) end

function UFS_Cheats_C:DiseaseMe() end

---@param EntryPoint int32
function UFS_Cheats_C:ExecuteUbergraph_FS_Cheats(EntryPoint) end

function UFS_Cheats_C:FillMyUltraHole() end

---@param OpenTarget AActor
function UFS_Cheats_C:FindDoorOpenTarget(OpenTarget) end

---@param ID FString
function UFS_Cheats_C:ForceCompleteChallenge(ID) end

---@param Delay FString
function UFS_Cheats_C:ForceOpenDoor(Delay) end

function UFS_Cheats_C:ForceShowKnightGhosts() end

function UFS_Cheats_C:GemCurseMe() end

function UFS_Cheats_C:GimmeUltra() end

---@param Amount float
function UFS_Cheats_C:GimmeXP(Amount) end

function UFS_Cheats_C:GiveAllAccessories() end

function UFS_Cheats_C:GiveAllConsumables() end

function UFS_Cheats_C:GiveAllEquipment() end

function UFS_Cheats_C:GiveAllGuides() end

function UFS_Cheats_C:GiveAllKeys() end

function UFS_Cheats_C:GiveAllThrowingWeapons() end

function UFS_Cheats_C:GiveAllWeapons() end

---@param Path FString
function UFS_Cheats_C:GiveItem(Path) end

---@param Amount float
function UFS_Cheats_C:GiveWeaponXP(Amount) end

function UFS_Cheats_C:HeavyMe() end

function UFS_Cheats_C:HideHUD() end

function UFS_Cheats_C:HideTitleScreen() end

---@param Amount float
function UFS_Cheats_C:HurtMe(Amount) end

---@param SourceString FString
function UFS_Cheats_C:InternalChallengeProgressCheat(SourceString) end

function UFS_Cheats_C:KillAllEnemies() end

---@param Variant int32
function UFS_Cheats_C:KnockMeDown(Variant) end

---@param Slot FString
function UFS_Cheats_C:LoadSaveSlot(Slot) end

---@param Amount float
function UFS_Cheats_C:MagicFireMe(Amount) end

---@param Amount float
function UFS_Cheats_C:MagicPoisonMe(Amount) end

function UFS_Cheats_C:NecroHeadClear() end

---@param InputPin FString
---@param BetaFog boolean
---@param Asset FName
function UFS_Cheats_C:ParseSpawnEnemyArgs(InputPin, BetaFog, Asset) end

function UFS_Cheats_C:PoisonMe() end

---@param TargetCOunt int32
function UFS_Cheats_C:RemoveBestiaryEnemies(TargetCOunt) end

---@param Text FString
function UFS_Cheats_C:ReportBug(Text) end

function UFS_Cheats_C:RingLibraryBell() end

function UFS_Cheats_C:SaveHere() end

---@param Note FString
function UFS_Cheats_C:SaveNote(Note) end

---@param Percent int32
function UFS_Cheats_C:SetBestiaryEnemyPercent(Percent) end

---@param Lang FString
function UFS_Cheats_C:SetCulture(Lang) end

---@param Num int32
function UFS_Cheats_C:SetEnemyCountInBestiary(Num) end

---@param Name FString
function UFS_Cheats_C:SetNamedSaveData(Name) end

function UFS_Cheats_C:SetNativeCulture() end

function UFS_Cheats_C:SetTestCulture() end

---@param UltraCharge float
function UFS_Cheats_C:SetUltraCharge(UltraCharge) end

function UFS_Cheats_C:ShowHUD() end

---@param Show boolean
function UFS_Cheats_C:ShowTitleScreen(Show) end

function UFS_Cheats_C:SimulateAllChallenges() end

---@param Path FString
function UFS_Cheats_C:SpawnEnemy(Path) end

---@param Data UEnemyData_C
---@param Inactive boolean
---@param BetaFog boolean
function UFS_Cheats_C:SpawnEnemyFromData(Data, Inactive, BetaFog) end

---@param inString FString
function UFS_Cheats_C:SpawnEnemyInactive(inString) end

function UFS_Cheats_C:StickyMe() end

function UFS_Cheats_C:SuspendSave() end

function UFS_Cheats_C:TestAudioBug_2D() end

function UFS_Cheats_C:TestAudioBug_Player() end

---@param Enable boolean
function UFS_Cheats_C:TestEmptyLevelList(Enable) end

---@param Level FString
function UFS_Cheats_C:ToggleStreamignLevelVis(Level) end

function UFS_Cheats_C:UnlockAllCheckpoints() end

function UFS_Cheats_C:UnlockAllTeleporters() end

function UFS_Cheats_C:WeakenMe() end

function UFS_Cheats_C:WhaleBossDoBellySlide() end

function UFS_Cheats_C:WhaleBossDoLaser() end

---@param Index int32
function UFS_Cheats_C:WhaleBossOverrideAttack(Index) end

---@param Index int32
function UFS_Cheats_C:WhaleBossSetPhase(Index) end
