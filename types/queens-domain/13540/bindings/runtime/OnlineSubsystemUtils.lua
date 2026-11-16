---@meta

---@class AOnlineBeacon : AActor
---@field BeaconConnectionInitialTimeout float
---@field BeaconConnectionTimeout float
---@field NetDriver UNetDriver
local AOnlineBeacon = {}

---@class AOnlineBeaconClient : AOnlineBeacon
---@field BeaconOwner AOnlineBeaconHostObject
---@field BeaconConnection UNetConnection
---@field ConnectionState EBeaconConnectionState
local AOnlineBeaconClient = {}

---@class AOnlineBeaconHost : AOnlineBeacon
---@field ListenPort int32
---@field ClientActors TArray<AOnlineBeaconClient>
local AOnlineBeaconHost = {}

---@class AOnlineBeaconHostObject : AActor
---@field BeaconTypeName FString
---@field ClientBeaconActorClass TSubclassOf<AOnlineBeaconClient>
---@field ClientActors TArray<AOnlineBeaconClient>
local AOnlineBeaconHostObject = {}

---@class APartyBeaconClient : AOnlineBeaconClient
---@field DestSessionId FString
---@field PendingReservation FPartyReservation
---@field RequestType EClientRequestType
---@field bPendingReservationSent boolean
---@field bCancelReservation boolean
local APartyBeaconClient = {}

---@class APartyBeaconHost : AOnlineBeaconHostObject
---@field State UPartyBeaconState
---@field bLogoutOnSessionTimeout boolean
---@field SessionTimeoutSecs float
---@field TravelSessionTimeoutSecs float
local APartyBeaconHost = {}

---@class ASpectatorBeaconClient : AOnlineBeaconClient
---@field DestSessionId FString
---@field PendingReservation FSpectatorReservation
---@field RequestType ESpectatorClientRequestType
---@field bPendingReservationSent boolean
---@field bCancelReservation boolean
local ASpectatorBeaconClient = {}

---@class ASpectatorBeaconHost : AOnlineBeaconHostObject
---@field State USpectatorBeaconState
---@field bLogoutOnSessionTimeout boolean
---@field SessionTimeoutSecs float
---@field TravelSessionTimeoutSecs float
local ASpectatorBeaconHost = {}

---@class ATestBeaconClient : AOnlineBeaconClient
local ATestBeaconClient = {}

---@class ATestBeaconHost : AOnlineBeaconHostObject
local ATestBeaconHost = {}

---@class FBlueprintSessionResult
local FBlueprintSessionResult = {}

---@class FInAppPurchaseProductInfo2
---@field Identifier FString
---@field TransactionIdentifier FString
---@field DisplayName FString
---@field DisplayDescription FString
---@field DisplayPrice FString
---@field RawPrice float
---@field CurrencyCode FString
---@field CurrencySymbol FString
---@field DecimalSeparator FString
---@field GroupingSeparator FString
---@field ReceiptData FString
---@field DynamicFields TMap<FString, FString>
local FInAppPurchaseProductInfo2 = {}

---@class FInAppPurchaseProductRequest2
---@field ProductIdentifier FString
---@field bIsConsumable boolean
local FInAppPurchaseProductRequest2 = {}

---@class FInAppPurchaseReceiptInfo
---@field ItemName FString
---@field ItemId FString
---@field ValidationInfo FString
local FInAppPurchaseReceiptInfo = {}

---@class FInAppPurchaseReceiptInfo2
---@field ItemName FString
---@field ItemId FString
---@field ValidationInfo FString
local FInAppPurchaseReceiptInfo2 = {}

---@class FInAppPurchaseRestoreInfo2
---@field ItemName FString
---@field ItemId FString
---@field ValidationInfo FString
local FInAppPurchaseRestoreInfo2 = {}

---@class FOnlineProxyStoreOffer
---@field OfferId FString
---@field Title FText
---@field Description FText
---@field LongDescription FText
---@field RegularPriceText FText
---@field RegularPrice int32
---@field PriceText FText
---@field NumericPrice int32
---@field CurrencyCode FString
---@field ReleaseDate FDateTime
---@field ExpirationDate FDateTime
---@field DiscountType EOnlineProxyStoreOfferDiscountType
---@field DynamicFields TMap<FString, FString>
local FOnlineProxyStoreOffer = {}

