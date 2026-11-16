---@meta

---@class UFS_GameInstance_C : UFS_GameInstanceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActiveSystemSave UFS_SystemSave_C
---@field ActiveSaveSlot UFS_SaveSlot_C
---@field InventoryChanged FFS_GameInstance_CInventoryChanged
---@field ActiveCoinsSave UFS_CoinsSave_C
---@field ENVController AENVController_C
---@field MusicController AMusicController_C
---@field WorldStateChanged FFS_GameInstance_CWorldStateChanged
---@field PlayerBalance UPlayerBalance_C
---@field CurrentOptionsMenu UOptionsMenu_C
---@field FramerateCapConfigs TArray<int32>
---@field DefaultBindings UDefaultBindings_C
---@field BindingsChanged FFS_GameInstance_CBindingsChanged
---@field CurrentReasonForFocusChangeIsHover boolean
---@field OptionsChanged FFS_GameInstance_COptionsChanged
---@field MuteMenuSelectSounds boolean
---@field LastHitEnemy AEnemyBase_C
---@field LastEnemyHitDamage float
---@field MaterialTime float
---@field LastTime float
---@field RealDeltaTime float
---@field ApplyTimeDilationToFSTime boolean
---@field MaterialTime_Unpaused float
---@field EnemyWasDamaged FFS_GameInstance_CEnemyWasDamaged
---@field ['Screen%Checker'] FTimerHandle
---@field ['LastScreen%'] float
---@field LastSelectedGameMenuCategory int32
---@field MainWorld_Nav ULevelStreaming
---@field HiddenWorld ULevelStreaming
---@field HiddenWorld_Nav ULevelStreamingDynamic
---@field ['hidden World nav'] FString
---@field EnteredHiddenWorld FFS_GameInstance_CEnteredHiddenWorld
---@field ExitedHiddenWorld FFS_GameInstance_CExitedHiddenWorld
---@field InHiddenWorld boolean
---@field PickedUpItem FFS_GameInstance_CPickedUpItem
---@field OnWorldRefresh FFS_GameInstance_COnWorldRefresh
---@field RuneVisionEnabled boolean
---@field ['RuneVisionUnlock 1'] boolean
---@field ['RuneVisionUnlock 2'] boolean
---@field ['RuneVisionUnlock 3'] boolean
---@field ['RuneVisionUnlock 4'] boolean
---@field ItemPutAway FFS_GameInstance_CItemPutAway
---@field InPickupAnim boolean
---@field PlayerDidItemTeleport FFS_GameInstance_CPlayerDidItemTeleport
---@field QuestStateRefresh FFS_GameInstance_CQuestStateRefresh
---@field LastFontMult float
---@field SystemSaveDelay int32
---@field SuspendSaveWaitDuration float
---@field SuspendSaveCurrentlyWriting boolean
---@field DefaultFontStyle TSubclassOf<UCommonTextStyle>
---@field SuspendSaveTimer FTimerHandle
---@field SuspendLoopShouldRun boolean
---@field SuspendIsBlocked int32
---@field THumbstickDigitalAnalogKeys TSet<FKey>
---@field AnalogAxes TSet<FName>
---@field MouseAxes TSet<FName>
---@field InCutscene boolean
---@field SequenceRT UTextureRenderTarget2D
---@field CheapRenderEnabled boolean
local UFS_GameInstance_C = {}

function UFS_GameInstance_C:ApplyOptionSettings() end

function UFS_GameInstance_C:ApplyOptions() end

function UFS_GameInstance_C:ApplyStickSwapInputs() end

---@param bSuccess boolean
function UFS_GameInstance_C:AsyncSuspendSaveFinished(bSuccess) end

---@param ActionName FName
---@param Config FSavableActionBinding
function UFS_GameInstance_C:BindFullAction(ActionName, Config) end

---@param AxisName FName
---@param Config FSavableAxisBinding
function UFS_GameInstance_C:BindFullAxis(AxisName, Config) end

function UFS_GameInstance_C:BindingsChanged__DelegateSignature() end

function UFS_GameInstance_C:BlockSuspendSaves() end

function UFS_GameInstance_C:CancelSuspendSaveLoop() end

---@param Name FName
---@param Index int32
---@param Gamepad boolean
---@param CurrentBind FKey
---@param BindingToCheck FKey
---@param NewBind FKey
function UFS_GameInstance_C:CheckActionBindingForConflict(Name, Index, Gamepad, CurrentBind, BindingToCheck, NewBind) end

---@param Name FName
---@param Index int32
---@param Negative boolean
---@param Gamepad boolean
---@param CurrentBind FKey
---@param BindingToCheck FKey
---@param NewBind FKey
function UFS_GameInstance_C:CheckAxisBindingForConflict(Name, Index, Negative, Gamepad, CurrentBind, BindingToCheck, NewBind) end

