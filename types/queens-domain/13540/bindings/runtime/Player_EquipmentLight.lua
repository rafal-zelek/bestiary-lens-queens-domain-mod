---@meta

---@class UPlayer_EquipmentLight_C : UPointLightComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Fade_Fade_DA12446A45E8EBAD28EFD7A586F0CEEC float
---@field Fade__Direction_DA12446A45E8EBAD28EFD7A586F0CEEC ETimelineDirection::Type
---@field Fade UTimelineComponent
---@field RequiredEquip UFS_ItemData_C
---@field StartingRadius float
---@field FadeTime float
local UPlayer_EquipmentLight_C = {}

function UPlayer_EquipmentLight_C:Disable() end

function UPlayer_EquipmentLight_C:Enable() end

---@param Changed_Item UFS_ItemData_C
function UPlayer_EquipmentLight_C:EquipmentChanged(Changed_Item) end

---@param EntryPoint int32
function UPlayer_EquipmentLight_C:ExecuteUbergraph_Player_EquipmentLight(EntryPoint) end

function UPlayer_EquipmentLight_C:Fade__FinishedFunc() end

function UPlayer_EquipmentLight_C:Fade__UpdateFunc() end

function UPlayer_EquipmentLight_C:ReceiveBeginPlay() end