---@class FPIELoginSettingsInternal
---@field ID FString
---@field Token FString
---@field Type FString
---@field TokenBytes TArray<uint8>
local FPIELoginSettingsInternal = {}

---@class FPartyBeaconCrossplayPlatformMapping
---@field PlatformName FString
---@field PlatformType FString
local FPartyBeaconCrossplayPlatformMapping = {}

---@class FPartyReservation
---@field TeamNum int32
---@field PartyLeader FUniqueNetIdRepl
---@field PartyMembers TArray<FPlayerReservation>
---@field RemovedPartyMembers TArray<FPlayerReservation>
local FPartyReservation = {}

---@class FPlayerReservation
---@field UniqueId FUniqueNetIdRepl
---@field ValidationStr FString
---@field Platform FString
---@field bAllowCrossplay boolean
---@field ElapsedTime float
local FPlayerReservation = {}

---@class FSpectatorReservation
---@field SpectatorId FUniqueNetIdRepl
---@field Spectator FPlayerReservation
local FSpectatorReservation = {}

---@class UAchievementBlueprintLibrary : UBlueprintFunctionLibrary
local UAchievementBlueprintLibrary = {}

---@class UAchievementQueryCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FAchievementQueryCallbackProxyOnSuccess
---@field OnFailure FAchievementQueryCallbackProxyOnFailure
local UAchievementQueryCallbackProxy = {}

---@class UAchievementWriteCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FAchievementWriteCallbackProxyOnSuccess
---@field OnFailure FAchievementWriteCallbackProxyOnFailure
local UAchievementWriteCallbackProxy = {}

---@class UConnectionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FConnectionCallbackProxyOnSuccess
---@field OnFailure FConnectionCallbackProxyOnFailure
local UConnectionCallbackProxy = {}

---@class UCreateSessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FCreateSessionCallbackProxyOnSuccess
---@field OnFailure FCreateSessionCallbackProxyOnFailure
local UCreateSessionCallbackProxy = {}

---@class UDestroySessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FDestroySessionCallbackProxyOnSuccess
---@field OnFailure FDestroySessionCallbackProxyOnFailure
local UDestroySessionCallbackProxy = {}

---@class UEndMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FEndMatchCallbackProxyOnSuccess
---@field OnFailure FEndMatchCallbackProxyOnFailure
local UEndMatchCallbackProxy = {}

---@class UEndTurnCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FEndTurnCallbackProxyOnSuccess
---@field OnFailure FEndTurnCallbackProxyOnFailure
local UEndTurnCallbackProxy = {}

---@class UFindSessionsCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FFindSessionsCallbackProxyOnSuccess
---@field OnFailure FFindSessionsCallbackProxyOnFailure
local UFindSessionsCallbackProxy = {}

---@class UFindTurnBasedMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FFindTurnBasedMatchCallbackProxyOnSuccess
---@field OnFailure FFindTurnBasedMatchCallbackProxyOnFailure
local UFindTurnBasedMatchCallbackProxy = {}

---@class UInAppPurchaseCallbackProxy : UObject
---@field OnSuccess FInAppPurchaseCallbackProxyOnSuccess
---@field OnFailure FInAppPurchaseCallbackProxyOnFailure
local UInAppPurchaseCallbackProxy = {}

---@class UInAppPurchaseCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseCallbackProxy2OnFailure
local UInAppPurchaseCallbackProxy2 = {}

---@class UInAppPurchaseQueryCallbackProxy : UObject
---@field OnSuccess FInAppPurchaseQueryCallbackProxyOnSuccess
---@field OnFailure FInAppPurchaseQueryCallbackProxyOnFailure
local UInAppPurchaseQueryCallbackProxy = {}

---@class UInAppPurchaseQueryCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseQueryCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseQueryCallbackProxy2OnFailure
local UInAppPurchaseQueryCallbackProxy2 = {}

---@class UInAppPurchaseRestoreCallbackProxy : UObject
---@field OnSuccess FInAppPurchaseRestoreCallbackProxyOnSuccess
---@field OnFailure FInAppPurchaseRestoreCallbackProxyOnFailure
local UInAppPurchaseRestoreCallbackProxy = {}

---@class UInAppPurchaseRestoreCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseRestoreCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseRestoreCallbackProxy2OnFailure
local UInAppPurchaseRestoreCallbackProxy2 = {}

