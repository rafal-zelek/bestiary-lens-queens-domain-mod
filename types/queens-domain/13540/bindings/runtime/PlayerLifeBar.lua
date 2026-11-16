---@meta

---@class UPlayerLifeBar_C : UUserWidget
---@field Bar UImage
---@field Container UOverlay
---@field PlayerChar AFS_PlayerChar_C
---@field LastHP float
local UPlayerLifeBar_C = {}

---@param PixelOffset float
---@param PercentMax float
---@param PercentMin float
function UPlayerLifeBar_C:GetHealthBarAspectRatioTweak(PixelOffset, PercentMax, PercentMin) end

function UPlayerLifeBar_C:UpdateHPMeter() end
