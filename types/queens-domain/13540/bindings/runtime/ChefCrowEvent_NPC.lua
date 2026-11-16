---@meta

---@class AChefCrowEvent_NPC_C : ANPC_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FootPedestalTest1 UStaticMeshComponent
---@field FootPedestalTest UStaticMeshComponent
---@field FoodPedestalAttachPoint USceneComponent
---@field Spatula1 UStaticMeshComponent
---@field Whisk1 UStaticMeshComponent
---@field Ladle1 UStaticMeshComponent
---@field Chef USkeletalMeshComponent
---@field FlyAway_MoveDown_FF4E159A48397D6B29A0F8BF0CFB8137 float
---@field FlyAway_SpeedAnim_FF4E159A48397D6B29A0F8BF0CFB8137 float
---@field FlyAway_FollowSpline_FF4E159A48397D6B29A0F8BF0CFB8137 float
---@field FlyAway_MoveUp_FF4E159A48397D6B29A0F8BF0CFB8137 float
---@field FlyAway__Direction_FF4E159A48397D6B29A0F8BF0CFB8137 ETimelineDirection::Type
---@field FlyAway UTimelineComponent
---@field Timeline_0_drop_4A5C2D024D5EE73D714DD8BBBF22364C float
---@field Timeline_0_openclaws_4A5C2D024D5EE73D714DD8BBBF22364C float
---@field Timeline_0__Direction_4A5C2D024D5EE73D714DD8BBBF22364C ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Speed float
---@field openclaws float
---@field ChefDone boolean
---@field FoodPedestal AFood_Pedestal_Base_C
---@field StartingFoodPedestalLoc FTransform
---@field FoodPedestalFallStartPos FTransform
---@field Script AChefCrowEventScript_C
---@field FlyAwayStartPos FTransform
---@field FlightPathSpline AChefCrowFlightPath_C
---@field EventActive boolean
local AChefCrowEvent_NPC_C = {}

function AChefCrowEvent_NPC_C:CancelEventImmediately() end

function AChefCrowEvent_NPC_C:DropPedestal() end

function AChefCrowEvent_NPC_C:EndDialogue() end

---@param EntryPoint int32
function AChefCrowEvent_NPC_C:ExecuteUbergraph_ChefCrowEvent_NPC(EntryPoint) end

function AChefCrowEvent_NPC_C:FlyAway__FinishedFunc() end

function AChefCrowEvent_NPC_C:FlyAway__UpdateFunc() end

function AChefCrowEvent_NPC_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AChefCrowEvent_NPC_C:ReceiveTick(DeltaSeconds) end

function AChefCrowEvent_NPC_C:SetUpForEvent() end

function AChefCrowEvent_NPC_C:Timeline_0__FinishedFunc() end

function AChefCrowEvent_NPC_C:Timeline_0__UpdateFunc() end