---@param A FText
---@param B FText
function UFS_GameInstance_C:CompareAreaNames(A, B) end

function UFS_GameInstance_C:DebugSave() end

function UFS_GameInstance_C:DelayedFontUpdate() end

---@param Damage float
---@param Enemy ACharacter
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param AdditionalData TSet<UPrimaryDataAsset>
---@param SourceGUID FGuid
function UFS_GameInstance_C:EnemyWasDamaged__DelegateSignature(Damage, Enemy, Tags, Data_Tags, AdditionalData, SourceGUID) end

function UFS_GameInstance_C:EnterCutsceneMode() end

function UFS_GameInstance_C:EnteredHiddenWorld__DelegateSignature() end

---@param Save UFS_SaveSlot_C
function UFS_GameInstance_C:ErrorCheckSave(Save) end

---@param EntryPoint int32
function UFS_GameInstance_C:ExecuteUbergraph_FS_GameInstance(EntryPoint) end

function UFS_GameInstance_C:ExitCutsceneMode() end

function UFS_GameInstance_C:ExitedHiddenWorld__DelegateSignature() end

---@param A FKey
function UFS_GameInstance_C:FixUpTriggerKeys(A) end

---@param Backup boolean
---@param BackupSlot int32
function UFS_GameInstance_C:ForceLoadNewSlot(Backup, BackupSlot) end

---@param CancelSaveLoop boolean
---@param ForceImmediate boolean
function UFS_GameInstance_C:GI_DeleteSuspendSaves(CancelSaveLoop, ForceImmediate) end

---@param Slot UFS_SaveSlot_C
function UFS_GameInstance_C:GI_GetActiveSave(Slot) end

---@param Save UFS_SystemSave_C
function UFS_GameInstance_C:GI_GetActiveSystemSave(Save) end

---@param Enabled boolean
---@param Unlock1Acquired boolean
---@param Unlock2Acquired boolean
---@param Unlock3Acquired boolean
---@param Unlock4Acquired boolean
function UFS_GameInstance_C:GI_IsRuneVisionEnabled(Enabled, Unlock1Acquired, Unlock2Acquired, Unlock3Acquired, Unlock4Acquired) end

---@param AreaName FText
---@param LocationName FText
function UFS_GameInstance_C:GI_NotifyAreaChanged(AreaName, LocationName) end

---@param Item_That_Changed UFS_Item
---@param Added boolean
---@param New_Item boolean
function UFS_GameInstance_C:GI_NotifyInventoryChanged(Item_That_Changed, Added, New_Item) end

function UFS_GameInstance_C:GI_NotifyItemPutAway() end

function UFS_GameInstance_C:GI_NotifyWorldStateChanged() end

function UFS_GameInstance_C:GI_QueueSystemSave() end

function UFS_GameInstance_C:GI_SaveGameToDisk() end

function UFS_GameInstance_C:GI_SaveSystemSaveToDisk() end

---@param State boolean
---@param Unlock1 boolean
---@param Unlock2 boolean
---@param Unlock3 boolean
---@param Unlock4 boolean
function UFS_GameInstance_C:GI_SetRuneVisionState(State, Unlock1, Unlock2, Unlock3, Unlock4) end

function UFS_GameInstance_C:GI_StartSuspendSaveLoop() end

function UFS_GameInstance_C:GI_UpdateFontOverride() end

---@param NSD FName
function UFS_GameInstance_C:GI_UpdateQuestState(NSD) end

function UFS_GameInstance_C:GI_UpdateTextureStreaming() end

---@param CancelSaveLoop boolean
function UFS_GameInstance_C:GI_WriteSuspendSaveImmediately(CancelSaveLoop) end

---@param ForceReload boolean
---@param Save UFS_SaveSlot_C
function UFS_GameInstance_C:GetActiveSave(ForceReload, Save) end

function UFS_GameInstance_C:GetActiveSaveSlotIndex() end

---@param Save UFS_SystemSave_C
function UFS_GameInstance_C:GetActiveSystemSave(Save) end

---@param Save_Slot int32
---@param Save UFS_SaveSlot_C
function UFS_GameInstance_C:GetBackupSave(Save_Slot, Save) end

---@param Options UOptionsMenu_C
function UFS_GameInstance_C:GetCurrentOptionsList(Options) end

---@param ENVController AENVController_C
function UFS_GameInstance_C:GetENVController(ENVController) end

---@param ReasonIsHover boolean
function UFS_GameInstance_C:GetFocusChangeReasonIsHover(ReasonIsHover) end

