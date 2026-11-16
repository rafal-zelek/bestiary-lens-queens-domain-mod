---@meta

---@class FAssetRegistryDependencyOptions
---@field bIncludeSoftPackageReferences boolean
---@field bIncludeHardPackageReferences boolean
---@field bIncludeSearchableNames boolean
---@field bIncludeSoftManagementReferences boolean
---@field bIncludeHardManagementReferences boolean
local FAssetRegistryDependencyOptions = {}

---@class FTagAndValue
---@field Tag FName
---@field Value FString
local FTagAndValue = {}

---@class IAssetRegistry : IInterface
local IAssetRegistry = {}

---@class UAssetRegistryHelpers : UObject
local UAssetRegistryHelpers = {}

---@class UAssetRegistryImpl : UObject
local UAssetRegistryImpl = {}

---@param OutAssetData TArray<FAssetData>
---@param bIncludeOnlyOnDiskAssets boolean
function IAssetRegistry:GetAllAssets(OutAssetData, bIncludeOnlyOnDiskAssets) end

---@param OutPathList TArray<FString>
function IAssetRegistry:GetAllCachedPaths(OutPathList) end

---@param ObjectPath FName
---@param bIncludeOnlyOnDiskAssets boolean
function IAssetRegistry:GetAssetByObjectPath(ObjectPath, bIncludeOnlyOnDiskAssets) end

---@param Filter FARFilter
---@param OutAssetData TArray<FAssetData>
function IAssetRegistry:GetAssets(Filter, OutAssetData) end

---@param ClassName FName
---@param OutAssetData TArray<FAssetData>
---@param bSearchSubClasses boolean
function IAssetRegistry:GetAssetsByClass(ClassName, OutAssetData, bSearchSubClasses) end

---@param PackageName FName
---@param OutAssetData TArray<FAssetData>
---@param bIncludeOnlyOnDiskAssets boolean
function IAssetRegistry:GetAssetsByPackageName(PackageName, OutAssetData, bIncludeOnlyOnDiskAssets) end

---@param PackagePath FName
---@param OutAssetData TArray<FAssetData>
---@param bRecursive boolean
---@param bIncludeOnlyOnDiskAssets boolean
function IAssetRegistry:GetAssetsByPath(PackagePath, OutAssetData, bRecursive, bIncludeOnlyOnDiskAssets) end

---@param InBasePath FString
---@param OutPathList TArray<FString>
---@param bInRecurse boolean
function IAssetRegistry:GetSubPaths(InBasePath, OutPathList, bInRecurse) end

---@param PackagePath FName
---@param bRecursive boolean
function IAssetRegistry:HasAssets(PackagePath, bRecursive) end

function IAssetRegistry:IsLoadingAssets() end

---@param PackageName FName
---@param DependencyOptions FAssetRegistryDependencyOptions
---@param OutDependencies TArray<FName>
function IAssetRegistry:K2_GetDependencies(PackageName, DependencyOptions, OutDependencies) end

---@param PackageName FName
---@param ReferenceOptions FAssetRegistryDependencyOptions
---@param OutReferencers TArray<FName>
function IAssetRegistry:K2_GetReferencers(PackageName, ReferenceOptions, OutReferencers) end

---@param PathToPrioritize FString
function IAssetRegistry:PrioritizeSearchPath(PathToPrioritize) end

---@param AssetDataList TArray<FAssetData>
---@param Filter FARFilter
function IAssetRegistry:RunAssetsThroughFilter(AssetDataList, Filter) end

---@param InFilePaths TArray<FString>
---@param bForceRescan boolean
function IAssetRegistry:ScanFilesSynchronous(InFilePaths, bForceRescan) end

---@param InFilePaths TArray<FString>
function IAssetRegistry:ScanModifiedAssetFiles(InFilePaths) end

---@param InPaths TArray<FString>
---@param bForceRescan boolean
function IAssetRegistry:ScanPathsSynchronous(InPaths, bForceRescan) end

---@param bSynchronousSearch boolean
function IAssetRegistry:SearchAllAssets(bSynchronousSearch) end

---@param AssetDataList TArray<FAssetData>
---@param Filter FARFilter
function IAssetRegistry:UseFilterToExcludeAssets(AssetDataList, Filter) end

function IAssetRegistry:WaitForCompletion() end

---@param InAsset UObject
---@param bAllowBlueprintClass boolean
function UAssetRegistryHelpers:CreateAssetData(InAsset, bAllowBlueprintClass) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:GetAsset(InAssetData) end

function UAssetRegistryHelpers:GetAssetRegistry() end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:GetClass(InAssetData) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:GetExportTextName(InAssetData) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:GetFullName(InAssetData) end

---@param InAssetData FAssetData
---@param InTagName FName
---@param OutTagValue FString
function UAssetRegistryHelpers:GetTagValue(InAssetData, InTagName, OutTagValue) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:IsAssetLoaded(InAssetData) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:IsRedirector(InAssetData) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:IsUAsset(InAssetData) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:IsValid(InAssetData) end

---@param InFilter FARFilter
---@param InTagsAndValues TArray<FTagAndValue>
function UAssetRegistryHelpers:SetFilterTagsAndValues(InFilter, InTagsAndValues) end

---@param InAssetData FAssetData
function UAssetRegistryHelpers:ToSoftObjectPath(InAssetData) end
