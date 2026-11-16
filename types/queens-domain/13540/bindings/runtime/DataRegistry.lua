---@meta

---@class FDataRegistryCachePolicy
---@field bCacheIsAlwaysVolatile boolean
---@field bUseCurveTableCacheVersion boolean
---@field MinNumberKept int32
---@field MaxNumberKept int32
---@field ForceKeepSeconds float
---@field ForceReleaseSeconds float
local FDataRegistryCachePolicy = {}

---@class FDataRegistryId
---@field RegistryType FDataRegistryType
---@field ItemName FName
local FDataRegistryId = {}

---@class FDataRegistryIdFormat
---@field BaseGameplayTag FGameplayTag
local FDataRegistryIdFormat = {}

---@class FDataRegistryLookup
local FDataRegistryLookup = {}

---@class FDataRegistrySourceItemId
local FDataRegistrySourceItemId = {}

---@class FDataRegistrySource_DataTableRules
---@field bPrecacheTable boolean
---@field CachedTableKeepSeconds float
local FDataRegistrySource_DataTableRules = {}

---@class FDataRegistryType
---@field Name FName
local FDataRegistryType = {}

---@class UDataRegistry : UObject
---@field RegistryType FName
---@field IdFormat FDataRegistryIdFormat
---@field ItemStruct UScriptStruct
---@field DataSources TArray<UDataRegistrySource>
---@field RuntimeSources TArray<UDataRegistrySource>
---@field TimerUpdateFrequency float
---@field DefaultCachePolicy FDataRegistryCachePolicy
local UDataRegistry = {}

---@class UDataRegistrySettings : UDeveloperSettings
---@field DirectoriesToScan TArray<FDirectoryPath>
---@field bInitializeAllLoadedRegistries boolean
---@field bIgnoreMissingCookedAssetRegistryData boolean
local UDataRegistrySettings = {}

---@class UDataRegistrySource : UObject
---@field ParentSource UDataRegistrySource
local UDataRegistrySource = {}

---@class UDataRegistrySource_CurveTable : UDataRegistrySource
---@field SourceTable TSoftObjectPtr<UCurveTable>
---@field TableRules FDataRegistrySource_DataTableRules
---@field CachedTable UCurveTable
---@field PreloadTable UCurveTable
local UDataRegistrySource_CurveTable = {}

---@class UDataRegistrySource_DataTable : UDataRegistrySource
---@field SourceTable TSoftObjectPtr<UDataTable>
---@field TableRules FDataRegistrySource_DataTableRules
---@field CachedTable UDataTable
---@field PreloadTable UDataTable
local UDataRegistrySource_DataTable = {}

---@class UDataRegistrySubsystem : UEngineSubsystem
local UDataRegistrySubsystem = {}

---@class UMetaDataRegistrySource : UDataRegistrySource
---@field AssetUsage EMetaDataRegistrySourceAssetUsage
---@field SearchRules FAssetManagerSearchRules
---@field RuntimeChildren TMap<FName, UDataRegistrySource>
local UMetaDataRegistrySource = {}

---@class UMetaDataRegistrySource_CurveTable : UMetaDataRegistrySource
---@field CreatedSource TSubclassOf<UDataRegistrySource_CurveTable>
---@field TableRules FDataRegistrySource_DataTableRules
local UMetaDataRegistrySource_CurveTable = {}

---@class UMetaDataRegistrySource_DataTable : UMetaDataRegistrySource
---@field CreatedSource TSubclassOf<UDataRegistrySource_DataTable>
---@field TableRules FDataRegistrySource_DataTableRules
local UMetaDataRegistrySource_DataTable = {}

---@param ItemId FDataRegistryId
---@param AcquireCallback FAcquireItemBPAcquireCallback
function UDataRegistrySubsystem:AcquireItemBP(ItemId, AcquireCallback) end

---@param DataRegistryId FDataRegistryId
function UDataRegistrySubsystem:Conv_DataRegistryIdToString(DataRegistryId) end

---@param DataRegistryType FDataRegistryType
function UDataRegistrySubsystem:Conv_DataRegistryTypeToString(DataRegistryType) end

---@param A FDataRegistryId
---@param B FDataRegistryId
function UDataRegistrySubsystem:EqualEqual_DataRegistryId(A, B) end

---@param A FDataRegistryType
---@param B FDataRegistryType
function UDataRegistrySubsystem:EqualEqual_DataRegistryType(A, B) end

---@param ItemId FDataRegistryId
---@param InputValue float
---@param DefaultValue float
---@param OutResult EDataRegistrySubsystemGetItemResult
---@param OutValue float
function UDataRegistrySubsystem:EvaluateDataRegistryCurve(ItemId, InputValue, DefaultValue, OutResult, OutValue) end

---@param ItemId FDataRegistryId
---@param OutResult EDataRegistrySubsystemGetItemResult
---@param OutItem FTableRowBase
function UDataRegistrySubsystem:FindCachedItemBP(ItemId, OutResult, OutItem) end

---@param ItemId FDataRegistryId
---@param OutItem FTableRowBase
function UDataRegistrySubsystem:GetCachedItemBP(ItemId, OutItem) end

---@param ItemId FDataRegistryId
---@param ResolvedLookup FDataRegistryLookup
---@param OutItem FTableRowBase
function UDataRegistrySubsystem:GetCachedItemFromLookupBP(ItemId, ResolvedLookup, OutItem) end

---@param DataRegistryId FDataRegistryId
function UDataRegistrySubsystem:IsValidDataRegistryId(DataRegistryId) end

---@param DataRegistryType FDataRegistryType
function UDataRegistrySubsystem:IsValidDataRegistryType(DataRegistryType) end

---@param A FDataRegistryId
---@param B FDataRegistryId
function UDataRegistrySubsystem:NotEqual_DataRegistryId(A, B) end

---@param A FDataRegistryType
---@param B FDataRegistryType
function UDataRegistrySubsystem:NotEqual_DataRegistryType(A, B) end