---@param Axis FName
function UFS_GameInstance_C:GetFullActionBindingsSet(Axis) end

---@param PP AGlobalPP_C
function UFS_GameInstance_C:GetGlobalPP(PP) end

---@param MusicController AMusicController_C
function UFS_GameInstance_C:GetMusicController(MusicController) end

---@param Mute boolean
function UFS_GameInstance_C:GetMuteMenuSelectSounds(Mute) end

function UFS_GameInstance_C:GetPlatformNonRetroResScale() end

---@param Screen_height float
function UFS_GameInstance_C:GetRealRenderPixelHeight(Screen_height) end

---@param Negative boolean
---@param Gamepad boolean
---@param SavableAxisBinding FSavableAxisBinding
function UFS_GameInstance_C:GetSpecificAxisBindingSet(Negative, Gamepad, SavableAxisBinding) end

function UFS_GameInstance_C:InitSave() end

function UFS_GameInstance_C:InitializeCoinSave() end

function UFS_GameInstance_C:InitializeSave() end

function UFS_GameInstance_C:InitializeSystemSave() end

---@param ItemThatChanged UFS_ItemData_C
---@param ItemWasAdded boolean
---@param NewItem boolean
function UFS_GameInstance_C:InventoryChanged__DelegateSignature(ItemThatChanged, ItemWasAdded, NewItem) end

---@param Key FKey
---@param UIIsGamepadMode boolean
---@param PauseBind boolean
---@param Valid boolean
---@param Cancel boolean
function UFS_GameInstance_C:IsBindingValid(Key, UIIsGamepadMode, PauseBind, Valid, Cancel) end

function UFS_GameInstance_C:ItemPutAway__DelegateSignature() end

---@param Index int32
---@param bBackup boolean
function UFS_GameInstance_C:LoadSaveSynch(Index, bBackup) end

---@param TargetMap TMap<TSoftObjectPtr<UFS_Item>, int32>
---@param OutputPin TMap<TSoftObjectPtr<UFS_ItemData_C>, int32>
function UFS_GameInstance_C:NewFunction_0(TargetMap, OutputPin) end

---@param ItemToShow UFS_Item
---@param ItemAcquired UFS_Item
---@param Count int32
function UFS_GameInstance_C:NotifyGotItem(ItemToShow, ItemAcquired, Count) end

function UFS_GameInstance_C:OnFailure_C7F3671C46DFDF85DFF5FEAD47359117() end

function UFS_GameInstance_C:OnSuccess_C7F3671C46DFDF85DFF5FEAD47359117() end

function UFS_GameInstance_C:OnWorldRefresh__DelegateSignature() end

function UFS_GameInstance_C:OptionsChanged__DelegateSignature() end

---@param ItemDataToShow UFS_ItemData_C
---@param ActualItemAcquired UFS_ItemData_C
---@param Count int32
function UFS_GameInstance_C:PickedUpItem__DelegateSignature(ItemDataToShow, ActualItemAcquired, Count) end

function UFS_GameInstance_C:PlayerDidItemTeleport__DelegateSignature() end

---@param NSD FName
function UFS_GameInstance_C:QuestStateRefresh__DelegateSignature(NSD) end

function UFS_GameInstance_C:QueueSystemSave() end

---@param Item UFS_Item
function UFS_GameInstance_C:ReadInventoryItemCount(Item) end

---@param Name FName
function UFS_GameInstance_C:ReadNamedSaveData(Name) end

function UFS_GameInstance_C:RebuildMouseBindings() end

function UFS_GameInstance_C:ReceiveInit() end

function UFS_GameInstance_C:ReceiveShutdown() end

---@param Gamepad boolean
function UFS_GameInstance_C:ResetInputBindings(Gamepad) end

---@param Gamepad boolean
function UFS_GameInstance_C:ResetInputBindingsToDefault(Gamepad) end

---@param Save UFS_SaveGame
function UFS_GameInstance_C:SetActiveSave(Save) end

---@param Options UOptionsMenu_C
function UFS_GameInstance_C:SetCurrentOptionsList(Options) end

---@param ReasonIsHover boolean
function UFS_GameInstance_C:SetFocusChangeReasonIsHover(ReasonIsHover) end

function UFS_GameInstance_C:SetInputLockType() end

---@param Enabled boolean
function UFS_GameInstance_C:SetMenuCheapRenderFlag(Enabled) end

---@param Mute boolean
function UFS_GameInstance_C:SetMuteMenuSelectSounds(Mute) end

---@param MappingsToModify FSavableActionBinding
---@param Index int32
---@param Gamepad boolean
---@param NewKey FKey
function UFS_GameInstance_C:SetSpecificActionBinding(MappingsToModify, Index, Gamepad, NewKey) end

