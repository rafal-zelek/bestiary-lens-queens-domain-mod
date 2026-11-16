---@meta

---@class UAssetTagsSubsystem : UEngineSubsystem
local UAssetTagsSubsystem = {}

---@param Name FName
function UAssetTagsSubsystem:CollectionExists(Name) end

---@param Name FName
function UAssetTagsSubsystem:GetAssetsInCollection(Name) end

function UAssetTagsSubsystem:GetCollections() end

---@param AssetPathName FName
function UAssetTagsSubsystem:GetCollectionsContainingAsset(AssetPathName) end

---@param AssetData FAssetData
function UAssetTagsSubsystem:GetCollectionsContainingAssetData(AssetData) end

---@param AssetPtr UObject
function UAssetTagsSubsystem:GetCollectionsContainingAssetPtr(AssetPtr) end
