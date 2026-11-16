---@meta

---@class AFS_PlayerController_BP_C : AFS_PlayerController
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentPlayer AFS_PlayerChar_C
---@field InCutscene boolean
local AFS_PlayerController_BP_C = {}

---@param Out FVector2D
function AFS_PlayerController_BP_C:BndEvt__FS_PlayerController_BP_LeftStickHandler_K2Node_ComponentBoundEvent_2_AnalogueOutput__DelegateSignature(Out) end

---@param Out FVector2D
function AFS_PlayerController_BP_C:BndEvt__FS_PlayerController_BP_RightStickHandler_K2Node_ComponentBoundEvent_3_AnalogueOutput__DelegateSignature(Out) end

---@param EntryPoint int32
function AFS_PlayerController_BP_C:ExecuteUbergraph_FS_PlayerController_BP(EntryPoint) end

---@param InAxisName FName
---@param NativeAxisValue float
function AFS_PlayerController_BP_C:GetAxisInputFromFSInput(InAxisName, NativeAxisValue) end

---@param Key FKey
function AFS_PlayerController_BP_C:InpActEvt_Pause_K2Node_InputActionEvent_0(Key) end

function AFS_PlayerController_BP_C:OnWindowFocused() end

function AFS_PlayerController_BP_C:OnWindowUnfocused() end

---@param PossessedPawn APawn
function AFS_PlayerController_BP_C:ReceivePossess(PossessedPawn) end

---@param DeltaSeconds float
function AFS_PlayerController_BP_C:ReceiveTick(DeltaSeconds) end

---@param UnpossessedPawn APawn
function AFS_PlayerController_BP_C:ReceiveUnPossess(UnpossessedPawn) end

function AFS_PlayerController_BP_C:UpdateSitckHandlerParams() end
