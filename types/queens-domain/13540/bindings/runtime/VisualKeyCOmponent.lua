---@meta

---@class UVisualKeyComponent_C : UStaticMeshComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Glow_Glow_36481AAB460CA2C3550060838DF4B06F float
---@field Glow__Direction_36481AAB460CA2C3550060838DF4B06F ETimelineDirection::Type
---@field Glow UTimelineComponent
---@field NoRotate_Position_1A4F614247ABD20731C3B186A630BC77 float
---@field NoRotate__Direction_1A4F614247ABD20731C3B186A630BC77 ETimelineDirection::Type
---@field NoRotate UTimelineComponent
---@field Animate_Rotation_A48CF31C4EB97A2322803CB31B698C73 float
---@field Animate_Position_A48CF31C4EB97A2322803CB31B698C73 float
---@field Animate__Direction_A48CF31C4EB97A2322803CB31B698C73 ETimelineDirection::Type
---@field Animate UTimelineComponent
---@field CachedStartingPosition FTransform
---@field FinishedRemoving FVisualKeyComponent_CFinishedRemoving
---@field FinishedAdding FVisualKeyComponent_CFinishedAdding
---@field EndingRelativePos FVector
---@field PlayRate float
---@field UnlockRotation float
---@field UnlockPosition float
---@field MovementAxis FVector
---@field NoTurn boolean
---@field AutoRemove boolean
---@field UnlockSound FVisualKeyComponent_CUnlockSound
---@field GlowControl FVisualKeyComponent_CGlowControl
---@field SuccessGlowEnabled boolean
---@field Animating boolean
---@field WantsToBeVisibleByDefault boolean
local UVisualKeyComponent_C = {}

function UVisualKeyComponent_C:Animate__FinishedFunc() end

function UVisualKeyComponent_C:Animate__UnlockSound__EventFunc() end

function UVisualKeyComponent_C:Animate__UpdateFunc() end

---@param EntryPoint int32
function UVisualKeyComponent_C:ExecuteUbergraph_VisualKeyComponent(EntryPoint) end

function UVisualKeyComponent_C:FinishedAdding__DelegateSignature() end

---@param Selection ETimelineDirection::Type
function UVisualKeyComponent_C:FinishedAnim(Selection) end

function UVisualKeyComponent_C:FinishedRemoving__DelegateSignature() end

---@param Str float
function UVisualKeyComponent_C:GlowControl__DelegateSignature(Str) end

function UVisualKeyComponent_C:Glow__FinishedFunc() end

function UVisualKeyComponent_C:Glow__UpdateFunc() end

---@param SuccessGlow boolean
function UVisualKeyComponent_C:Insert(SuccessGlow) end

function UVisualKeyComponent_C:NoRotate__FinishedFunc() end

function UVisualKeyComponent_C:NoRotate__NewTrack_0__EventFunc() end

function UVisualKeyComponent_C:NoRotate__UpdateFunc() end

function UVisualKeyComponent_C:ReceiveBeginPlay() end

function UVisualKeyComponent_C:Remove() end

function UVisualKeyComponent_C:SetTOEndState() end

function UVisualKeyComponent_C:SuccessGlow() end

function UVisualKeyComponent_C:UnlockSound__DelegateSignature() end
