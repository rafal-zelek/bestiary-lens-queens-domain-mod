---@meta

---@class AOW_TP_Building_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AudioSource USceneComponent
---@field OW_TP_Interior_Door UStaticMeshComponent
---@field RightHallDoorBox UBoxComponent
---@field LeftHallDoorBox UBoxComponent
---@field TeleportBox UBoxComponent
---@field EntranceBox UBoxComponent
---@field PointLight UPointLightComponent
---@field OW_TP_IntShadowBlocker UStaticMeshComponent
---@field OW_TP_Chamber_Hall_00_SM UStaticMeshComponent
---@field OW_TP_Cover UStaticMeshComponent
---@field OpenDOors_Open_74E9D5BD4EE47CEE49FABC9587307C07 float
---@field OpenDOors__Direction_74E9D5BD4EE47CEE49FABC9587307C07 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field LeftDestination AOW_TP_Building_00_BP_C
---@field RightDestination AOW_TP_Building_00_BP_C
---@field PlayerIsInside boolean
---@field ShowInterior boolean
---@field TravelDirectionIsLeft boolean
---@field OutsideLightsActivatableGroup TScriptInterface<IActivatable_C>
---@field InsideRing boolean
local AOW_TP_Building_00_BP_C = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOW_TP_Building_00_BP_C:BndEvt__OW_TP_Building_00_BP_EntranceBox_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOW_TP_Building_00_BP_C:BndEvt__OW_TP_Building_00_BP_LeftHallDoorBox_K2Node_ComponentBoundEvent_7_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOW_TP_Building_00_BP_C:BndEvt__OW_TP_Building_00_BP_RightHallDoorBox_K2Node_ComponentBoundEvent_8_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOW_TP_Building_00_BP_C:BndEvt__OW_TP_Building_00_BP_TeleportBox_K2Node_ComponentBoundEvent_3_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AOW_TP_Building_00_BP_C:BndEvt__OW_TP_Building_00_BP_TeleportBox_K2Node_ComponentBoundEvent_4_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function AOW_TP_Building_00_BP_C:CloseDoorsSilent() end

function AOW_TP_Building_00_BP_C:EnteredTPBuilding() end

---@param EntryPoint int32
function AOW_TP_Building_00_BP_C:ExecuteUbergraph_OW_TP_Building_00_BP(EntryPoint) end

function AOW_TP_Building_00_BP_C:ExitedTPBuilding() end

function AOW_TP_Building_00_BP_C:OpenDOors__FinishedFunc() end

function AOW_TP_Building_00_BP_C:OpenDOors__UpdateFunc() end

function AOW_TP_Building_00_BP_C:OpenDoorsSilent() end

function AOW_TP_Building_00_BP_C:PlayerTeleported() end

function AOW_TP_Building_00_BP_C:ReceiveBeginPlay() end

---@param Visible boolean
function AOW_TP_Building_00_BP_C:SetInteriorVisible(Visible) end

---@param Inside boolean
function AOW_TP_Building_00_BP_C:TPLoopStateChanged(Inside) end
