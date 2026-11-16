---@meta

---@class AAquaDoor_00_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AquaDoorKey4 UStaticMeshComponent
---@field AquaDoorKey2 UStaticMeshComponent
---@field AquaDoorKey3 UStaticMeshComponent
---@field AquaDoorKey1 UStaticMeshComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_169A808B40393AEA275D5E88214ACDDE float
---@field DoorOpen__Direction_169A808B40393AEA275D5E88214ACDDE ETimelineDirection::Type
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
local AAquaDoor_00_C = {}

function AAquaDoor_00_C:DoorOpen__FinishedFunc() end

function AAquaDoor_00_C:DoorOpen__UpdateFunc() end

function AAquaDoor_00_C:DoorUnlocked() end

---@param EntryPoint int32
function AAquaDoor_00_C:ExecuteUbergraph_AquaDoor_00(EntryPoint) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AAquaDoor_00_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Key UFS_ItemData_C
function AAquaDoor_00_C:InsertKey(Key) end

---@param PlayerInteracting AActor
function AAquaDoor_00_C:Interact(PlayerInteracting) end

function AAquaDoor_00_C:OpenDoor() end

function AAquaDoor_00_C:ReceiveBeginPlay() end

function AAquaDoor_00_C:SetToOpenState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AAquaDoor_00_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AAquaDoor_00_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AAquaDoor_00_C['Restore State From Save Data'] = function(self, Data) end
