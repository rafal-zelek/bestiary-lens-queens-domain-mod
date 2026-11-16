---@meta

---@class UPlayerItemInfoHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BottomMiddle_Scalebox UScaleBox
---@field FoodGetAnims_C_1 UFoodGetAnims_C
---@field ItemGetNotification UItemGetNotification_C
---@field RetainerBox_0 URetainerBox
---@field Root UCanvasPanel
local UPlayerItemInfoHUD_C = {}

---@param EntryPoint int32
function UPlayerItemInfoHUD_C:ExecuteUbergraph_PlayerItemInfoHUD(EntryPoint) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UPlayerItemInfoHUD_C:Tick(MyGeometry, InDeltaTime) end

UPlayerItemInfoHUD_C['refresh vis'] = function(self) end
