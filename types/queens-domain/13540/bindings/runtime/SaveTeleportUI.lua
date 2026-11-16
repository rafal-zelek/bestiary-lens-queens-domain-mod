---@meta

---@class USaveTeleportUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SwapArea UWidgetAnimation
---@field OpenAnim UWidgetAnimation
---@field BG UImage
---@field DestBox UVerticalBox
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox_0 UScrollBox
---@field TV UImage
---@field UIArea UUIArea_C
---@field UIArea_1 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Opened boolean
---@field Destinations TArray<USaveTeleportEntry_C>
---@field Exited FSaveTeleportUI_CExited
---@field Teleport FSaveTeleportUI_CTeleport
---@field DestinationLocs TArray<UFS_LocationData>
---@field TargetAreaImage UTexture2D
---@field NewVar_0 UWidget
---@field DestByLoc TMap<UFS_LocationData, USaveTeleportEntry_C>
---@field OpenTime float
---@field SelectedLoc UFS_LocationData
---@field LocToDest TMap<UFS_LocationData, USaveTeleportEntry_C>
local USaveTeleportUI_C = {}

function USaveTeleportUI_C:ChangeImage() end

function USaveTeleportUI_C:Close() end

function USaveTeleportUI_C:CloseButtonPressed() end

---@param Loaded TArray<UObject>
function USaveTeleportUI_C:Completed_77C9D6034BCAEF2A08883BBDE26AE40F(Loaded) end

function USaveTeleportUI_C:Construct() end

---@param Teleporter UFS_LocationData
function USaveTeleportUI_C:CustomEvent_0(Teleporter) end

---@param EntryPoint int32
function USaveTeleportUI_C:ExecuteUbergraph_SaveTeleportUI(EntryPoint) end

function USaveTeleportUI_C:Exited__DelegateSignature() end

---@param FS_Button UFS_Button_C
function USaveTeleportUI_C:GetDefaultFocus(FS_Button) end

---@param Teleporter UFS_LocationData
function USaveTeleportUI_C:GoToDestination(Teleporter) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function USaveTeleportUI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

function USaveTeleportUI_C:Open() end

function USaveTeleportUI_C:Refresh() end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function USaveTeleportUI_C:SaveTeleportUI_AutoGenFunc(ObjectA, ObjectB, Result) end

---@param Loc UFS_LocationData
function USaveTeleportUI_C:Selected(Loc) end

function USaveTeleportUI_C:SequenceEvent__ENTRYPOINTSaveTeleportUI_0() end

---@param Target UFS_LocationData
function USaveTeleportUI_C:Teleport__DelegateSignature(Target) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function USaveTeleportUI_C:Tick(MyGeometry, InDeltaTime) end
