---@meta

---@class UNPC_UtilFunctions_C : UBlueprintFunctionLibrary
local UNPC_UtilFunctions_C = {}

---@param NPC UNPC_Data_C
---@param __WorldContext UObject
function UNPC_UtilFunctions_C:AddNPCToJournal(NPC, __WorldContext) end

---@param Item UFS_ItemData_C
---@param TargetPoint FTransform
---@param DoneGiving FGiveNPCItemDoneGiving
---@param __WorldContext UObject
function UNPC_UtilFunctions_C:GiveNPCItem(Item, TargetPoint, DoneGiving, __WorldContext) end

---@param ShouldLookAtPlayer boolean
---@param CurrentLookWeight float
---@param DT float
---@param CurrentLookPos FVector
---@param NPC ANPC_Base_C
---@param HeadBone FName
---@param __WorldContext UObject
---@param NewLookWeight float
---@param NewLookPos FVector
---@param LookTarget FVector
function UNPC_UtilFunctions_C:HandleLookAt(ShouldLookAtPlayer, CurrentLookWeight, DT, CurrentLookPos, NPC, HeadBone, __WorldContext, NewLookWeight, NewLookPos, LookTarget) end

---@param ShouldLookAtPlayer boolean
---@param CurrentLookWeight float
---@param DT float
---@param CurrentLookPos FVector
---@param NPC ANPC_Base_C
---@param HeadBone FName
---@param __WorldContext UObject
---@param NewLookWeight float
---@param NewLookPos FVector
---@param LookTarget FVector
function UNPC_UtilFunctions_C:HandleLookAt_Backup(ShouldLookAtPlayer, CurrentLookWeight, DT, CurrentLookPos, NPC, HeadBone, __WorldContext, NewLookWeight, NewLookPos, LookTarget) end