---@class UIpConnection : UNetConnection
---@field SocketErrorDisconnectDelay float
local UIpConnection = {}

---@class UIpNetDriver : UNetDriver
---@field LogPortUnreach boolean
---@field AllowPlayerPortUnreach boolean
---@field MaxPortCountToTry uint32
---@field ServerDesiredSocketReceiveBufferBytes uint32
---@field ServerDesiredSocketSendBufferBytes uint32
---@field ClientDesiredSocketReceiveBufferBytes uint32
---@field ClientDesiredSocketSendBufferBytes uint32
---@field MaxSecondsInReceive double
---@field NbPacketsBetweenReceiveTimeTest int32
---@field ResolutionConnectionTimeout float
local UIpNetDriver = {}

---@class UJoinSessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FJoinSessionCallbackProxyOnSuccess
---@field OnFailure FJoinSessionCallbackProxyOnFailure
local UJoinSessionCallbackProxy = {}

---@class ULeaderboardBlueprintLibrary : UBlueprintFunctionLibrary
local ULeaderboardBlueprintLibrary = {}

---@class ULeaderboardFlushCallbackProxy : UObject
---@field OnSuccess FLeaderboardFlushCallbackProxyOnSuccess
---@field OnFailure FLeaderboardFlushCallbackProxyOnFailure
local ULeaderboardFlushCallbackProxy = {}

---@class ULeaderboardQueryCallbackProxy : UObject
---@field OnSuccess FLeaderboardQueryCallbackProxyOnSuccess
---@field OnFailure FLeaderboardQueryCallbackProxyOnFailure
local ULeaderboardQueryCallbackProxy = {}

---@class ULogoutCallbackProxy : UBlueprintAsyncActionBase
---@field OnSuccess FLogoutCallbackProxyOnSuccess
---@field OnFailure FLogoutCallbackProxyOnFailure
local ULogoutCallbackProxy = {}

---@class UOnlineEngineInterfaceImpl : UOnlineEngineInterface
---@field MappedUniqueNetIdTypes TMap<FName, FName>
---@field CompatibleUniqueNetIdTypes TArray<FName>
---@field VoiceSubsystemNameOverride FName
local UOnlineEngineInterfaceImpl = {}

---@class UOnlinePIESettings : UDeveloperSettings
---@field bOnlinePIEEnabled boolean
---@field Logins TArray<FPIELoginSettingsInternal>
local UOnlinePIESettings = {}

---@class UOnlineSessionClient : UOnlineSession
---@field bIsFromInvite boolean
---@field bHandlingDisconnect boolean
local UOnlineSessionClient = {}

---@class UPartyBeaconState : UObject
---@field SessionName FName
---@field NumConsumedReservations int32
---@field MaxReservations int32
---@field NumTeams int32
---@field NumPlayersPerTeam int32
---@field TeamAssignmentMethod FName
---@field ReservedHostTeamNum int32
---@field ForceTeamNum int32
---@field bRestrictCrossConsole boolean
---@field PlatformCrossplayRestrictions TArray<FString>
---@field PlatformTypeMapping TArray<FPartyBeaconCrossplayPlatformMapping>
---@field bEnableRemovalRequests boolean
---@field Reservations TArray<FPartyReservation>
local UPartyBeaconState = {}

---@class UQuitMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FQuitMatchCallbackProxyOnSuccess
---@field OnFailure FQuitMatchCallbackProxyOnFailure
local UQuitMatchCallbackProxy = {}

---@class UShowLoginUICallbackProxy : UBlueprintAsyncActionBase
---@field OnSuccess FShowLoginUICallbackProxyOnSuccess
---@field OnFailure FShowLoginUICallbackProxyOnFailure
local UShowLoginUICallbackProxy = {}

---@class USpectatorBeaconState : UObject
---@field SessionName FName
---@field NumConsumedReservations int32
---@field MaxReservations int32
---@field bRestrictCrossConsole boolean
---@field Reservations TArray<FSpectatorReservation>
local USpectatorBeaconState = {}

---@class UTurnBasedBlueprintLibrary : UBlueprintFunctionLibrary
local UTurnBasedBlueprintLibrary = {}

---@class UVoipListenerSynthComponent : USynthComponent
local UVoipListenerSynthComponent = {}

function AOnlineBeaconClient:ClientOnConnected() end

---@param ReservationResponse EPartyReservationResult::Type
function APartyBeaconClient:ClientCancelReservationResponse(ReservationResponse) end