---@param StructRef FSavableAxisBinding
---@param Mappings TArray<FKey>
---@param Negative boolean
---@param Gamepad boolean
function UFS_GameInstance_C:SetSpecificAxisBindingSet(StructRef, Mappings, Negative, Gamepad) end

function UFS_GameInstance_C:SetVolumeSettings() end

function UFS_GameInstance_C:ShouldAutoLoad() end

---@param Current_Bind FKey
---@param New_Bind FKey
---@param Gamepad boolean
---@param BindingBeingAssigned FName
---@param IndexBeingAssigned int32
function UFS_GameInstance_C:SolveConflicts(Current_Bind, New_Bind, Gamepad, BindingBeingAssigned, IndexBeingAssigned) end

function UFS_GameInstance_C:StartSuspendSaveLoop() end

function UFS_GameInstance_C:SuspendSaveLoop() end

function UFS_GameInstance_C:SystemSaveDelayTick() end

---@param Key FKey
---@param Gamepad boolean
---@param Axis_Name FName
function UFS_GameInstance_C:TryToBindActionMapping(Key, Gamepad, Axis_Name) end

function UFS_GameInstance_C:UnBlockSuspendSaves() end

function UFS_GameInstance_C:UnbindAllActions() end

function UFS_GameInstance_C:UnbindAllAxes() end

---@param InAxisName FName
function UFS_GameInstance_C:UnbindFullAction(InAxisName) end

---@param InAxisName FName
function UFS_GameInstance_C:UnbindFullAxis(InAxisName) end

---@param InputPin int32
function UFS_GameInstance_C:UnsafeDeleteSuspendSavesOnSlot(InputPin) end

---@param UnlockedAspect boolean
function UFS_GameInstance_C:UpdateSequenceRTSize(UnlockedAspect) end

function UFS_GameInstance_C:WorldStateChanged__DelegateSignature() end

function UFS_GameInstance_C:WriteSuspendSave() end

UFS_GameInstance_C['Apply All Input Bindings'] = function(self) end

---@param Force boolean
UFS_GameInstance_C['Apply Res Options'] = function(self, Force) end

---@param Axis FName
---@param KeyPress FKey
---@param Negative boolean
---@param Pressed boolean
UFS_GameInstance_C['Check UI Event Against Full Axis Set'] = function(self, Axis, KeyPress, Negative, Pressed) end

UFS_GameInstance_C['CheckScreen%'] = function(self) end

---@param Damage float
---@param Enemy AEnemyBase_C
---@param Tags FGameplayTagContainer
---@param Data_Tags TMap<FGameplayTag, float>
---@param Additional_Data TSet<UPrimaryDataAsset>
---@param SourceGUID FGuid
UFS_GameInstance_C['Enemy Took Hit'] = function(self, Damage, Enemy, Tags, Data_Tags, Additional_Data, SourceGUID) end

---@param Input FName
---@param Gamepad boolean
---@param Bindings TArray<FKey>
UFS_GameInstance_C['Get Current Bindings For Action'] = function(self, Input, Gamepad, Bindings) end

---@param Input FName
---@param Negative boolean
---@param Gamepad boolean
---@param Bindings TArray<FKey>
UFS_GameInstance_C['Get Current Bindings For Axis'] = function(self, Input, Negative, Gamepad, Bindings) end

---@param Death boolean
UFS_GameInstance_C['Load Game'] = function(self, Death) end

---@param Suspend boolean
---@param SuspendIsSync boolean
UFS_GameInstance_C['Save Game to Disk'] = function(self, Suspend, SuspendIsSync) end

UFS_GameInstance_C['Save System Save to Disk'] = function(self) end

---@param Name FName
---@param Key FKey
---@param Index int32
---@param Skip_Conflict_Resolution boolean
---@param Gamepad boolean
UFS_GameInstance_C['Set Input Action Binding'] = function(self, Name, Key, Index, Skip_Conflict_Resolution, Gamepad) end

---@param Name FName
---@param Key FKey
---@param Index int32
---@param Negative boolean
---@param Gamepad boolean
---@param SkipConflictResolution boolean
UFS_GameInstance_C['Set Input Axis Binding'] = function(self, Name, Key, Index, Negative, Gamepad, SkipConflictResolution) end

---@param Scale float
---@param Key FKey
---@param Index int32
---@param Gamepad boolean
---@param Axis_Name FName
UFS_GameInstance_C['Try to Bind Axis Mapping'] = function(self, Scale, Key, Index, Gamepad, Axis_Name) end

---@param Force boolean
UFS_GameInstance_C['UpdateScreen%'] = function(self, Force) end
