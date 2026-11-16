---@meta

---@class FGameplayTag
---@field TagName FName
local FGameplayTag = {}

---@class FGameplayTagCategoryRemap
---@field BaseCategory FString
---@field RemapCategories TArray<FString>
local FGameplayTagCategoryRemap = {}

---@class FGameplayTagContainer
---@field GameplayTags TArray<FGameplayTag>
---@field ParentTags TArray<FGameplayTag>
local FGameplayTagContainer = {}

---@class FGameplayTagCreationWidgetHelper
local FGameplayTagCreationWidgetHelper = {}

---@class FGameplayTagNode
local FGameplayTagNode = {}

---@class FGameplayTagQuery
---@field TokenStreamVersion int32
---@field TagDictionary TArray<FGameplayTag>
---@field QueryTokenStream TArray<uint8>
---@field UserDescription FString
---@field AutoDescription FString
local FGameplayTagQuery = {}

---@class FGameplayTagRedirect
---@field OldTagName FName
---@field NewTagName FName
local FGameplayTagRedirect = {}

---@class FGameplayTagReferenceHelper
local FGameplayTagReferenceHelper = {}

---@class FGameplayTagSource
---@field SourceName FName
---@field SourceType EGameplayTagSourceType
---@field SourceTagList UGameplayTagsList
---@field SourceRestrictedTagList URestrictedGameplayTagsList
local FGameplayTagSource = {}

---@class FGameplayTagTableRow : FTableRowBase
---@field Tag FName
---@field DevComment FString
local FGameplayTagTableRow = {}

---@class FRestrictedConfigInfo
---@field RestrictedConfigName FString
---@field Owners TArray<FString>
local FRestrictedConfigInfo = {}

---@class FRestrictedGameplayTagTableRow : FGameplayTagTableRow
---@field bAllowNonRestrictedChildren boolean
local FRestrictedGameplayTagTableRow = {}

---@class IGameplayTagAssetInterface : IInterface
local IGameplayTagAssetInterface = {}

---@class UBlueprintGameplayTagLibrary : UBlueprintFunctionLibrary
local UBlueprintGameplayTagLibrary = {}

---@class UEditableGameplayTagQuery : UObject
---@field UserDescription FString
---@field RootExpression UEditableGameplayTagQueryExpression
---@field TagQueryExportText_Helper FGameplayTagQuery
local UEditableGameplayTagQuery = {}

---@class UEditableGameplayTagQueryExpression : UObject
local UEditableGameplayTagQueryExpression = {}

---@class UEditableGameplayTagQueryExpression_AllExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_AllExprMatch = {}

---@class UEditableGameplayTagQueryExpression_AllTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_AllTagsMatch = {}

---@class UEditableGameplayTagQueryExpression_AnyExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_AnyExprMatch = {}

---@class UEditableGameplayTagQueryExpression_AnyTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_AnyTagsMatch = {}

---@class UEditableGameplayTagQueryExpression_NoExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_NoExprMatch = {}

---@class UEditableGameplayTagQueryExpression_NoTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_NoTagsMatch = {}

---@class UGameplayTagsDeveloperSettings : UDeveloperSettings
---@field DeveloperConfigName FString
---@field FavoriteTagSource FName
local UGameplayTagsDeveloperSettings = {}

---@class UGameplayTagsList : UObject
---@field ConfigFileName FString
---@field GameplayTagList TArray<FGameplayTagTableRow>
local UGameplayTagsList = {}

---@class UGameplayTagsManager : UObject
---@field TagSources TMap<FName, FGameplayTagSource>
---@field GameplayTagTables TArray<UDataTable>
local UGameplayTagsManager = {}

---@class UGameplayTagsSettings : UGameplayTagsList
---@field ImportTagsFromConfig boolean
---@field WarnOnInvalidTags boolean
---@field ClearInvalidTags boolean
---@field FastReplication boolean
---@field InvalidTagCharacters FString
---@field CategoryRemapping TArray<FGameplayTagCategoryRemap>
---@field GameplayTagTableList TArray<FSoftObjectPath>
---@field GameplayTagRedirects TArray<FGameplayTagRedirect>
---@field CommonlyReplicatedTags TArray<FName>
---@field NumBitsForContainerSize int32
---@field NetIndexFirstBitSegment int32
---@field RestrictedConfigFiles TArray<FRestrictedConfigInfo>
local UGameplayTagsSettings = {}

---@class URestrictedGameplayTagsList : UObject
---@field ConfigFileName FString
---@field RestrictedGameplayTagList TArray<FRestrictedGameplayTagTableRow>
local URestrictedGameplayTagsList = {}

---@param TagContainer FGameplayTagContainer
function IGameplayTagAssetInterface:GetOwnedGameplayTags(TagContainer) end

---@param TagContainer FGameplayTagContainer
function IGameplayTagAssetInterface:HasAllMatchingGameplayTags(TagContainer) end

---@param TagContainer FGameplayTagContainer
function IGameplayTagAssetInterface:HasAnyMatchingGameplayTags(TagContainer) end

---@param TagToCheck FGameplayTag
function IGameplayTagAssetInterface:HasMatchingGameplayTag(TagToCheck) end

