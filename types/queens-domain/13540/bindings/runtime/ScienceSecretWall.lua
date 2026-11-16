---@meta

---@class AScienceSecretWall_C : ASecretWall_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
---@field ['Player Interacting'] AFS_PlayerChar_C
---@field RightKey boolean
---@field Material TMap<UFS_ItemData_C, UMaterialInstance>
---@field KeyItems TMap<UFS_ItemData_C, int32>
---@field ['Key Tags to Show'] TSet<FName>
---@field Key UFS_ItemData_C
local AScienceSecretWall_C = {}

function AScienceSecretWall_C:BndEvt__ScienceSecretWall_VisualKeyComponent_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

function AScienceSecretWall_C:CustomEvent() end

function AScienceSecretWall_C:CustomEvent_0() end

function AScienceSecretWall_C:DoUnlockAnim() end

---@param EntryPoint int32
function AScienceSecretWall_C:ExecuteUbergraph_ScienceSecretWall(EntryPoint) end

function AScienceSecretWall_C:FailedUnlockAnim() end

---@param MultipleKeysNeeded boolean
---@param KeyTagsToShow TSet<FName>
---@param NonInsertText boolean
function AScienceSecretWall_C:GetKeyableObjectInfo(MultipleKeysNeeded, KeyTagsToShow, NonInsertText) end

---@param PlayerInteracting AActor
function AScienceSecretWall_C:Interact(PlayerInteracting) end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function AScienceSecretWall_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function AScienceSecretWall_C:UserConstructionScript() end
