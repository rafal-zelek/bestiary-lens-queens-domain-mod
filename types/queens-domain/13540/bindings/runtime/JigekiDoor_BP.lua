---@meta

---@class AJigekiDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field FloorDust1 UNiagaraComponent
---@field TopDust UNiagaraComponent
---@field FloorDust UNiagaraComponent
---@field Key1 UStaticMeshComponent
---@field Key3 UStaticMeshComponent
---@field Key2 UStaticMeshComponent
---@field Door_R UStaticMeshComponent
---@field Door_L UStaticMeshComponent
---@field DoorOpen_backamount_84161A524FB9DB099294E7AB6F9226E2 float
---@field DoorOpen_OpenAmount_84161A524FB9DB099294E7AB6F9226E2 float
---@field DoorOpen__Direction_84161A524FB9DB099294E7AB6F9226E2 ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
---@field KeyMeshmap TMap<UFS_ItemData_C, UStaticMeshComponent>
---@field ['Key SaveMap'] TMap<UFS_ItemData_C, int32>
---@field Key1In boolean
---@field Key2In boolean
---@field Key3In boolean
---@field PlayerRef AFS_PlayerChar_C
---@field SideMoveAmount float
---@field MoveBackAmount float
local AJigekiDoor_BP_C = {}

function AJigekiDoor_BP_C:CloseDoor() end

function AJigekiDoor_BP_C:DoorOpen__FinishedFunc() end

function AJigekiDoor_BP_C:DoorOpen__UpdateFunc() end

function AJigekiDoor_BP_C:DoorUnlocked() end

---@param EntryPoint int32
function AJigekiDoor_BP_C:ExecuteUbergraph_JigekiDoor_BP(EntryPoint) end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AJigekiDoor_BP_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param Key UFS_ItemData_C
function AJigekiDoor_BP_C:InsertKey(Key) end

---@param PlayerInteracting AActor
function AJigekiDoor_BP_C:Interact(PlayerInteracting) end

function AJigekiDoor_BP_C:OpenDoor() end

function AJigekiDoor_BP_C:ReceiveBeginPlay() end

function AJigekiDoor_BP_C:SetToOpenState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AJigekiDoor_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AJigekiDoor_BP_C:UserConstructionScript() end

---@param Data TArray<FSavableActorState>
AJigekiDoor_BP_C['Restore State From Save Data'] = function(self, Data) end