---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
function UBlueprintGameplayTagLibrary:AddGameplayTag(TagContainer, Tag) end

---@param InOutTagContainer FGameplayTagContainer
---@param InTagContainer FGameplayTagContainer
function UBlueprintGameplayTagLibrary:AppendGameplayTagContainers(InOutTagContainer, InTagContainer) end

---@param GameplayTagContainer FGameplayTagContainer
---@param GameplayTags TArray<FGameplayTag>
function UBlueprintGameplayTagLibrary:BreakGameplayTagContainer(GameplayTagContainer, GameplayTags) end

---@param TagContainer FGameplayTagContainer
---@param TagQuery FGameplayTagQuery
function UBlueprintGameplayTagLibrary:DoesContainerMatchTagQuery(TagContainer, TagQuery) end

---@param TagContainerInterface TScriptInterface<IGameplayTagAssetInterface>
---@param Tag FGameplayTag
function UBlueprintGameplayTagLibrary:DoesTagAssetInterfaceHaveTag(TagContainerInterface, Tag) end

---@param A FGameplayTag
---@param B FGameplayTag
function UBlueprintGameplayTagLibrary:EqualEqual_GameplayTag(A, B) end

---@param A FGameplayTagContainer
---@param B FGameplayTagContainer
function UBlueprintGameplayTagLibrary:EqualEqual_GameplayTagContainer(A, B) end

---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param GameplayTagQuery FGameplayTagQuery
---@param OutActors TArray<AActor>
function UBlueprintGameplayTagLibrary:GetAllActorsOfClassMatchingTagQuery(WorldContextObject, ActorClass, GameplayTagQuery, OutActors) end

---@param GameplayTag FGameplayTag
function UBlueprintGameplayTagLibrary:GetDebugStringFromGameplayTag(GameplayTag) end

---@param TagContainer FGameplayTagContainer
function UBlueprintGameplayTagLibrary:GetDebugStringFromGameplayTagContainer(TagContainer) end

---@param TagContainer FGameplayTagContainer
function UBlueprintGameplayTagLibrary:GetNumGameplayTagsInContainer(TagContainer) end

---@param GameplayTag FGameplayTag
function UBlueprintGameplayTagLibrary:GetTagName(GameplayTag) end

---@param TagContainerInterface TScriptInterface<IGameplayTagAssetInterface>
---@param OtherContainer FGameplayTagContainer
function UBlueprintGameplayTagLibrary:HasAllMatchingGameplayTags(TagContainerInterface, OtherContainer) end

---@param TagContainer FGameplayTagContainer
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
function UBlueprintGameplayTagLibrary:HasAllTags(TagContainer, OtherContainer, bExactMatch) end

---@param TagContainer FGameplayTagContainer
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
function UBlueprintGameplayTagLibrary:HasAnyTags(TagContainer, OtherContainer, bExactMatch) end

---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
---@param bExactMatch boolean
function UBlueprintGameplayTagLibrary:HasTag(TagContainer, Tag, bExactMatch) end

---@param GameplayTag FGameplayTag
function UBlueprintGameplayTagLibrary:IsGameplayTagValid(GameplayTag) end

---@param TagQuery FGameplayTagQuery
function UBlueprintGameplayTagLibrary:IsTagQueryEmpty(TagQuery) end

---@param GameplayTags TArray<FGameplayTag>
function UBlueprintGameplayTagLibrary:MakeGameplayTagContainerFromArray(GameplayTags) end

---@param SingleTag FGameplayTag
function UBlueprintGameplayTagLibrary:MakeGameplayTagContainerFromTag(SingleTag) end

---@param TagQuery FGameplayTagQuery
function UBlueprintGameplayTagLibrary:MakeGameplayTagQuery(TagQuery) end

---@param Value FGameplayTag
function UBlueprintGameplayTagLibrary:MakeLiteralGameplayTag(Value) end

---@param Value FGameplayTagContainer
function UBlueprintGameplayTagLibrary:MakeLiteralGameplayTagContainer(Value) end

---@param TagOne FGameplayTag
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
function UBlueprintGameplayTagLibrary:MatchesAnyTags(TagOne, OtherContainer, bExactMatch) end

---@param TagOne FGameplayTag
---@param TagTwo FGameplayTag
---@param bExactMatch boolean
function UBlueprintGameplayTagLibrary:MatchesTag(TagOne, TagTwo, bExactMatch) end

---@param A FGameplayTag
---@param B FGameplayTag
function UBlueprintGameplayTagLibrary:NotEqual_GameplayTag(A, B) end

---@param A FGameplayTagContainer
---@param B FGameplayTagContainer
function UBlueprintGameplayTagLibrary:NotEqual_GameplayTagContainer(A, B) end

---@param A FGameplayTagContainer
---@param B FString
function UBlueprintGameplayTagLibrary:NotEqual_TagContainerTagContainer(A, B) end

---@param A FGameplayTag
---@param B FString
function UBlueprintGameplayTagLibrary:NotEqual_TagTag(A, B) end

---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
function UBlueprintGameplayTagLibrary:RemoveGameplayTag(TagContainer, Tag) end
