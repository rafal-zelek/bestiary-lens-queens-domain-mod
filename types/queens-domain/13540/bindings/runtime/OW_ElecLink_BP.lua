---@meta

---@class AOW_ElecLink_BP_C : AFS_SimpleSpline_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ElecNodeNetworkScript UElecNodeNetworkScript_C
---@field Billboard UBillboardComponent
---@field DoBackwardWoosh_WooshFadeIn_BA11803749D700E6587ED08038207954 float
---@field DoBackwardWoosh_PosWoosh_BA11803749D700E6587ED08038207954 float
---@field DoBackwardWoosh__Direction_BA11803749D700E6587ED08038207954 ETimelineDirection::Type
---@field DoBackwardWoosh UTimelineComponent
---@field DoForwardWoosh_WooshOn_E01999C146CEA0148A8A55AA301CEAD3 float
---@field DoForwardWoosh_PosWoosh_E01999C146CEA0148A8A55AA301CEAD3 float
---@field DoForwardWoosh__Direction_E01999C146CEA0148A8A55AA301CEAD3 ETimelineDirection::Type
---@field DoForwardWoosh UTimelineComponent
---@field StartNode AOW_ElecNode_BP_C
---@field StartNodeConnectorOverride AOW_ElecNodeConnector_BP_C
---@field StartNodeConnectionIsRear boolean
---@field EndNode AOW_ElecNode_BP_C
---@field EndNodeConnectorOverride AOW_ElecNodeConnector_BP_C
---@field EndNodeConnectionIsRear boolean
---@field OwningNetwork AElecNodeNetwork_C
local AOW_ElecLink_BP_C = {}

function AOW_ElecLink_BP_C:Charge() end

function AOW_ElecLink_BP_C:Discharge() end

function AOW_ElecLink_BP_C:DoBackwardWoosh__FinishedFunc() end

function AOW_ElecLink_BP_C:DoBackwardWoosh__UpdateFunc() end

function AOW_ElecLink_BP_C:DoForwardWoosh__FinishedFunc() end

function AOW_ElecLink_BP_C:DoForwardWoosh__UpdateFunc() end

---@param NewState boolean
---@param Indirect boolean
function AOW_ElecLink_BP_C:EndToggled(NewState, Indirect) end

function AOW_ElecLink_BP_C:EvaluateOverchargeState() end

---@param EntryPoint int32
function AOW_ElecLink_BP_C:ExecuteUbergraph_OW_ElecLink_BP(EntryPoint) end

---@param NodeTransform FTransform
---@param InvertRotation boolean
---@param Rotation FRotator
function AOW_ElecLink_BP_C:GetConnectorPos(NodeTransform, InvertRotation, Rotation) end

---@param Loc FVector
function AOW_ElecLink_BP_C:GetFirstPointLoc(Loc) end

---@param Loc FVector
function AOW_ElecLink_BP_C:GetLastPointLoc(Loc) end

---@param B float
function AOW_ElecLink_BP_C:GetNormalizedSplinePos(B) end

---@param Network AElecNodeNetwork_C
function AOW_ElecLink_BP_C:GetOwningNetwork(Network) end

function AOW_ElecLink_BP_C:ReceiveBeginPlay() end

---@param Network AElecNodeNetwork_C
function AOW_ElecLink_BP_C:SetOwningNetwork(Network) end

---@param Rear boolean
---@param InputPin int32
---@param Node AOW_ElecNode_BP_C
---@param Connector AOW_ElecNodeConnector_BP_C
---@param SnapActor boolean
function AOW_ElecLink_BP_C:SnapSplinePoint(Rear, InputPin, Node, Connector, SnapActor) end

---@param NewState boolean
---@param Indirect boolean
function AOW_ElecLink_BP_C:StartToggled(NewState, Indirect) end

function AOW_ElecLink_BP_C:UserConstructionScript() end

---@param NodeTransform FTransform
---@param Rear boolean
---@param Rotation FRotator
AOW_ElecLink_BP_C['Get Node Pos'] = function(self, NodeTransform, Rear, Rotation) end

AOW_ElecLink_BP_C['_ Snap Spline Start'] = function(self) end

AOW_ElecLink_BP_C['_Snap Spline End'] = function(self) end
