---@meta

---@class UImgMediaSource : UBaseMediaSource
---@field IsPathRelativeToProjectRoot boolean
---@field FrameRateOverride FFrameRate
---@field ProxyOverride FString
---@field SequencePath FDirectoryPath
local UImgMediaSource = {}

---@param InActor AActor
function UImgMediaSource:AddGlobalCamera(InActor) end

---@param InActor AActor
---@param Width float
function UImgMediaSource:AddTargetObject(InActor, Width) end

---@param OutProxies TArray<FString>
function UImgMediaSource:GetProxies(OutProxies) end

function UImgMediaSource:GetSequencePath() end

---@param InActor AActor
function UImgMediaSource:RemoveGlobalCamera(InActor) end

---@param InActor AActor
function UImgMediaSource:RemoveTargetObject(InActor) end

---@param Distance float
function UImgMediaSource:SetMipLevelDistance(Distance) end

---@param Path FString
function UImgMediaSource:SetSequencePath(Path) end