---@param ReservationResponse EPartyReservationResult::Type
function APartyBeaconClient:ClientReservationResponse(ReservationResponse) end

function APartyBeaconClient:ClientSendReservationFull() end

---@param NumRemainingReservations int32
function APartyBeaconClient:ClientSendReservationUpdates(NumRemainingReservations) end

---@param SessionID FString
---@param Reservation FPartyReservation
function APartyBeaconClient:ServerAddOrUpdateReservationRequest(SessionID, Reservation) end

---@param PartyLeader FUniqueNetIdRepl
function APartyBeaconClient:ServerCancelReservationRequest(PartyLeader) end

---@param SessionID FString
---@param ReservationUpdate FPartyReservation
function APartyBeaconClient:ServerRemoveMemberFromReservationRequest(SessionID, ReservationUpdate) end

---@param SessionID FString
---@param Reservation FPartyReservation
function APartyBeaconClient:ServerReservationRequest(SessionID, Reservation) end

---@param SessionID FString
---@param ReservationUpdate FPartyReservation
function APartyBeaconClient:ServerUpdateReservationRequest(SessionID, ReservationUpdate) end

---@param ReservationResponse ESpectatorReservationResult::Type
function ASpectatorBeaconClient:ClientCancelReservationResponse(ReservationResponse) end

---@param ReservationResponse ESpectatorReservationResult::Type
function ASpectatorBeaconClient:ClientReservationResponse(ReservationResponse) end

function ASpectatorBeaconClient:ClientSendReservationFull() end

---@param NumRemainingReservations int32
function ASpectatorBeaconClient:ClientSendReservationUpdates(NumRemainingReservations) end

---@param Spectator FUniqueNetIdRepl
function ASpectatorBeaconClient:ServerCancelReservationRequest(Spectator) end

---@param SessionID FString
---@param Reservation FSpectatorReservation
function ASpectatorBeaconClient:ServerReservationRequest(SessionID, Reservation) end

function ATestBeaconClient:ClientPing() end

