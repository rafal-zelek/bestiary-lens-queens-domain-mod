---@meta

---@class UWeaponSystem_C : USceneComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerRef AFS_PlayerChar_C
---@field AllWeapons TArray<UWeaponScriptBase_C>
---@field PlayerWantsToSwap boolean
---@field SwappedWeapon FWeaponSystem_CSwappedWeapon
---@field WaitingForWeapon UWeaponScriptBase_C
---@field SwapWasInput FWeaponSystem_CSwapWasInput
---@field WeaponScriptTypes TSet<TSubclassOf<UWeaponScriptBase_C>>
---@field PlayerConfig UPlayerBalance_C
---@field SelectedWeaponSlot int32
---@field SkipNextSwapAnim boolean
---@field StartupWeaponScripts TArray<TSubclassOf<UWeaponScriptBase_C>>
---@field PostWeaponSwap FWeaponSystem_CPostWeaponSwap
local UWeaponSystem_C = {}

function UWeaponSystem_C:DoSwapAnims() end

---@param Index int32
function UWeaponSystem_C:EquipSpecifiedWeapon(Index) end

function UWeaponSystem_C:ExecuteSwapAnim() end

---@param EntryPoint int32
function UWeaponSystem_C:ExecuteUbergraph_WeaponSystem(EntryPoint) end

---@param NoWeapons boolean
---@param Weapons TArray<UWeaponScriptBase_C>
function UWeaponSystem_C:GetWeaponsInSlots(NoWeapons, Weapons) end

---@param NoWeapons boolean
function UWeaponSystem_C:HasAnyWeaponsEquipped(NoWeapons) end

function UWeaponSystem_C:Init() end

function UWeaponSystem_C:InterruptSwap() end

---@param Input UFS_Item
function UWeaponSystem_C:LoadAndRegisterWeaponScript(Input) end

---@param AssetClass TSoftClassPtr<UObject>
function UWeaponSystem_C:LoadWeaponClassAsync(AssetClass) end

---@param Force boolean
function UWeaponSystem_C:NextWeapon(Force) end

---@param NotifyName FName
function UWeaponSystem_C:OnBlendOut_AF0DF69D47FDBDF0EBAABA8A5BDEFDCB(NotifyName) end

---@param NotifyName FName
function UWeaponSystem_C:OnCompleted_AF0DF69D47FDBDF0EBAABA8A5BDEFDCB(NotifyName) end

---@param NotifyName FName
function UWeaponSystem_C:OnInterrupted_AF0DF69D47FDBDF0EBAABA8A5BDEFDCB(NotifyName) end

---@param Loaded UClass
function UWeaponSystem_C:OnLoaded_6CCBBC064D3DCB670C5B2BB03ABC1552(Loaded) end

---@param NotifyName FName
function UWeaponSystem_C:OnNotifyBegin_AF0DF69D47FDBDF0EBAABA8A5BDEFDCB(NotifyName) end

---@param NotifyName FName
function UWeaponSystem_C:OnNotifyEnd_AF0DF69D47FDBDF0EBAABA8A5BDEFDCB(NotifyName) end

function UWeaponSystem_C:PostWeaponSwap__DelegateSignature() end

function UWeaponSystem_C:PreviousWeapon() end

function UWeaponSystem_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UWeaponSystem_C:ReceiveTick(DeltaSeconds) end

---@param Class UClass
function UWeaponSystem_C:RegisterWeaponClass(Class) end

---@param Item UFS_ItemData_C
function UWeaponSystem_C:SetSelectedWeaponByItem(Item) end

---@param Slot int32
function UWeaponSystem_C:SetSelectedWeaponSlot(Slot) end

function UWeaponSystem_C:SwapInputted() end

---@param NewWeapon UWeaponScriptBase_C
function UWeaponSystem_C:SwapWasInput__DelegateSignature(NewWeapon) end

---@param NewWeapon UWeaponScriptBase_C
function UWeaponSystem_C:SwappedWeapon__DelegateSignature(NewWeapon) end

---@param NoWeapons boolean
---@param Weapons TArray<UWeaponScriptBase_C>
UWeaponSystem_C['Get Equipped Weapons'] = function(self, NoWeapons, Weapons) end

UWeaponSystem_C['Init Weapons'] = function(self) end

UWeaponSystem_C['Update Selected Weapon'] = function(self) end
