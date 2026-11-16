---@meta

---@class UTeleporterUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChangeTargets UWidgetAnimation
---@field OpenAnim UWidgetAnimation
---@field AreaImage UImage
---@field BG UImage
---@field CurrentLocLabel UCommonTextBlock
---@field DestBox UVerticalBox
---@field FS_DescriptionText UFS_DescriptionText_C
---@field MenuButtonHintsWidget UMenuButtonHintsWidget_C
---@field ScrollBox_115 UScrollBox
---@field TeleporterDestination UTeleporterDestination_C
---@field TeleporterDestination_1 UTeleporterDestination_C
---@field TeleporterDestination_2 UTeleporterDestination_C
---@field TeleporterDestination_3 UTeleporterDestination_C
---@field TeleporterDestination_4 UTeleporterDestination_C
---@field TeleporterDestination_5 UTeleporterDestination_C
---@field TeleporterDestination_6 UTeleporterDestination_C
---@field TeleporterDestination_7 UTeleporterDestination_C
---@field TeleporterDestination_8 UTeleporterDestination_C
---@field TeleporterDestination_9 UTeleporterDestination_C
---@field TeleporterDestination_10 UTeleporterDestination_C
---@field UIArea UUIArea_C
---@field UIArea_1 UUIArea_C
---@field UIArea_2 UUIArea_C
---@field UIArea_129 UUIArea_C
---@field UIAspectRatioBox UUIAspectRatioBox_C
---@field Opened boolean
---@field Destinations TArray<UTeleporterDestination_C>
---@field Exited FTeleporterUI_CExited
---@field Teleport FTeleporterUI_CTeleport
---@field ['This TP'] UFS_LocationData
---@field DestinationLocs TArray<UFS_LocationData>
---@field RippleSpeed float
---@field RippleTime float
---@field DisplayTarget UFS_LocationData
---@field LocToDestWidget TMap<UFS_LocationData, UTeleporterDestination_C>
---@field LastSelection UFS_LocationData
local UTeleporterUI_C = {}

function UTeleporterUI_C:Close() end

function UTeleporterUI_C:CloseButtonPressed() end

---@param Loaded TArray<UObject>
function UTeleporterUI_C:Completed_E8347388401A8FE74F5BC4B1F05E6A15(Loaded) end

function UTeleporterUI_C:Construct() end

---@param AreaData UFS_LocationData
function UTeleporterUI_C:CreateDestWidget(AreaData) end

---@param Location UFS_LocationData
function UTeleporterUI_C:DestSelected(Location) end

---@param EntryPoint int32
function UTeleporterUI_C:ExecuteUbergraph_TeleporterUI(EntryPoint) end

function UTeleporterUI_C:Exited__DelegateSignature() end

---@param FS_Button UFS_Button_C
function UTeleporterUI_C:GetDefaultFocus(FS_Button) end

---@param Teleporter UFS_LocationData
function UTeleporterUI_C:GoToDestination(Teleporter) end

---@param ItemToFind UFS_LocationData
function UTeleporterUI_C:IsTargetUnlocked(ItemToFind) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UTeleporterUI_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param ThisTP UFS_LocationData
function UTeleporterUI_C:Open(ThisTP) end

---@param IsDesignTime boolean
function UTeleporterUI_C:PreConstruct(IsDesignTime) end

function UTeleporterUI_C:SequenceEvent__ENTRYPOINTTeleporterUI_0() end

---@param InputPin UFS_LocationData
function UTeleporterUI_C:SetDesc(InputPin) end

function UTeleporterUI_C:SwapTargetImage() end

---@param Target UFS_LocationData
function UTeleporterUI_C:Teleport__DelegateSignature(Target) end

---@param ObjectA UObject
---@param ObjectB UObject
---@param Result boolean
function UTeleporterUI_C:TeleporterUI_AutoGenFunc(ObjectA, ObjectB, Result) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UTeleporterUI_C:Tick(MyGeometry, InDeltaTime) end

---@param DT float
function UTeleporterUI_C:TickRipple(DT) end

---@param A UFS_LocationData
function UTeleporterUI_C:UpdateCurLocLabel(A) end
