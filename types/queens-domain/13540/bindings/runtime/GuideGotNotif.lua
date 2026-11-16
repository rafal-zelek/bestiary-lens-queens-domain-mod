---@meta

---@class UGuideGotNotif_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AddedAnim UWidgetAnimation
---@field AchievementIcon UImage
---@field AchievementIconBox USizeBox
---@field BestiaryNum UCommonTextBlock
---@field Box UCanvasPanel
---@field GuideName UCommonTextBlock
---@field Label UCommonTextBlock
---@field NameSizeBox USizeBox
---@field Displaying boolean
---@field BestiaryWidth float
---@field GuideWidth float
---@field NotificationQueue TArray<FNotificationQueueItem>
---@field ChallengeData UFS_ChallengeData
---@field AchievementWidth float
local UGuideGotNotif_C = {}

function UGuideGotNotif_C:AnimFinished() end

function UGuideGotNotif_C:Construct() end

---@param EntryPoint int32
function UGuideGotNotif_C:ExecuteUbergraph_GuideGotNotif(EntryPoint) end

---@param Data UEnemyData_C
function UGuideGotNotif_C:QueueEnemyNotif(Data) end

---@param Text UReadableText_DataAsset_C
function UGuideGotNotif_C:QueueNewGuideNotif(Text) end

function UGuideGotNotif_C:ShowNextQueueItem() end

function UGuideGotNotif_C:Update() end

---@param ID FName
UGuideGotNotif_C['Challenge Completed'] = function(self, ID) end
