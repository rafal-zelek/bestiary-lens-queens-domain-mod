---@meta

---@class ADAquaDoor_01_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AquaDoorKey4 UStaticMeshComponent
---@field AquaDoorKey2 UStaticMeshComponent
---@field AquaDoorKey3 UStaticMeshComponent
---@field AquaDoorKey1 UStaticMeshComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_D572B5B344019EC13FDBDB9757DD7374 float
---@field DoorOpen__Direction_D572B5B344019EC13FDBDB9757DD7374 ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
---@field KeyMeshmap TMap<UFS_ItemData_C, UStaticMeshComponent>
---@field ['Key SaveMap'] TMap<UFS_ItemData_C, int32>
---@field Key1In boolean
---@field Key2In boolean
---@field Key3In boolean
---@field Key4In boolean
---@field PlayerRef AFS_PlayerChar_C
local ADAquaDoor_01_C = {}

function ADAquaDoor_01_C:DoorOpen__FinishedFunc() end

function ADAquaDoor_01_C:DoorOpen__UpdateFunc() end

function ADAquaDoor_01_C:DoorUnlocked() end

---@param EntryPoint int32
function ADAquaDoor_01_C:ExecuteUbergraph_DAquaDoor_01(EntryPoint) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function ADAquaDoor_01_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Key UFS_ItemData_C
function ADAquaDoor_01_C:InsertKey(Key) end

---@param PlayerInteracting AActor
function ADAquaDoor_01_C:Interact(PlayerInteracting) end

function ADAquaDoor_01_C:OpenDoor() end

function ADAquaDoor_01_C:ReceiveBeginPlay() end

function ADAquaDoor_01_C:SetToOpenState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ADAquaDoor_01_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ADAquaDoor_01_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
ADAquaDoor_01_C['Restore State From Save Data'] = function(self, Data) end