function ATestBeaconClient:ServerPong() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementID FName
---@param bFoundID boolean
---@param Title FText
---@param LockedDescription FText
---@param UnlockedDescription FText
---@param bHidden boolean
function UAchievementBlueprintLibrary:GetCachedAchievementDescription(WorldContextObject, PlayerController, AchievementID, bFoundID, Title, LockedDescription, UnlockedDescription, bHidden) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementID FName
---@param bFoundID boolean
---@param Progress float
function UAchievementBlueprintLibrary:GetCachedAchievementProgress(WorldContextObject, PlayerController, AchievementID, bFoundID, Progress) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
function UAchievementQueryCallbackProxy:CacheAchievementDescriptions(WorldContextObject, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
function UAchievementQueryCallbackProxy:CacheAchievements(WorldContextObject, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementName FName
---@param Progress float
---@param UserTag int32
function UAchievementWriteCallbackProxy:WriteAchievementProgress(WorldContextObject, PlayerController, AchievementName, Progress, UserTag) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
function UConnectionCallbackProxy:ConnectToService(WorldContextObject, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param PublicConnections int32
---@param bUseLAN boolean
function UCreateSessionCallbackProxy:CreateSession(WorldContextObject, PlayerController, PublicConnections, bUseLAN) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
function UDestroySessionCallbackProxy:DestroySession(WorldContextObject, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchActor TScriptInterface<ITurnBasedMatchInterface>
---@param MatchID FString
---@param LocalPlayerOutcome EMPMatchOutcome::Type
---@param OtherPlayersOutcome EMPMatchOutcome::Type
function UEndMatchCallbackProxy:EndMatch(WorldContextObject, PlayerController, MatchActor, MatchID, LocalPlayerOutcome, OtherPlayersOutcome) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param TurnBasedMatchInterface TScriptInterface<ITurnBasedMatchInterface>
function UEndTurnCallbackProxy:EndTurn(WorldContextObject, PlayerController, MatchID, TurnBasedMatchInterface) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MaxResults int32
---@param bUseLAN boolean
function UFindSessionsCallbackProxy:FindSessions(WorldContextObject, PlayerController, MaxResults, bUseLAN) end

---@param Result FBlueprintSessionResult
function UFindSessionsCallbackProxy:GetCurrentPlayers(Result) end

---@param Result FBlueprintSessionResult
function UFindSessionsCallbackProxy:GetMaxPlayers(Result) end

---@param Result FBlueprintSessionResult
function UFindSessionsCallbackProxy:GetPingInMs(Result) end

---@param Result FBlueprintSessionResult
function UFindSessionsCallbackProxy:GetServerName(Result) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchActor TScriptInterface<ITurnBasedMatchInterface>
---@param MinPlayers int32
---@param MaxPlayers int32
---@param PlayerGroup int32
---@param ShowExistingMatches boolean
function UFindTurnBasedMatchCallbackProxy:FindTurnBasedMatch(WorldContextObject, PlayerController, MatchActor, MinPlayers, MaxPlayers, PlayerGroup, ShowExistingMatches) end

---@param PlayerController APlayerController
---@param ProductRequest FInAppPurchaseProductRequest2
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchase(PlayerController, ProductRequest) end

---@param PlayerController APlayerController
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchaseQueryOwned(PlayerController) end

---@param PlayerController APlayerController
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchaseUnprocessedPurchases(PlayerController) end

---@param PlayerController APlayerController
---@param ProductRequest FInAppPurchaseProductRequest
function UInAppPurchaseCallbackProxy:CreateProxyObjectForInAppPurchase(PlayerController, ProductRequest) end

---@param PlayerController APlayerController
---@param ProductIdentifiers TArray<FString>
function UInAppPurchaseQueryCallbackProxy2:CreateProxyObjectForInAppPurchaseQuery(PlayerController, ProductIdentifiers) end

---@param PlayerController APlayerController
---@param ProductIdentifiers TArray<FString>
function UInAppPurchaseQueryCallbackProxy:CreateProxyObjectForInAppPurchaseQuery(PlayerController, ProductIdentifiers) end

---@param ConsumableProductFlags TArray<FInAppPurchaseProductRequest2>
---@param PlayerController APlayerController
function UInAppPurchaseRestoreCallbackProxy2:CreateProxyObjectForInAppPurchaseRestore(ConsumableProductFlags, PlayerController) end

---@param ConsumableProductFlags TArray<FInAppPurchaseProductRequest>
---@param PlayerController APlayerController
function UInAppPurchaseRestoreCallbackProxy:CreateProxyObjectForInAppPurchaseRestore(ConsumableProductFlags, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param SearchResult FBlueprintSessionResult
function UJoinSessionCallbackProxy:JoinSession(WorldContextObject, PlayerController, SearchResult) end

---@param PlayerController APlayerController
---@param StatName FName
---@param StatValue int32
function ULeaderboardBlueprintLibrary:WriteLeaderboardInteger(PlayerController, StatName, StatValue) end

---@param PlayerController APlayerController
---@param SessionName FName
function ULeaderboardFlushCallbackProxy:CreateProxyObjectForFlush(PlayerController, SessionName) end

---@param PlayerController APlayerController
---@param StatName FName
function ULeaderboardQueryCallbackProxy:CreateProxyObjectForIntQuery(PlayerController, StatName) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
function ULogoutCallbackProxy:Logout(WorldContextObject, PlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param Outcome EMPMatchOutcome::Type
---@param TurnTimeoutInSeconds int32
function UQuitMatchCallbackProxy:QuitMatch(WorldContextObject, PlayerController, MatchID, Outcome, TurnTimeoutInSeconds) end

---@param WorldContextObject UObject
---@param InPlayerController APlayerController
function UShowLoginUICallbackProxy:ShowExternalLoginUI(WorldContextObject, InPlayerController) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param bIsMyTurn boolean
function UTurnBasedBlueprintLibrary:GetIsMyTurn(WorldContextObject, PlayerController, MatchID, bIsMyTurn) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param PlayerIndex int32
function UTurnBasedBlueprintLibrary:GetMyPlayerIndex(WorldContextObject, PlayerController, MatchID, PlayerIndex) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param PlayerIndex int32
---@param PlayerDisplayName FString
function UTurnBasedBlueprintLibrary:GetPlayerDisplayName(WorldContextObject, PlayerController, MatchID, PlayerIndex, PlayerDisplayName) end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param Object UObject
function UTurnBasedBlueprintLibrary:RegisterTurnBasedMatchInterfaceObject(WorldContextObject, PlayerController, Object) end

function UVoipListenerSynthComponent:IsIdling() end
