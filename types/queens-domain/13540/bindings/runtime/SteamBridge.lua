---@meta

---@class FAccountID : FUint32
local FAccountID = {}

---@class FAppID : FUint32
local FAppID = {}

---@class FHAuthTicket : FUint32
local FHAuthTicket = {}

---@class FHHTMLBrowser : FUint32
local FHHTMLBrowser = {}

---@class FHServerListRequest
local FHServerListRequest = {}

---@class FHServerQuery : FInt32
local FHServerQuery = {}

---@class FHSteamUser : FUint32
local FHSteamUser = {}

---@class FHTTPCookieContainerHandle : FUint32
local FHTTPCookieContainerHandle = {}

---@class FHTTPRequestHandle : FUint32
local FHTTPRequestHandle = {}

---@class FInputActionSetHandle : FUint64
local FInputActionSetHandle = {}

---@class FInputAnalogActionHandle : FUint64
local FInputAnalogActionHandle = {}

---@class FInputDigitalActionHandle : FUint64
local FInputDigitalActionHandle = {}

---@class FInputHandle : FUint64
local FInputHandle = {}

---@class FInt16
local FInt16 = {}

---@class FInt32
---@field Value int32
local FInt32 = {}

---@class FPartyBeaconID : FUint64
local FPartyBeaconID = {}

---@class FPublishedFileId : FUint64
local FPublishedFileId = {}

---@class FPublishedFileUpdateHandle : FUint64
local FPublishedFileUpdateHandle = {}

---@class FScreenshotHandle : FUint32
local FScreenshotHandle = {}

---@class FSteamAPICall : FUint64
local FSteamAPICall = {}

---@class FSteamFriendsGroupID : FInt16
local FSteamFriendsGroupID = {}

---@class FSteamID : FUint64
local FSteamID = {}

---@class FSteamInputAnalogActionData
---@field Mode ESteamControllerSourceMode
---@field X float
---@field Y float
---@field bActive boolean
local FSteamInputAnalogActionData = {}

---@class FSteamInputDigitalActionData
---@field bState boolean
---@field bActive boolean
local FSteamInputDigitalActionData = {}

---@class FSteamInputMotionData
---@field RotQuat FQuat
---@field PosAccel FVector
---@field RotVel FVector
local FSteamInputMotionData = {}

---@class FSteamInventoryResult : FInt32
local FSteamInventoryResult = {}

---@class FSteamInventoryUpdateHandle : FUint64
local FSteamInventoryUpdateHandle = {}

---@class FSteamItemDef : FInt32
local FSteamItemDef = {}

---@class FSteamItemDetails
---@field ItemId FSteamItemInstanceID
---@field Definition FSteamItemDef
---@field Quantity int32
---@field flags TArray<ESteamItemFlags_>
local FSteamItemDetails = {}

---@class FSteamItemInstanceID : FUint64
local FSteamItemInstanceID = {}

---@class FSteamItemPriceData
---@field ItemDef FSteamItemDef
---@field CurrentPrice int64
---@field BasePrice int64
local FSteamItemPriceData = {}

---@class FSteamLeaderboard : FUint64
local FSteamLeaderboard = {}

---@class FSteamLeaderboardEntries : FUint64
local FSteamLeaderboardEntries = {}

---@class FSteamLeaderboardEntry
---@field SteamIDUser FSteamID
---@field GlobalRank int32
---@field Score int32
---@field Details int32
---@field UGC FUGCHandle
local FSteamLeaderboardEntry = {}

---@class FSteamPartyBeaconLocation
---@field Type ESteamPartyBeaconLocation
---@field LocationID int64
local FSteamPartyBeaconLocation = {}

---@class FSteamUGCDetails
---@field PublishedFileId FPublishedFileId
---@field Result ESteamResult
---@field FileType ESteamWorkshopFileType
---@field CreatorAppID int32
---@field ConsumerAppID int32
---@field Title FString
---@field Description FString
---@field SteamIDOwner FSteamID
---@field TimeCreated int32
---@field TimeUpdated int32
---@field TimeAddedToUserList int32
---@field Visibility ESteamRemoteStoragePublishedFileVisibility
---@field bBanned boolean
---@field bAcceptedForUse boolean
---@field bTagsTruncated boolean
---@field Tags TArray<FString>
---@field File FUGCHandle
---@field PreviewFile FUGCHandle
---@field Filename FString
---@field FileSize int32
---@field PreviewFileSize int32
---@field URL FString
---@field VotesUp int32
---@field VotesDown int32
---@field Score float
---@field NumChildren int32
local FSteamUGCDetails = {}

---@class FUGCFileWriteStreamHandle : FUint64
local FUGCFileWriteStreamHandle = {}

---@class FUGCHandle : FUint64
local FUGCHandle = {}

---@class FUGCQueryHandle : FUint64
local FUGCQueryHandle = {}

---@class FUGCUpdateHandle : FUint64
local FUGCUpdateHandle = {}

---@class FUint32
local FUint32 = {}

---@class FUint64
local FUint64 = {}

---@class USteamApps : UObject
---@field m_OnDlcInstalled FSteamApps_OnDlcInstalled
---@field m_OnFileDetailsResult FSteamApps_OnFileDetailsResult
---@field m_OnNewUrlLaunchParameters FSteamApps_OnNewUrlLaunchParameters
local USteamApps = {}

---@class USteamBridgeSettings : UObject
---@field bTest boolean
local USteamBridgeSettings = {}

---@class USteamBridgeUtils : UObject
local USteamBridgeUtils = {}

---@class USteamFriends : UObject
---@field m_OnAvatarImageLoaded FSteamFriends_OnAvatarImageLoaded
---@field m_OnClanOfficerListResponse FSteamFriends_OnClanOfficerListResponse
---@field m_OnDownloadClanActivityCountsResult FSteamFriends_OnDownloadClanActivityCountsResult
---@field m_OnFriendRichPresenceUpdate FSteamFriends_OnFriendRichPresenceUpdate
---@field m_OnFriendsEnumerateFollowingList FSteamFriends_OnFriendsEnumerateFollowingList
---@field m_OnFriendsGetFollowerCount FSteamFriends_OnFriendsGetFollowerCount
---@field m_OnFriendsIsFollowing FSteamFriends_OnFriendsIsFollowing
---@field m_OnGameConnectedChatJoin FSteamFriends_OnGameConnectedChatJoin
---@field m_OnGameConnectedChatLeave FSteamFriends_OnGameConnectedChatLeave
---@field m_OnGameConnectedClanChatMsg FSteamFriends_OnGameConnectedClanChatMsg
---@field m_OnGameConnectedFriendChatMsg FSteamFriends_OnGameConnectedFriendChatMsg
---@field m_OnGameLobbyJoinRequested FSteamFriends_OnGameLobbyJoinRequested
---@field m_OnGameOverlayActivated FSteamFriends_OnGameOverlayActivated
---@field m_OnGameRichPresenceJoinRequested FSteamFriends_OnGameRichPresenceJoinRequested
---@field m_OnGameServerChangeRequested FSteamFriends_OnGameServerChangeRequested
---@field m_OnJoinClanChatRoomCompletionResult FSteamFriends_OnJoinClanChatRoomCompletionResult
---@field m_OnPersonaStateChange FSteamFriends_OnPersonaStateChange
---@field m_OnSetPersonaNameResponse FSteamFriends_OnSetPersonaNameResponse
local USteamFriends = {}

---@class USteamGameServer : UObject
---@field m_OnAssociateWithClanResult FSteamGameServer_OnAssociateWithClanResult
---@field m_OnComputeNewPlayerCompatibilityResult FSteamGameServer_OnComputeNewPlayerCompatibilityResult
---@field m_OnGSClientApprove FSteamGameServer_OnGSClientApprove
---@field m_OnGSClientDeny FSteamGameServer_OnGSClientDeny
---@field m_OnGSClientGroupStatus FSteamGameServer_OnGSClientGroupStatus
---@field m_OnGSClientKick FSteamGameServer_OnGSClientKick
---@field m_OnGSPolicyResponse FSteamGameServer_OnGSPolicyResponse
local USteamGameServer = {}

---@class USteamGameServerStats : UObject
---@field m_OnGSStatsReceived FSteamGameServerStats_OnGSStatsReceived
---@field m_OnGSStatsStored FSteamGameServerStats_OnGSStatsStored
---@field m_OnGSStatsUnloaded FSteamGameServerStats_OnGSStatsUnloaded
local USteamGameServerStats = {}

---@class USteamHTMLSurface : UObject
---@field m_OnHTMLBrowserReady FSteamHTMLSurface_OnHTMLBrowserReady
---@field m_OnHTMLCanGoBackAndForward FSteamHTMLSurface_OnHTMLCanGoBackAndForward
---@field m_OnHTMLChangedTitle FSteamHTMLSurface_OnHTMLChangedTitle
---@field m_OnHTMLCloseBrowser FSteamHTMLSurface_OnHTMLCloseBrowser
---@field m_OnHTMLFileOpenDialog FSteamHTMLSurface_OnHTMLFileOpenDialog
---@field m_OnHTMLFinishedRequest FSteamHTMLSurface_OnHTMLFinishedRequest
---@field m_OnHTMLHideToolTip FSteamHTMLSurface_OnHTMLHideToolTip
---@field m_OnHTMLHorizontalScroll FSteamHTMLSurface_OnHTMLHorizontalScroll
---@field m_OnHTMLJSAlert FSteamHTMLSurface_OnHTMLJSAlert
---@field m_OnHTMLJSConfirm FSteamHTMLSurface_OnHTMLJSConfirm
---@field m_OnHTMLLinkAtPosition FSteamHTMLSurface_OnHTMLLinkAtPosition
---@field m_OnHTMLNeedsPaint FSteamHTMLSurface_OnHTMLNeedsPaint
---@field m_OnHTMLNewWindow FSteamHTMLSurface_OnHTMLNewWindow
---@field m_OnHTMLOpenLinkInNewTab FSteamHTMLSurface_OnHTMLOpenLinkInNewTab
---@field m_OnHTMLSearchResults FSteamHTMLSurface_OnHTMLSearchResults
---@field m_OnHTMLSetCursor FSteamHTMLSurface_OnHTMLSetCursor
---@field m_OnHTMLShowToolTip FSteamHTMLSurface_OnHTMLShowToolTip
---@field m_OnHTMLStartRequest FSteamHTMLSurface_OnHTMLStartRequest
---@field m_OnHTMLStatusText FSteamHTMLSurface_OnHTMLStatusText
---@field m_OnHTMLUpdateToolTip FSteamHTMLSurface_OnHTMLUpdateToolTip
---@field m_OnHTMLURLChanged FSteamHTMLSurface_OnHTMLURLChanged
---@field m_OnHTMLVerticalScroll FSteamHTMLSurface_OnHTMLVerticalScroll
local USteamHTMLSurface = {}

---@class USteamHTTP : UObject
---@field m_OnHTTPRequestCompleted FSteamHTTP_OnHTTPRequestCompleted
---@field m_OnHTTPRequestDataReceived FSteamHTTP_OnHTTPRequestDataReceived
---@field m_OnHTTPRequestHeadersReceived FSteamHTTP_OnHTTPRequestHeadersReceived
local USteamHTTP = {}

---@class USteamIDUtils : UObject
local USteamIDUtils = {}

---@class USteamInput : UObject
local USteamInput = {}

---@class USteamInventory : UObject
---@field m_OnSteamInventoryDefinitionUpdate FSteamInventory_OnSteamInventoryDefinitionUpdate
---@field m_OnSteamInventoryEligiblePromoItemDefIDs FSteamInventory_OnSteamInventoryEligiblePromoItemDefIDs
---@field m_OnSteamInventoryFullUpdate FSteamInventory_OnSteamInventoryFullUpdate
---@field m_OnSteamInventoryResultReady FSteamInventory_OnSteamInventoryResultReady
---@field m_OnSteamInventoryStartPurchaseResult FSteamInventory_OnSteamInventoryStartPurchaseResult
---@field m_OnSteamInventoryRequestPricesResult FSteamInventory_OnSteamInventoryRequestPricesResult
local USteamInventory = {}

---@class USteamMatchmaking : UObject
---@field m_OnFavoritesListAccountsUpdated FSteamMatchmaking_OnFavoritesListAccountsUpdated
---@field m_OnFavoritesListChanged FSteamMatchmaking_OnFavoritesListChanged
---@field m_OnLobbyChatMsg FSteamMatchmaking_OnLobbyChatMsg
---@field m_OnLobbyChatUpdate FSteamMatchmaking_OnLobbyChatUpdate
---@field m_OnLobbyCreated FSteamMatchmaking_OnLobbyCreated
---@field m_OnLobbyDataUpdate FSteamMatchmaking_OnLobbyDataUpdate
---@field m_OnLobbyEnter FSteamMatchmaking_OnLobbyEnter
---@field m_OnLobbyGameCreated FSteamMatchmaking_OnLobbyGameCreated
---@field m_OnLobbyInvite FSteamMatchmaking_OnLobbyInvite
---@field m_OnLobbyMatchList FSteamMatchmaking_OnLobbyMatchList
local USteamMatchmaking = {}

---@class USteamMatchmakingServers : UObject
local USteamMatchmakingServers = {}

---@class USteamMusic : UObject
---@field m_OnPlaybackStatusHasChanged FSteamMusic_OnPlaybackStatusHasChanged
---@field m_OnVolumeHasChanged FSteamMusic_OnVolumeHasChanged
local USteamMusic = {}

---@class USteamParties : UObject
---@field m_OnJoinParty FSteamParties_OnJoinParty
---@field m_OnCreateBeacon FSteamParties_OnCreateBeacon
---@field m_OnReservationNotification FSteamParties_OnReservationNotification
---@field m_OnChangeNumOpenSlots FSteamParties_OnChangeNumOpenSlots
---@field m_OnAvailableBeaconLocationsUpdated FSteamParties_OnAvailableBeaconLocationsUpdated
---@field m_OnActiveBeaconsUpdated FSteamParties_OnActiveBeaconsUpdated
local USteamParties = {}

---@class USteamRemotePlay : UObject
---@field m_OnSteamRemotePlaySessionConnected FSteamRemotePlay_OnSteamRemotePlaySessionConnected
---@field m_OnSteamRemotePlaySessionDisconnected FSteamRemotePlay_OnSteamRemotePlaySessionDisconnected
local USteamRemotePlay = {}

---@class USteamRemoteStorage : UObject
---@field m_OnRemoteStorageDownloadUGCResult FSteamRemoteStorage_OnRemoteStorageDownloadUGCResult
---@field m_OnRemoteStorageFileReadAsyncComplete FSteamRemoteStorage_OnRemoteStorageFileReadAsyncComplete
---@field m_OnRemoteStorageFileShareResult FSteamRemoteStorage_OnRemoteStorageFileShareResult
---@field m_OnRemoteStorageFileWriteAsyncComplete FSteamRemoteStorage_OnRemoteStorageFileWriteAsyncComplete
---@field m_OnRemoteStoragePublishedFileSubscribed FSteamRemoteStorage_OnRemoteStoragePublishedFileSubscribed
---@field m_OnRemoteStoragePublishedFileUnsubscribed FSteamRemoteStorage_OnRemoteStoragePublishedFileUnsubscribed
---@field m_OnRemoteStorageSubscribePublishedFileResult FSteamRemoteStorage_OnRemoteStorageSubscribePublishedFileResult
---@field m_OnRemoteStorageUnsubscribePublishedFileResult FSteamRemoteStorage_OnRemoteStorageUnsubscribePublishedFileResult
local USteamRemoteStorage = {}

---@class USteamScreenshots : UObject
---@field m_OnScreenshotReady FSteamScreenshots_OnScreenshotReady
---@field m_OnScreenshotRequested FSteamScreenshots_OnScreenshotRequested
local USteamScreenshots = {}

---@class USteamUGC : UObject
---@field m_OnAddAppDependencyResult FSteamUGC_OnAddAppDependencyResult
---@field m_OnAddUGCDependencyResult FSteamUGC_OnAddUGCDependencyResult
---@field m_OnCreateItemResult FSteamUGC_OnCreateItemResult
---@field m_OnDownloadItemResult FSteamUGC_OnDownloadItemResult
---@field m_OnGetAppDependenciesResult FSteamUGC_OnGetAppDependenciesResult
---@field m_OnDeleteItemResult FSteamUGC_OnDeleteItemResult
---@field m_OnGetUserItemVoteResult FSteamUGC_OnGetUserItemVoteResult
---@field m_OnItemInstalled FSteamUGC_OnItemInstalled
---@field m_OnRemoveAppDependencyResult FSteamUGC_OnRemoveAppDependencyResult
---@field m_OnRemoveUGCDependencyResult FSteamUGC_OnRemoveUGCDependencyResult
---@field m_OnSetUserItemVoteResult FSteamUGC_OnSetUserItemVoteResult
---@field m_OnStartPlaytimeTrackingResult FSteamUGC_OnStartPlaytimeTrackingResult
---@field m_OnSteamUGCQueryCompleted FSteamUGC_OnSteamUGCQueryCompleted
---@field m_OnStopPlaytimeTrackingResult FSteamUGC_OnStopPlaytimeTrackingResult
---@field m_OnSubmitItemUpdateResult FSteamUGC_OnSubmitItemUpdateResult
---@field m_OnUserFavoriteItemsListChanged FSteamUGC_OnUserFavoriteItemsListChanged
local USteamUGC = {}

---@class USteamUser : UObject
---@field m_OnClientGameServerDeny FSteamUser_OnClientGameServerDeny
---@field m_OnDurationControl FSteamUser_OnDurationControl
---@field m_OnEncryptedAppTicketResponse FSteamUser_OnEncryptedAppTicketResponse
---@field m_OnGameWeb FSteamUser_OnGameWeb
---@field m_OnGetAuthSessionTicketResponse FSteamUser_OnGetAuthSessionTicketResponse
---@field m_IPCFailure FSteamUser_IPCFailure
---@field m_OnLicensesUpdated FSteamUser_OnLicensesUpdated
---@field m_OnMicroTxnAuthorizationResponse FSteamUser_OnMicroTxnAuthorizationResponse
---@field m_OnSteamServerConnectFailure FSteamUser_OnSteamServerConnectFailure
---@field m_OnSteamServersConnected FSteamUser_OnSteamServersConnected
---@field m_OnSteamServersDisconnected FSteamUser_OnSteamServersDisconnected
---@field m_OnStoreAuthURLResponse FSteamUser_OnStoreAuthURLResponse
---@field m_OnValidateAuthTicketResponse FSteamUser_OnValidateAuthTicketResponse
local USteamUser = {}

---@class USteamUserStats : UObject
---@field m_OnGlobalAchievementPercentagesReady FSteamUserStats_OnGlobalAchievementPercentagesReady
---@field m_OnGlobalStatsReceived FSteamUserStats_OnGlobalStatsReceived
---@field m_OnLeaderboardFindResult FSteamUserStats_OnLeaderboardFindResult
---@field m_OnLeaderboardScoresDownloaded FSteamUserStats_OnLeaderboardScoresDownloaded
---@field m_OnLeaderboardScoreUploaded FSteamUserStats_OnLeaderboardScoreUploaded
---@field m_OnLeaderboardUGCSet FSteamUserStats_OnLeaderboardUGCSet
---@field m_OnNumberOfCurrentPlayers FSteamUserStats_OnNumberOfCurrentPlayers
---@field m_OnUserAchievementIconFetched FSteamUserStats_OnUserAchievementIconFetched
---@field m_OnUserAchievementStored FSteamUserStats_OnUserAchievementStored
---@field m_OnUserStatsReceived FSteamUserStats_OnUserStatsReceived
---@field m_OnUserStatsStored FSteamUserStats_OnUserStatsStored
---@field m_OnUserStatsUnloaded FSteamUserStats_OnUserStatsUnloaded
local USteamUserStats = {}

---@class USteamUtils : UObject
---@field m_OnGamepadTextInputDismissed FSteamUtils_OnGamepadTextInputDismissed
---@field m_OnIPCountry FSteamUtils_OnIPCountry
---@field m_OnLowBatteryPower FSteamUtils_OnLowBatteryPower
---@field m_OnSteamAPICallCompleted FSteamUtils_OnSteamAPICallCompleted
---@field m_OnSteamShutdown FSteamUtils_OnSteamShutdown
local USteamUtils = {}

---@class USteamVideo : UObject
---@field m_OnGetOPFSettingsResult FSteamVideo_OnGetOPFSettingsResult
---@field m_OnGetVideoURLResult FSteamVideo_OnGetVideoURLResult
local USteamVideo = {}

---@param DLC int32
---@param AppID int32
---@param bAvailable boolean
---@param Name FString
function USteamApps:BGetDLCDataByIndex(DLC, AppID, bAvailable, Name) end

---@param AppID int32
function USteamApps:BIsAppInstalled(AppID) end

---@param AppID int32
function USteamApps:BIsDlcInstalled(AppID) end

function USteamApps:BIsLowViolence() end

function USteamApps:BIsSubscribed() end

---@param AppID int32
function USteamApps:BIsSubscribedApp(AppID) end

function USteamApps:BIsSubscribedFromFamilySharing() end

function USteamApps:BIsSubscribedFromFreeWeekend() end

function USteamApps:BIsVACBanned() end

function USteamApps:GetAppBuildId() end

---@param AppID int32
---@param Folder FString
function USteamApps:GetAppInstallDir(AppID, Folder) end

function USteamApps:GetAppOwner() end

function USteamApps:GetAvailableGameLanguages() end

---@param Name FString
function USteamApps:GetCurrentBetaName(Name) end

function USteamApps:GetCurrentGameLanguage() end

function USteamApps:GetDLCCount() end

---@param AppID int32
---@param BytesDownloaded int64
---@param BytesTotal int64
function USteamApps:GetDlcDownloadProgress(AppID, BytesDownloaded, BytesTotal) end

---@param AppID int32
function USteamApps:GetEarliestPurchaseUnixTime(AppID) end

---@param Filename FString
function USteamApps:GetFileDetails(Filename) end

---@param AppID int32
---@param Depots TArray<int32>
---@param MaxDepots int32
function USteamApps:GetInstalledDepots(AppID, Depots, MaxDepots) end

---@param CommandLine FString
function USteamApps:GetLaunchCommandLine(CommandLine) end

---@param Key FString
function USteamApps:GetLaunchQueryParam(Key) end

function USteamApps:GetSteamApps() end

---@param AppID int32
function USteamApps:InstallDLC(AppID) end

---@param bMissingFilesOnly boolean
function USteamApps:MarkContentCorrupt(bMissingFilesOnly) end

---@param AppID int32
function USteamApps:UninstallDLC(AppID) end

---@param SteamID FSteamID
function USteamBridgeUtils:GetSteamIDAsString(SteamID) end

function USteamBridgeUtils:IsSteamEnabled() end

---@param OverlayType ESteamGameOverlayTypes
function USteamFriends:ActivateGameOverlay(OverlayType) end

---@param SteamIDLobby FSteamID
function USteamFriends:ActivateGameOverlayInviteDialog(SteamIDLobby) end

---@param AppID int32
---@param StoreFlag ESteamOverlayToStoreFlag
function USteamFriends:ActivateGameOverlayToStore(AppID, StoreFlag) end

---@param OverlayType ESteamGameUserOverlayTypes
---@param SteamID FSteamID
function USteamFriends:ActivateGameOverlayToUser(OverlayType, SteamID) end

---@param URL FString
---@param bShowModal boolean
function USteamFriends:ActivateGameOverlayToWebPage(URL, bShowModal) end

function USteamFriends:ClearRichPresence() end

---@param SteamIDClanChat FSteamID
function USteamFriends:CloseClanChatWindowInSteam(SteamIDClanChat) end

---@param SteamClanIDs TArray<FSteamID>
---@param ClansToRequest int32
function USteamFriends:DownloadClanActivityCounts(SteamClanIDs, ClansToRequest) end

---@param SteamIDClan FSteamID
---@param UserIndex int32
function USteamFriends:GetChatMemberByIndex(SteamIDClan, UserIndex) end

---@param SteamIDClan FSteamID
---@param Online int32
---@param InGame int32
---@param Chatting int32
function USteamFriends:GetClanActivityCounts(SteamIDClan, Online, InGame, Chatting) end

---@param ClanIndex int32
function USteamFriends:GetClanByIndex(ClanIndex) end

---@param SteamIDClan FSteamID
function USteamFriends:GetClanChatMemberCount(SteamIDClan) end

---@param SteamIDClanChat FSteamID
---@param MessageID int32
---@param Message FString
---@param ChatEntryType ESteamChatEntryType
---@param SteamIDChatter FSteamID
function USteamFriends:GetClanChatMessage(SteamIDClanChat, MessageID, Message, ChatEntryType, SteamIDChatter) end

function USteamFriends:GetClanCount() end

---@param SteamIDClan FSteamID
function USteamFriends:GetClanName(SteamIDClan) end

---@param SteamIDClan FSteamID
---@param OfficerIndex int32
function USteamFriends:GetClanOfficerByIndex(SteamIDClan, OfficerIndex) end

---@param SteamIDClan FSteamID
function USteamFriends:GetClanOfficerCount(SteamIDClan) end

---@param SteamIDClan FSteamID
function USteamFriends:GetClanOwner(SteamIDClan) end

---@param SteamIDClan FSteamID
function USteamFriends:GetClanTag(SteamIDClan) end

---@param CoplayFriendIndex int32
function USteamFriends:GetCoplayFriend(CoplayFriendIndex) end

function USteamFriends:GetCoplayFriendCount() end

---@param SteamID FSteamID
function USteamFriends:GetFollowerCount(SteamID) end

---@param SteamIDFriend FSteamID
---@param AvatarSize ESteamAvatarSize
---@param ImageHandle int32
function USteamFriends:GetFriendAvatar(SteamIDFriend, AvatarSize, ImageHandle) end

---@param FriendIndex int32
---@param FriendFlags TArray<ESteamFriendFlags>
function USteamFriends:GetFriendByIndex(FriendIndex, FriendFlags) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendCoplayGame(SteamIDFriend) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendCoplayTime(SteamIDFriend) end

---@param FriendFlags TArray<ESteamFriendFlags>
function USteamFriends:GetFriendCount(FriendFlags) end

---@param SteamIDSource FSteamID
function USteamFriends:GetFriendCountFromSource(SteamIDSource) end

---@param SteamIDSource FSteamID
---@param FriendIndex int32
function USteamFriends:GetFriendFromSourceByIndex(SteamIDSource, FriendIndex) end

---@param SteamIDFriend FSteamID
---@param GameID FSteamID
---@param GameIP FString
---@param GamePort int32
---@param QueryPort int32
---@param SteamIDLobby FSteamID
function USteamFriends:GetFriendGamePlayed(SteamIDFriend, GameID, GameIP, GamePort, QueryPort, SteamIDLobby) end

---@param SteamIDFriend FSteamID
---@param MessageIndex int32
---@param Message FString
---@param ChatEntryType ESteamChatEntryType
function USteamFriends:GetFriendMessage(SteamIDFriend, MessageIndex, Message, ChatEntryType) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendPersonaName(SteamIDFriend) end

---@param SteamIDFriend FSteamID
---@param NameHistoryIndex int32
function USteamFriends:GetFriendPersonaNameHistory(SteamIDFriend, NameHistoryIndex) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendPersonaState(SteamIDFriend) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendRelationship(SteamIDFriend) end

---@param SteamIDFriend FSteamID
---@param Key FString
function USteamFriends:GetFriendRichPresence(SteamIDFriend, Key) end

---@param SteamIDFriend FSteamID
---@param KeyIndex int32
function USteamFriends:GetFriendRichPresenceKeyByIndex(SteamIDFriend, KeyIndex) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendRichPresenceKeyCount(SteamIDFriend) end

---@param SteamIDFriend FSteamID
function USteamFriends:GetFriendSteamLevel(SteamIDFriend) end

function USteamFriends:GetFriendsGroupCount() end

---@param GroupIndex int32
function USteamFriends:GetFriendsGroupIDByIndex(GroupIndex) end

---@param FriendsGroupID FSteamFriendsGroupID
function USteamFriends:GetFriendsGroupMembersCount(FriendsGroupID) end

---@param FriendsGroupID FSteamFriendsGroupID
---@param MemberSteamIDs TArray<FSteamID>
function USteamFriends:GetFriendsGroupMembersList(FriendsGroupID, MemberSteamIDs) end

---@param FriendsGroupID FSteamFriendsGroupID
function USteamFriends:GetFriendsGroupName(FriendsGroupID) end

function USteamFriends:GetPersonaName() end

function USteamFriends:GetPersonaState() end

---@param SteamIDPlayer FSteamID
function USteamFriends:GetPlayerNickname(SteamIDPlayer) end

function USteamFriends:GetSteamFriends() end

---@param SteamIDFriend FSteamID
---@param FriendFlags TArray<ESteamFriendFlags>
function USteamFriends:HasFriend(SteamIDFriend, FriendFlags) end

---@param SteamIDFriend FSteamID
---@param ConnectString FString
function USteamFriends:InviteUserToGame(SteamIDFriend, ConnectString) end

---@param SteamIDClanChat FSteamID
---@param SteamIDUser FSteamID
function USteamFriends:IsClanChatAdmin(SteamIDClanChat, SteamIDUser) end

---@param SteamIDClanChat FSteamID
function USteamFriends:IsClanChatWindowOpenInSteam(SteamIDClanChat) end

---@param SteamIDClan FSteamID
function USteamFriends:IsClanOfficialGameGroup(SteamIDClan) end

---@param SteamIDClan FSteamID
function USteamFriends:IsClanPublic(SteamIDClan) end

---@param SteamID FSteamID
function USteamFriends:IsFollowing(SteamID) end

---@param SteamIDUser FSteamID
---@param SteamIDSource FSteamID
function USteamFriends:IsUserInSource(SteamIDUser, SteamIDSource) end

---@param SteamIDClan FSteamID
function USteamFriends:JoinClanChatRoom(SteamIDClan) end

---@param SteamIDClan FSteamID
function USteamFriends:LeaveClanChatRoom(SteamIDClan) end

---@param SteamIDClanChat FSteamID
function USteamFriends:OpenClanChatWindowInSteam(SteamIDClanChat) end

---@param SteamIDFriend FSteamID
---@param MsgToSend FString
function USteamFriends:ReplyToFriendMessage(SteamIDFriend, MsgToSend) end

---@param SteamIDClan FSteamID
function USteamFriends:RequestClanOfficerList(SteamIDClan) end

---@param SteamIDFriend FSteamID
function USteamFriends:RequestFriendRichPresence(SteamIDFriend) end

---@param SteamIDUser FSteamID
---@param bRequireNameOnly boolean
function USteamFriends:RequestUserInformation(SteamIDUser, bRequireNameOnly) end

---@param SteamIDClanChat FSteamID
---@param Text FString
function USteamFriends:SendClanChatMessage(SteamIDClanChat, Text) end

---@param SteamIDUser FSteamID
---@param bSpeaking boolean
function USteamFriends:SetInGameVoiceSpeaking(SteamIDUser, bSpeaking) end

---@param bInterceptEnabled boolean
function USteamFriends:SetListenForFriendsMessages(bInterceptEnabled) end

---@param SteamIDUserPlayedWith FSteamID
function USteamFriends:SetPlayedWith(SteamIDUserPlayedWith) end

---@param Key FString
---@param Value FString
function USteamFriends:SetRichPresence(Key, Value) end

---@param SteamIDClan FSteamID
function USteamGameServer:AssociateWithClan(SteamIDClan) end

function USteamGameServer:BLoggedOn() end

function USteamGameServer:BSecure() end

---@param AuthTicket TArray<uint8>
---@param SteamID FSteamID
function USteamGameServer:BeginAuthSession(AuthTicket, SteamID) end

---@param AuthTicketHandle FHAuthTicket
function USteamGameServer:CancelAuthTicket(AuthTicketHandle) end

function USteamGameServer:ClearAllKeyValues() end

---@param bActive boolean
function USteamGameServer:EnableHeartbeats(bActive) end

---@param SteamID FSteamID
function USteamGameServer:EndAuthSession(SteamID) end

---@param AuthTicket TArray<uint8>
function USteamGameServer:GetAuthSessionTicket(AuthTicket) end

function USteamGameServer:GetPublicIP() end

function USteamGameServer:GetSteamGameServer() end

function USteamGameServer:GetSteamID() end

function USteamGameServer:LogOff() end

---@param Token FString
function USteamGameServer:LogOn(Token) end

function USteamGameServer:LogOnAnonymous() end

---@param SteamIDUser FSteamID
---@param SteamIDGroup FSteamID
function USteamGameServer:RequestUserGroupStatus(SteamIDUser, SteamIDGroup) end

---@param BotPlayers int32
function USteamGameServer:SetBotPlayerCount(BotPlayers) end

---@param bDedicated boolean
function USteamGameServer:SetDedicatedServer(bDedicated) end

---@param GameData FString
function USteamGameServer:SetGameData(GameData) end

---@param GameDescription FString
function USteamGameServer:SetGameDescription(GameDescription) end

---@param GameTags FString
function USteamGameServer:SetGameTags(GameTags) end

---@param Key FString
---@param Value FString
function USteamGameServer:SetKeyValue(Key, Value) end

---@param MapName FString
function USteamGameServer:SetMapName(MapName) end

---@param PlayersMax int32
function USteamGameServer:SetMaxPlayerCount(PlayersMax) end

---@param ModDir FString
function USteamGameServer:SetModDir(ModDir) end

---@param bPasswordProtected boolean
function USteamGameServer:SetPasswordProtected(bPasswordProtected) end

---@param Product FString
function USteamGameServer:SetProduct(Product) end

---@param Region FString
function USteamGameServer:SetRegion(Region) end

---@param ServerName FString
function USteamGameServer:SetServerName(ServerName) end

---@param SpectatorPort int32
function USteamGameServer:SetSpectatorPort(SpectatorPort) end

---@param SpectatorServerName FString
function USteamGameServer:SetSpectatorServerName(SpectatorServerName) end

---@param SteamID FSteamID
---@param AppID int32
function USteamGameServer:UserHasLicenseForApp(SteamID, AppID) end

function USteamGameServer:WasRestartRequested() end

---@param SteamIDUser FSteamID
---@param Name FString
function USteamGameServerStats:ClearUserAchievement(SteamIDUser, Name) end

function USteamGameServerStats:GetSteamGameServerStats() end

---@param SteamIDUser FSteamID
---@param Name FString
---@param bAchieved boolean
function USteamGameServerStats:GetUserAchievement(SteamIDUser, Name, bAchieved) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data float
function USteamGameServerStats:GetUserStatFloat(SteamIDUser, Name, Data) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data int32
function USteamGameServerStats:GetUserStatInt(SteamIDUser, Name, Data) end

---@param SteamIDUser FSteamID
---@param Name FString
function USteamGameServerStats:SetUserAchievement(SteamIDUser, Name) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data float
function USteamGameServerStats:SetUserStatFloat(SteamIDUser, Name, Data) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data int32
function USteamGameServerStats:SetUserStatInt(SteamIDUser, Name, Data) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param CountThisSession float
---@param SessionLength float
function USteamGameServerStats:UpdateUserAvgRateStat(SteamIDUser, Name, CountThisSession, SessionLength) end

---@param BrowserHandle FHHTMLBrowser
---@param Key FString
---@param Value FString
function USteamHTMLSurface:AddHeader(BrowserHandle, Key, Value) end

---@param BrowserHandle FHHTMLBrowser
---@param bAllowed boolean
function USteamHTMLSurface:AllowStartRequest(BrowserHandle, bAllowed) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:CopyToClipboard(BrowserHandle) end

---@param UserAgent FString
---@param UserCSS FString
function USteamHTMLSurface:CreateBrowser(UserAgent, UserCSS) end

---@param BrowserHandle FHHTMLBrowser
---@param Script FString
function USteamHTMLSurface:ExecuteJavascript(BrowserHandle, Script) end

---@param BrowserHandle FHHTMLBrowser
---@param SearchStr FString
---@param bCurrentlyInFind boolean
---@param bReverse boolean
function USteamHTMLSurface:Find(BrowserHandle, SearchStr, bCurrentlyInFind, bReverse) end

---@param BrowserHandle FHHTMLBrowser
---@param X int32
---@param Y int32
function USteamHTMLSurface:GetLinkAtPosition(BrowserHandle, X, Y) end

function USteamHTMLSurface:GetSteamHTMLSurface() end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:GoBack(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:GoForward(BrowserHandle) end

function USteamHTMLSurface:Init() end

---@param BrowserHandle FHHTMLBrowser
---@param bResult boolean
function USteamHTMLSurface:JSDialogResponse(BrowserHandle, bResult) end

---@param BrowserHandle FHHTMLBrowser
---@param UnicodeChar int32
---@param HTMLKeyModifiers ESteamHTMLKeyModifiers
function USteamHTMLSurface:KeyChar(BrowserHandle, UnicodeChar, HTMLKeyModifiers) end

---@param BrowserHandle FHHTMLBrowser
---@param NativeKeyCode int32
---@param HTMLKeyModifiers ESteamHTMLKeyModifiers
function USteamHTMLSurface:KeyDown(BrowserHandle, NativeKeyCode, HTMLKeyModifiers) end

---@param BrowserHandle FHHTMLBrowser
---@param NativeKeyCode int32
---@param HTMLKeyModifiers ESteamHTMLKeyModifiers
function USteamHTMLSurface:KeyUp(BrowserHandle, NativeKeyCode, HTMLKeyModifiers) end

---@param BrowserHandle FHHTMLBrowser
---@param URL FString
---@param PostData FString
function USteamHTMLSurface:LoadURL(BrowserHandle, URL, PostData) end

---@param BrowserHandle FHHTMLBrowser
---@param MouseButton ESteamHTMLMouseButton
function USteamHTMLSurface:MouseDoubleClick(BrowserHandle, MouseButton) end

---@param BrowserHandle FHHTMLBrowser
---@param MouseButton ESteamHTMLMouseButton
function USteamHTMLSurface:MouseDown(BrowserHandle, MouseButton) end

---@param BrowserHandle FHHTMLBrowser
---@param X int32
---@param Y int32
function USteamHTMLSurface:MouseMove(BrowserHandle, X, Y) end

---@param BrowserHandle FHHTMLBrowser
---@param MouseButton ESteamHTMLMouseButton
function USteamHTMLSurface:MouseUp(BrowserHandle, MouseButton) end

---@param BrowserHandle FHHTMLBrowser
---@param Delta int32
function USteamHTMLSurface:MouseWheel(BrowserHandle, Delta) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:PasteFromClipboard(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:Reload(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:RemoveBrowser(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
---@param bBackgroundMode boolean
function USteamHTMLSurface:SetBackgroundMode(BrowserHandle, bBackgroundMode) end

---@param Hostname FString
---@param Key FString
---@param Value FString
---@param Path FString
---@param Expires int32
---@param BSecure boolean
---@param bHTTPOnly boolean
function USteamHTMLSurface:SetCookie(Hostname, Key, Value, Path, Expires, BSecure, bHTTPOnly) end

---@param BrowserHandle FHHTMLBrowser
---@param AbsolutePixelScroll int32
function USteamHTMLSurface:SetHorizontalScroll(BrowserHandle, AbsolutePixelScroll) end

---@param BrowserHandle FHHTMLBrowser
---@param bHasKeyFocus boolean
function USteamHTMLSurface:SetKeyFocus(BrowserHandle, bHasKeyFocus) end

---@param BrowserHandle FHHTMLBrowser
---@param Zoom float
---@param PointX int32
---@param PointY int32
function USteamHTMLSurface:SetPageScaleFactor(BrowserHandle, Zoom, PointX, PointY) end

---@param BrowserHandle FHHTMLBrowser
---@param Width int32
---@param Height int32
function USteamHTMLSurface:SetSize(BrowserHandle, Width, Height) end

---@param BrowserHandle FHHTMLBrowser
---@param AbsolutePixelScroll int32
function USteamHTMLSurface:SetVerticalScroll(BrowserHandle, AbsolutePixelScroll) end

function USteamHTMLSurface:Shutdown() end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:StopFind(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:StopLoad(BrowserHandle) end

---@param BrowserHandle FHHTMLBrowser
function USteamHTMLSurface:ViewSource(BrowserHandle) end

---@param bAllowResponsesToModify boolean
function USteamHTTP:CreateCookieContainer(bAllowResponsesToModify) end

---@param HTTPRequestMethod ESteamHTTPMethod
---@param AbsoluteURL FString
function USteamHTTP:CreateHTTPRequest(HTTPRequestMethod, AbsoluteURL) end

---@param RequestHandle FHTTPRequestHandle
function USteamHTTP:DeferHTTPRequest(RequestHandle) end

---@param RequestHandle FHTTPRequestHandle
---@param Percent float
function USteamHTTP:GetHTTPDownloadProgressPct(RequestHandle, Percent) end

---@param RequestHandle FHTTPRequestHandle
---@param bWasTimedOut boolean
function USteamHTTP:GetHTTPRequestWasTimedOut(RequestHandle, bWasTimedOut) end

---@param RequestHandle FHTTPRequestHandle
---@param BodyDataBuffer uint8
function USteamHTTP:GetHTTPResponseBodyData(RequestHandle, BodyDataBuffer) end

---@param RequestHandle FHTTPRequestHandle
---@param BodySize int32
function USteamHTTP:GetHTTPResponseBodySize(RequestHandle, BodySize) end

---@param RequestHandle FHTTPRequestHandle
---@param HeaderName FString
---@param ResponseHeaderSize int32
function USteamHTTP:GetHTTPResponseHeaderSize(RequestHandle, HeaderName, ResponseHeaderSize) end

---@param RequestHandle FHTTPRequestHandle
---@param HeaderName FString
---@param HeaderValueBuffer uint8
function USteamHTTP:GetHTTPResponseHeaderValue(RequestHandle, HeaderName, HeaderValueBuffer) end

---@param RequestHandle FHTTPRequestHandle
---@param Offset int32
---@param BodyDataBuffer uint8
function USteamHTTP:GetHTTPStreamingResponseBodyData(RequestHandle, Offset, BodyDataBuffer) end

function USteamHTTP:GetSteamHTTP() end

---@param RequestHandle FHTTPRequestHandle
function USteamHTTP:PrioritizeHTTPRequest(RequestHandle) end

---@param CookieContainerHandle FHTTPCookieContainerHandle
function USteamHTTP:ReleaseCookieContainer(CookieContainerHandle) end

---@param RequestHandle FHTTPRequestHandle
function USteamHTTP:ReleaseHTTPRequest(RequestHandle) end

---@param RequestHandle FHTTPRequestHandle
---@param CallHandle FSteamAPICall
function USteamHTTP:SendHTTPRequest(RequestHandle, CallHandle) end

---@param RequestHandle FHTTPRequestHandle
---@param CallHandle FSteamAPICall
function USteamHTTP:SendHTTPRequestAndStreamResponse(RequestHandle, CallHandle) end

---@param CookieContainerHandle FHTTPCookieContainerHandle
---@param Host FString
---@param URL FString
---@param Cookie FString
function USteamHTTP:SetCookie(CookieContainerHandle, Host, URL, Cookie) end

---@param RequestHandle FHTTPRequestHandle
---@param Milliseconds int32
function USteamHTTP:SetHTTPRequestAbsoluteTimeoutMS(RequestHandle, Milliseconds) end

---@param RequestHandle FHTTPRequestHandle
---@param ContextValue int64
function USteamHTTP:SetHTTPRequestContextValue(RequestHandle, ContextValue) end

---@param RequestHandle FHTTPRequestHandle
---@param CookieContainerHandle FHTTPCookieContainerHandle
function USteamHTTP:SetHTTPRequestCookieContainer(RequestHandle, CookieContainerHandle) end

---@param RequestHandle FHTTPRequestHandle
---@param Name FString
---@param Value FString
function USteamHTTP:SetHTTPRequestGetOrPostParameter(RequestHandle, Name, Value) end

---@param RequestHandle FHTTPRequestHandle
---@param Name FString
---@param Value FString
function USteamHTTP:SetHTTPRequestHeaderValue(RequestHandle, Name, Value) end

---@param RequestHandle FHTTPRequestHandle
---@param TimeoutSeconds int32
function USteamHTTP:SetHTTPRequestNetworkActivityTimeout(RequestHandle, TimeoutSeconds) end

---@param RequestHandle FHTTPRequestHandle
---@param ContentType FString
---@param Body uint8
function USteamHTTP:SetHTTPRequestRawPostBody(RequestHandle, ContentType, Body) end

---@param RequestHandle FHTTPRequestHandle
---@param bRequireVerifiedCertificate boolean
function USteamHTTP:SetHTTPRequestRequiresVerifiedCertificate(RequestHandle, bRequireVerifiedCertificate) end

---@param RequestHandle FHTTPRequestHandle
---@param UserAgentInfo FString
function USteamHTTP:SetHTTPRequestUserAgentInfo(RequestHandle, UserAgentInfo) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
function USteamInput:ActivateActionSet(InputHandle, ActionSetHandle) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
function USteamInput:ActivateActionSetLayer(InputHandle, ActionSetHandle) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
function USteamInput:DeactivateActionSetLayer(InputHandle, ActionSetHandle) end

---@param InputHandle FInputHandle
function USteamInput:DeactivateAllActionSetLayers(InputHandle) end

---@param InputHandle FInputHandle
---@param Origin ESteamXboxOrigin
function USteamInput:GetActionOriginFromXboxOrigin(InputHandle, Origin) end

---@param ActionSetName FString
function USteamInput:GetActionSetHandle(ActionSetName) end

---@param InputHandle FInputHandle
---@param Handles TArray<FInputHandle>
function USteamInput:GetActiveActionSetLayers(InputHandle, Handles) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
function USteamInput:GetAnalogActionData(InputHandle, ActionSetHandle) end

---@param ActionName FString
function USteamInput:GetAnalogActionHandle(ActionName) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
---@param AnalogActionHandle FInputAnalogActionHandle
---@param Origins TArray<ESteamInputActionOrigin>
function USteamInput:GetAnalogActionOrigins(InputHandle, ActionSetHandle, AnalogActionHandle, Origins) end

---@param Handles TArray<FInputHandle>
function USteamInput:GetConnectedControllers(Handles) end

---@param Index int32
function USteamInput:GetControllerForGamepadIndex(Index) end

---@param InputHandle FInputHandle
function USteamInput:GetCurrentActionSet(InputHandle) end

---@param InputHandle FInputHandle
---@param Major int32
---@param Minor int32
function USteamInput:GetDeviceBindingRevision(InputHandle, Major, Minor) end

---@param InputHandle FInputHandle
---@param DigitalActionHandle FInputDigitalActionHandle
function USteamInput:GetDigitalActionData(InputHandle, DigitalActionHandle) end

---@param ActionName FString
function USteamInput:GetDigitalActionHandle(ActionName) end

---@param InputHandle FInputHandle
---@param ActionSetHandle FInputActionSetHandle
---@param DigitalActionHandle FInputDigitalActionHandle
---@param Origins TArray<ESteamInputActionOrigin>
function USteamInput:GetDigitalActionOrigins(InputHandle, ActionSetHandle, DigitalActionHandle, Origins) end

---@param ControllerHandle FInputHandle
function USteamInput:GetGamepadIndexForController(ControllerHandle) end

---@param Origin ESteamInputActionOrigin
---@param Size ESteamInputGlyphSize_BP
function USteamInput:GetGlyphForActionOrigin(Origin, Size) end

---@param InputHandle FInputHandle
function USteamInput:GetInputTypeForHandle(InputHandle) end

---@param InputHandle FInputHandle
function USteamInput:GetMotionData(InputHandle) end

---@param InputHandle FInputHandle
function USteamInput:GetRemotePlaySessionID(InputHandle) end

function USteamInput:GetSteamInput() end

---@param Origin ESteamInputActionOrigin
function USteamInput:GetStringForActionOrigin(Origin) end

function USteamInput:Init() end

function USteamInput:RunFrame() end

---@param InputHandle FInputHandle
---@param Color FLinearColor
---@param flags TArray<ESteamControllerLEDFlag_>
function USteamInput:SetLEDColor(InputHandle, Color, flags) end

---@param InputHandle FInputHandle
---@param R uint8
---@param G uint8
---@param B uint8
---@param flags TArray<ESteamControllerLEDFlag_>
function USteamInput:SetLEDColorU(InputHandle, R, G, B, flags) end

---@param InputHandle FInputHandle
function USteamInput:ShowBindingPanel(InputHandle) end

function USteamInput:Shutdown() end

---@param InputHandle FInputHandle
---@param ActionHandle FInputAnalogActionHandle
function USteamInput:StopAnalogActionMomentum(InputHandle, ActionHandle) end

---@param DestinationInputType ESteamInputType_
---@param SourceOrigin ESteamInputActionOrigin
function USteamInput:TranslateActionOrigin(DestinationInputType, SourceOrigin) end

---@param InputHandle FInputHandle
---@param TargetPad ESteamControllerPad_
---@param DurationMicroSec int32
function USteamInput:TriggerHapticPulse(InputHandle, TargetPad, DurationMicroSec) end

---@param InputHandle FInputHandle
---@param TargetPad ESteamControllerPad_
---@param DurationMicroSec int32
---@param OffMicroSec int32
---@param Repeat int32
function USteamInput:TriggerRepeatedHapticPulse(InputHandle, TargetPad, DurationMicroSec, OffMicroSec, Repeat) end

---@param InputHandle FInputHandle
---@param LeftSpeed int32
---@param RightSpeed int32
function USteamInput:TriggerVibration(InputHandle, LeftSpeed, RightSpeed) end

---@param ResultHandle FSteamInventoryResult
---@param ItemDef FSteamItemDef
function USteamInventory:AddPromoItem(ResultHandle, ItemDef) end

---@param ResultHandle FSteamInventoryResult
---@param ItemDefs TArray<FSteamItemDef>
function USteamInventory:AddPromoItems(ResultHandle, ItemDefs) end

---@param ResultHandle FSteamInventoryResult
---@param SteamIDExpected FSteamID
function USteamInventory:CheckResultSteamID(ResultHandle, SteamIDExpected) end

---@param ResultHandle FSteamInventoryResult
---@param ItemId FSteamItemInstanceID
---@param Quantity int32
function USteamInventory:ConsumeItem(ResultHandle, ItemId, Quantity) end

---@param ResultHandle FSteamInventoryResult
---@param Buffer TArray<uint8>
function USteamInventory:DeserializeResult(ResultHandle, Buffer) end

---@param ResultHandle FSteamInventoryResult
function USteamInventory:DestroyResult(ResultHandle) end

---@param ResultHandle FSteamInventoryResult
---@param ItemsGenerated TMap<FSteamItemDef, int32>
---@param ItemsDestroyed TMap<FSteamItemInstanceID, int32>
function USteamInventory:ExchangeItems(ResultHandle, ItemsGenerated, ItemsDestroyed) end

---@param ResultHandle FSteamInventoryResult
---@param Items TMap<FSteamItemDef, int32>
function USteamInventory:GenerateItems(ResultHandle, Items) end

---@param ResultHandle FSteamInventoryResult
function USteamInventory:GetAllItems(ResultHandle) end

---@param SteamID FSteamID
---@param Items TArray<FSteamItemDef>
function USteamInventory:GetEligiblePromoItemDefinitionIDs(SteamID, Items) end

---@param Items TArray<FSteamItemDef>
function USteamInventory:GetItemDefinitionIDs(Items) end

---@param Definition FSteamItemDef
---@param PropertyName FString
---@param Value FString
function USteamInventory:GetItemDefinitionProperty(Definition, PropertyName, Value) end

---@param ItemDef FSteamItemDef
---@param CurrentPrice int64
---@param BasePrice int64
function USteamInventory:GetItemPrice(ItemDef, CurrentPrice, BasePrice) end

---@param ResultHandle FSteamInventoryResult
---@param InstanceIDs TArray<FSteamItemInstanceID>
function USteamInventory:GetItemsByID(ResultHandle, InstanceIDs) end

---@param ItemData TArray<FSteamItemPriceData>
function USteamInventory:GetItemsWithPrices(ItemData) end

function USteamInventory:GetNumItemsWithPrices() end

---@param ResultHandle FSteamInventoryResult
---@param ItemIndex int32
---@param PropertyName FString
---@param Value FString
function USteamInventory:GetResultItemProperty(ResultHandle, ItemIndex, PropertyName, Value) end

---@param ResultHandle FSteamInventoryResult
---@param ItemsArray TArray<FSteamItemDetails>
function USteamInventory:GetResultItems(ResultHandle, ItemsArray) end

---@param ResultHandle FSteamInventoryResult
function USteamInventory:GetResultStatus(ResultHandle) end

---@param ResultHandle FSteamInventoryResult
function USteamInventory:GetResultTimestamp(ResultHandle) end

function USteamInventory:GetSteamInventory() end

---@param ResultHandle FSteamInventoryResult
function USteamInventory:GrantPromoItems(ResultHandle) end

function USteamInventory:LoadItemDefinitions() end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ItemId FSteamItemInstanceID
---@param PropertyName FString
function USteamInventory:RemoveProperty(UpdateHandle, ItemId, PropertyName) end

function USteamInventory:RequestPrices() end

---@param ResultHandle FSteamInventoryResult
---@param Buffer TArray<uint8>
function USteamInventory:SerializeResult(ResultHandle, Buffer) end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ItemId FSteamItemInstanceID
---@param PropertyName FString
---@param Value boolean
function USteamInventory:SetPropertyBool(UpdateHandle, ItemId, PropertyName, Value) end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ItemId FSteamItemInstanceID
---@param PropertyName FString
---@param Value float
function USteamInventory:SetPropertyFloat(UpdateHandle, ItemId, PropertyName, Value) end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ItemId FSteamItemInstanceID
---@param PropertyName FString
---@param Value int64
function USteamInventory:SetPropertyInt(UpdateHandle, ItemId, PropertyName, Value) end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ItemId FSteamItemInstanceID
---@param PropertyName FString
---@param PropertyValue FString
function USteamInventory:SetPropertyString(UpdateHandle, ItemId, PropertyName, PropertyValue) end

function USteamInventory:StartUpdateProperties() end

---@param UpdateHandle FSteamInventoryUpdateHandle
---@param ResultHandle FSteamInventoryResult
function USteamInventory:SubmitUpdateProperties(UpdateHandle, ResultHandle) end

---@param ResultHandle FSteamInventoryResult
---@param ItemIdSource FSteamItemInstanceID
---@param Quantity int32
---@param ItemIdDest FSteamItemInstanceID
function USteamInventory:TransferItemQuantity(ResultHandle, ItemIdSource, Quantity, ItemIdDest) end

---@param ResultHandle FSteamInventoryResult
---@param DropListDefinition FSteamItemDef
function USteamInventory:TriggerItemDrop(ResultHandle, DropListDefinition) end

---@param AppID int32
---@param IP FString
---@param ConnPort int32
---@param QueryPort int32
---@param flags TArray<ESteamFavoriteFlags>
---@param TimeLastPlayedOnServer int32
function USteamMatchmaking:AddFavoriteGame(AppID, IP, ConnPort, QueryPort, flags, TimeLastPlayedOnServer) end

---@param LobbyDistanceFilter ESteamLobbyDistanceFilter
function USteamMatchmaking:AddRequestLobbyListDistanceFilter(LobbyDistanceFilter) end

---@param SlotsAvailable int32
function USteamMatchmaking:AddRequestLobbyListFilterSlotsAvailable(SlotsAvailable) end

---@param KeyToMatch FString
---@param ValueToBeCloseTo int32
function USteamMatchmaking:AddRequestLobbyListNearValueFilter(KeyToMatch, ValueToBeCloseTo) end

---@param KeyToMatch FString
---@param ValueToMatch int32
---@param ComparisonType ESteamLobbyComparison
function USteamMatchmaking:AddRequestLobbyListNumericalFilter(KeyToMatch, ValueToMatch, ComparisonType) end

---@param MaxResults int32
function USteamMatchmaking:AddRequestLobbyListResultCountFilter(MaxResults) end

---@param KeyToMatch FString
---@param ValueToMatch FString
---@param ComparisonType ESteamLobbyComparison
function USteamMatchmaking:AddRequestLobbyListStringFilter(KeyToMatch, ValueToMatch, ComparisonType) end

---@param LobbyType ESteamLobbyType
---@param MaxMembers uint8
function USteamMatchmaking:CreateLobby(LobbyType, MaxMembers) end

---@param SteamIDLobby FSteamID
---@param Key FString
function USteamMatchmaking:DeleteLobbyData(SteamIDLobby, Key) end

---@param GameIndex int32
---@param AppID int32
---@param IP FString
---@param ConnPort int32
---@param QueryPort int32
---@param flags TArray<ESteamFavoriteFlags>
---@param TimeLastPlayedOnServer int32
function USteamMatchmaking:GetFavoriteGame(GameIndex, AppID, IP, ConnPort, QueryPort, flags, TimeLastPlayedOnServer) end

function USteamMatchmaking:GetFavoriteGameCount() end

---@param LobbyIndex int32
function USteamMatchmaking:GetLobbyByIndex(LobbyIndex) end

---@param SteamIDLobby FSteamID
---@param ChatID int32
---@param SteamIDUser FSteamID
---@param Message FString
---@param ChatEntryType ESteamChatEntryType
function USteamMatchmaking:GetLobbyChatEntry(SteamIDLobby, ChatID, SteamIDUser, Message, ChatEntryType) end

---@param SteamIDLobby FSteamID
---@param Key FString
function USteamMatchmaking:GetLobbyData(SteamIDLobby, Key) end

---@param SteamIDLobby FSteamID
---@param LobbyData int32
---@param Key FString
---@param Value FString
function USteamMatchmaking:GetLobbyDataByIndex(SteamIDLobby, LobbyData, Key, Value) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:GetLobbyDataCount(SteamIDLobby) end

---@param SteamIDLobby FSteamID
---@param GameServerIP FString
---@param GameServerPort int32
---@param SteamIDGameServer FSteamID
function USteamMatchmaking:GetLobbyGameServer(SteamIDLobby, GameServerIP, GameServerPort, SteamIDGameServer) end

---@param SteamIDLobby FSteamID
---@param MemberIndex int32
function USteamMatchmaking:GetLobbyMemberByIndex(SteamIDLobby, MemberIndex) end

---@param SteamIDLobby FSteamID
---@param SteamIDUser FSteamID
---@param Key FString
function USteamMatchmaking:GetLobbyMemberData(SteamIDLobby, SteamIDUser, Key) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:GetLobbyMemberLimit(SteamIDLobby) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:GetLobbyOwner(SteamIDLobby) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:GetNumLobbyMembers(SteamIDLobby) end

function USteamMatchmaking:GetSteamMatchmaking() end

---@param SteamIDLobby FSteamID
---@param SteamIDInvitee FSteamID
function USteamMatchmaking:InviteUserToLobby(SteamIDLobby, SteamIDInvitee) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:JoinLobby(SteamIDLobby) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:LeaveLobby(SteamIDLobby) end

---@param AppID int32
---@param IP FString
---@param ConnPort int32
---@param QueryPort int32
---@param flags TArray<ESteamFavoriteFlags>
function USteamMatchmaking:RemoveFavoriteGame(AppID, IP, ConnPort, QueryPort, flags) end

---@param SteamIDLobby FSteamID
function USteamMatchmaking:RequestLobbyData(SteamIDLobby) end

function USteamMatchmaking:RequestLobbyList() end

---@param SteamIDLobby FSteamID
---@param Message FString
function USteamMatchmaking:SendLobbyChatMsg(SteamIDLobby, Message) end

---@param SteamIDLobby FSteamID
---@param Key FString
---@param Value FString
function USteamMatchmaking:SetLobbyData(SteamIDLobby, Key, Value) end

---@param SteamIDLobby FSteamID
---@param GameServerIP FString
---@param GameServerPort int32
---@param SteamIDGameServer FSteamID
function USteamMatchmaking:SetLobbyGameServer(SteamIDLobby, GameServerIP, GameServerPort, SteamIDGameServer) end

---@param SteamIDLobby FSteamID
---@param bLobbyJoinable boolean
function USteamMatchmaking:SetLobbyJoinable(SteamIDLobby, bLobbyJoinable) end

---@param SteamIDLobby FSteamID
---@param Key FString
---@param Value FString
function USteamMatchmaking:SetLobbyMemberData(SteamIDLobby, Key, Value) end

---@param SteamIDLobby FSteamID
---@param MaxMembers uint8
function USteamMatchmaking:SetLobbyMemberLimit(SteamIDLobby, MaxMembers) end

---@param SteamIDLobby FSteamID
---@param SteamIDNewOwner FSteamID
function USteamMatchmaking:SetLobbyOwner(SteamIDLobby, SteamIDNewOwner) end

---@param SteamIDLobby FSteamID
---@param LobbyType ESteamLobbyType
function USteamMatchmaking:SetLobbyType(SteamIDLobby, LobbyType) end

---@param Request FHServerListRequest
function USteamMatchmakingServers:CancelQuery(Request) end

---@param ServerQuery FHServerQuery
function USteamMatchmakingServers:CancelServerQuery(ServerQuery) end

---@param Request FHServerListRequest
function USteamMatchmakingServers:GetServerCount(Request) end

function USteamMatchmakingServers:GetSteamMatchmakingServers() end

---@param Request FHServerListRequest
function USteamMatchmakingServers:IsRefreshing(Request) end

---@param Request FHServerListRequest
function USteamMatchmakingServers:RefreshQuery(Request) end

---@param Request FHServerListRequest
---@param ServerIndex int32
function USteamMatchmakingServers:RefreshServer(Request, ServerIndex) end

---@param ServerListRequest FHServerListRequest
function USteamMatchmakingServers:ReleaseRequest(ServerListRequest) end

function USteamMusic:BIsEnabled() end

function USteamMusic:BIsPlaying() end

function USteamMusic:GetPlaybackStatus() end

function USteamMusic:GetSteamMusic() end

function USteamMusic:GetVolume() end

function USteamMusic:Pause() end

function USteamMusic:Play() end

function USteamMusic:PlayNext() end

function USteamMusic:PlayPrevious() end

---@param Volume float
function USteamMusic:SetVolume(Volume) end

---@param BeaconID FPartyBeaconID
---@param OpenSlots int32
function USteamParties:ChangeNumOpenSlots(BeaconID, OpenSlots) end

---@param OpenSlots int32
---@param BeaconLocation FSteamPartyBeaconLocation
---@param ConnectString FString
---@param MetaData FString
function USteamParties:CreateBeacon(OpenSlots, BeaconLocation, ConnectString, MetaData) end

---@param BeaconID FPartyBeaconID
function USteamParties:DestroyBeacon(BeaconID) end

---@param LocationList TArray<FSteamPartyBeaconLocation>
function USteamParties:GetAvailableBeaconLocations(LocationList) end

---@param Index int32
function USteamParties:GetBeaconByIndex(Index) end

---@param BeaconID FPartyBeaconID
---@param SteamIDBeaconOwner FSteamID
---@param BeaconLocation FSteamPartyBeaconLocation
---@param MetaData FString
function USteamParties:GetBeaconDetails(BeaconID, SteamIDBeaconOwner, BeaconLocation, MetaData) end

---@param BeaconLocation FSteamPartyBeaconLocation
---@param LocationData ESteamPartyBeaconLocationData_
---@param DataString FString
function USteamParties:GetBeaconLocationData(BeaconLocation, LocationData, DataString) end

function USteamParties:GetNumActiveBeacons() end

---@param NumLocations int32
function USteamParties:GetNumAvailableBeaconLocations(NumLocations) end

function USteamParties:GetSteamParties() end

---@param BeaconID FPartyBeaconID
function USteamParties:JoinParty(BeaconID) end

---@param BeaconID FPartyBeaconID
---@param SteamIDUser FSteamID
function USteamParties:OnReservationCompleted(BeaconID, SteamIDUser) end

---@param SessionID int32
---@param Resolution FIntPoint
function USteamRemotePlay:BGetSessionClientResolution(SessionID, Resolution) end

---@param SteamIDFriend FSteamID
function USteamRemotePlay:BSendRemotePlayTogetherInvite(SteamIDFriend) end

---@param SessionID int32
function USteamRemotePlay:GetSessionClientFormFactor(SessionID) end

---@param SessionID int32
function USteamRemotePlay:GetSessionClientName(SessionID) end

function USteamRemotePlay:GetSessionCount() end

---@param SessionIndex int32
function USteamRemotePlay:GetSessionID(SessionIndex) end

---@param SessionID int32
function USteamRemotePlay:GetSessionSteamID(SessionID) end

function USteamRemotePlay:GetSteamRemotePlay() end

---@param Filename FString
function USteamRemoteStorage:FileDelete(Filename) end

---@param Filename FString
function USteamRemoteStorage:FileExists(Filename) end

---@param Filename FString
function USteamRemoteStorage:FileForget(Filename) end

---@param Filename FString
function USteamRemoteStorage:FilePersisted(Filename) end

---@param Filename FString
---@param Data TArray<uint8>
---@param DataToRead int32
function USteamRemoteStorage:FileRead(Filename, Data, DataToRead) end

---@param Filename FString
function USteamRemoteStorage:FileShare(Filename) end

---@param Filename FString
---@param Data TArray<uint8>
function USteamRemoteStorage:FileWrite(Filename, Data) end

---@param WriteHandle FUGCFileWriteStreamHandle
function USteamRemoteStorage:FileWriteStreamCancel(WriteHandle) end

---@param WriteHandle FUGCFileWriteStreamHandle
function USteamRemoteStorage:FileWriteStreamClose(WriteHandle) end

---@param Filename FString
function USteamRemoteStorage:FileWriteStreamOpen(Filename) end

---@param WriteHandle FUGCFileWriteStreamHandle
---@param Data TArray<uint8>
function USteamRemoteStorage:FileWriteStreamWriteChunk(WriteHandle, Data) end

function USteamRemoteStorage:GetCachedUGCCount() end

---@param CachedContent int32
function USteamRemoteStorage:GetCachedUGCHandle(CachedContent) end

function USteamRemoteStorage:GetFileCount() end

---@param FileIndex int32
---@param FileSizeInBytes int32
function USteamRemoteStorage:GetFileNameAndSize(FileIndex, FileSizeInBytes) end

---@param Filename FString
function USteamRemoteStorage:GetFileSize(Filename) end

---@param Filename FString
function USteamRemoteStorage:GetFileTimestamp(Filename) end

---@param TotalBytes int64
---@param AvailableBytes int64
function USteamRemoteStorage:GetQuota(TotalBytes, AvailableBytes) end

function USteamRemoteStorage:GetSteamRemoteStorage() end

---@param Filename FString
function USteamRemoteStorage:GetSyncPlatforms(Filename) end

---@param ContentHandle FUGCHandle
---@param BytesDownloaded int32
---@param BytesExpected int32
function USteamRemoteStorage:GetUGCDownloadProgress(ContentHandle, BytesDownloaded, BytesExpected) end

function USteamRemoteStorage:IsCloudEnabledForAccount() end

function USteamRemoteStorage:IsCloudEnabledForApp() end

---@param bEnabled boolean
function USteamRemoteStorage:SetCloudEnabledForApp(bEnabled) end

---@param Filename FString
---@param RemoteStoragePlatform ESteamRemoteStoragePlatform
function USteamRemoteStorage:SetSyncPlatforms(Filename, RemoteStoragePlatform) end

---@param ContentHandle FUGCHandle
---@param Priority int32
function USteamRemoteStorage:UGCDownload(ContentHandle, Priority) end

---@param ContentHandle FUGCHandle
---@param Location FString
---@param Priority int32
function USteamRemoteStorage:UGCDownloadToLocation(ContentHandle, Location, Priority) end

---@param Filename FString
---@param ThumbnailFileName FString
---@param Size FIntPoint
function USteamScreenshots:AddScreenshotToLibrary(Filename, ThumbnailFileName, Size) end

---@param Type ESteamVRScreenshotType
---@param Filename FString
---@param VRFileName FString
function USteamScreenshots:AddVRScreenshotToLibrary(Type, Filename, VRFileName) end

function USteamScreenshots:GetSteamScreenshots() end

---@param bHook boolean
function USteamScreenshots:HookScreenshots(bHook) end

function USteamScreenshots:IsScreenshotsHooked() end

---@param ScreenshotHandle FScreenshotHandle
---@param Location FString
function USteamScreenshots:SetLocation(ScreenshotHandle, Location) end

---@param ScreenshotHandle FScreenshotHandle
---@param PublishedFileId FPublishedFileId
function USteamScreenshots:TagPublishedFile(ScreenshotHandle, PublishedFileId) end

---@param ScreenshotHandle FScreenshotHandle
---@param SteamID FSteamID
function USteamScreenshots:TagUser(ScreenshotHandle, SteamID) end

function USteamScreenshots:TriggerScreenshot() end

---@param Image UTexture2D
function USteamScreenshots:WriteScreenshot(Image) end

---@param PublishedFileId FPublishedFileId
---@param AppID int32
function USteamUGC:AddAppDependency(PublishedFileId, AppID) end

---@param ParentPublishedFileID FPublishedFileId
---@param ChildPublishedFileID FPublishedFileId
function USteamUGC:AddDependency(ParentPublishedFileID, ChildPublishedFileID) end

---@param Handle FUGCQueryHandle
---@param TagName FString
function USteamUGC:AddExcludedTag(Handle, TagName) end

---@param Handle FUGCUpdateHandle
---@param Key FString
---@param Value FString
function USteamUGC:AddItemKeyValueTag(Handle, Key, Value) end

---@param Handle FUGCUpdateHandle
---@param PreviewFile FString
---@param Type ESteamItemPreviewType
function USteamUGC:AddItemPreviewFile(Handle, PreviewFile, Type) end

---@param Handle FUGCUpdateHandle
---@param VideoID FString
function USteamUGC:AddItemPreviewVideo(Handle, VideoID) end

---@param AppID int32
---@param PublishedFileId FPublishedFileId
function USteamUGC:AddItemToFavorites(AppID, PublishedFileId) end

---@param Handle FUGCQueryHandle
---@param Key FString
---@param Value FString
function USteamUGC:AddRequiredKeyValueTag(Handle, Key, Value) end

---@param Handle FUGCQueryHandle
---@param TagName FString
function USteamUGC:AddRequiredTag(Handle, TagName) end

---@param Handle FUGCQueryHandle
---@param Tags TArray<FString>
function USteamUGC:AddRequiredTagGroup(Handle, Tags) end

---@param WorkshopDepotID int32
---@param FolderName FString
function USteamUGC:BInitWorkshopForGameServer(WorkshopDepotID, FolderName) end

---@param ConsumerAppID int32
---@param FileType ESteamWorkshopFileType
function USteamUGC:CreateItem(ConsumerAppID, FileType) end

---@param QueryType ESteamUGCQuery
---@param MatchingUGCTypeFileType ESteamUGCMatchingUGCType
---@param CreatorAppID int32
---@param ConsumerAppID int32
---@param Page int32
function USteamUGC:CreateQueryAllUGCRequest(QueryType, MatchingUGCTypeFileType, CreatorAppID, ConsumerAppID, Page) end

---@param PublishedFileIDs TArray<FPublishedFileId>
---@param NumPublishedFileIDs int32
function USteamUGC:CreateQueryUGCDetailsRequest(PublishedFileIDs, NumPublishedFileIDs) end

---@param AccountID FAccountID
---@param ListType ESteamUserUGCList
---@param MatchingUGCType ESteamUGCMatchingUGCType
---@param SortOrder ESteamUserUGCListSortOrder
---@param CreatorAppID int32
---@param ConsumerAppID int32
---@param Page int32
function USteamUGC:CreateQueryUserUGCRequest(AccountID, ListType, MatchingUGCType, SortOrder, CreatorAppID, ConsumerAppID, Page) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:DeleteItem(PublishedFileId) end

---@param PublishedFileId FPublishedFileId
---@param bHighPriority boolean
function USteamUGC:DownloadItem(PublishedFileId, bHighPriority) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:GetAppDependencies(PublishedFileId) end

---@param PublishedFileId FPublishedFileId
---@param BytesDownloaded int64
---@param BytesTotal int64
function USteamUGC:GetItemDownloadInfo(PublishedFileId, BytesDownloaded, BytesTotal) end

---@param PublishedFileId FPublishedFileId
---@param SizeOnDisk int64
---@param FolderName FString
---@param FolderSize int32
---@param Timestamp int32
function USteamUGC:GetItemInstallInfo(PublishedFileId, SizeOnDisk, FolderName, FolderSize, Timestamp) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:GetItemState(PublishedFileId) end

---@param Handle FUGCUpdateHandle
---@param BytesProcessed int64
---@param BytesTotal int64
function USteamUGC:GetItemUpdateProgress(Handle, BytesProcessed, BytesTotal) end

function USteamUGC:GetNumSubscribedItems() end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param PreviewIndex int32
---@param URLOrVideoID FString
---@param URLSize int32
---@param OriginalFileName FString
---@param OriginalFileNameSize int32
---@param PreviewType ESteamItemPreviewType
function USteamUGC:GetQueryUGCAdditionalPreview(Handle, Index, PreviewIndex, URLOrVideoID, URLSize, OriginalFileName, OriginalFileNameSize, PreviewType) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param PublishedFileIDs TArray<FPublishedFileId>
---@param MaxEntries int32
function USteamUGC:GetQueryUGCChildren(Handle, Index, PublishedFileIDs, MaxEntries) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param keyValueTagIndex int32
---@param Key FString
---@param KeySize int32
---@param Value FString
---@param ValueSize int32
function USteamUGC:GetQueryUGCKeyValueTag(Handle, Index, keyValueTagIndex, Key, KeySize, Value, ValueSize) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param MetaData FString
---@param Metadatasize int32
function USteamUGC:GetQueryUGCMetadata(Handle, Index, MetaData, Metadatasize) end

---@param Handle FUGCQueryHandle
---@param Index int32
function USteamUGC:GetQueryUGCNumAdditionalPreviews(Handle, Index) end

---@param Handle FUGCQueryHandle
---@param Index int32
function USteamUGC:GetQueryUGCNumKeyValueTags(Handle, Index) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param URL FString
---@param URLSize int32
function USteamUGC:GetQueryUGCPreviewURL(Handle, Index, URL, URLSize) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param Details FSteamUGCDetails
function USteamUGC:GetQueryUGCResult(Handle, Index, Details) end

---@param Handle FUGCQueryHandle
---@param Index int32
---@param StatType ESteamItemStatistic
---@param StatValue int64
function USteamUGC:GetQueryUGCStatistic(Handle, Index, StatType, StatValue) end

function USteamUGC:GetSteamUGC() end

---@param PublishedFileIDs TArray<FPublishedFileId>
---@param MaxEntries int32
function USteamUGC:GetSubscribedItems(PublishedFileIDs, MaxEntries) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:GetUserItemVote(PublishedFileId) end

---@param Handle FUGCQueryHandle
function USteamUGC:ReleaseQueryUGCRequest(Handle) end

---@param PublishedFileId FPublishedFileId
---@param AppID int32
function USteamUGC:RemoveAppDependency(PublishedFileId, AppID) end

---@param ParentPublishedFileID FPublishedFileId
---@param ChildPublishedFileID FPublishedFileId
function USteamUGC:RemoveDependency(ParentPublishedFileID, ChildPublishedFileID) end

---@param AppID int32
---@param PublishedFileId FPublishedFileId
function USteamUGC:RemoveItemFromFavorites(AppID, PublishedFileId) end

---@param Handle FUGCUpdateHandle
---@param Key FString
function USteamUGC:RemoveItemKeyValueTags(Handle, Key) end

---@param Handle FUGCUpdateHandle
---@param Index int32
function USteamUGC:RemoveItemPreview(Handle, Index) end

---@param Handle FUGCQueryHandle
function USteamUGC:SendQueryUGCRequest(Handle) end

---@param Handle FUGCQueryHandle
---@param MaxAgeSeconds int32
function USteamUGC:SetAllowCachedResponse(Handle, MaxAgeSeconds) end

---@param Handle FUGCQueryHandle
---@param MatchCloudFileName FString
function USteamUGC:SetCloudFileNameFilter(Handle, MatchCloudFileName) end

---@param Handle FUGCUpdateHandle
---@param ContentFolder FString
function USteamUGC:SetItemContent(Handle, ContentFolder) end

---@param Handle FUGCUpdateHandle
---@param Description FString
function USteamUGC:SetItemDescription(Handle, Description) end

---@param Handle FUGCUpdateHandle
---@param MetaData FString
function USteamUGC:SetItemMetadata(Handle, MetaData) end

---@param Handle FUGCUpdateHandle
---@param PreviewFile FString
function USteamUGC:SetItemPreview(Handle, PreviewFile) end

---@param UpdateHandle FUGCUpdateHandle
---@param Tags TArray<FString>
function USteamUGC:SetItemTags(UpdateHandle, Tags) end

---@param Handle FUGCUpdateHandle
---@param Title FString
function USteamUGC:SetItemTitle(Handle, Title) end

---@param Handle FUGCUpdateHandle
---@param Language FString
function USteamUGC:SetItemUpdateLanguage(Handle, Language) end

---@param Handle FUGCUpdateHandle
---@param Visibility ESteamRemoteStoragePublishedFileVisibility
function USteamUGC:SetItemVisibility(Handle, Visibility) end

---@param Handle FUGCQueryHandle
---@param Language FString
function USteamUGC:SetLanguage(Handle, Language) end

---@param Handle FUGCQueryHandle
---@param bMatchAnyTag boolean
function USteamUGC:SetMatchAnyTag(Handle, bMatchAnyTag) end

---@param Handle FUGCQueryHandle
---@param Days int32
function USteamUGC:SetRankedByTrendDays(Handle, Days) end

---@param Handle FUGCQueryHandle
---@param bReturnAdditionalPreviews boolean
function USteamUGC:SetReturnAdditionalPreviews(Handle, bReturnAdditionalPreviews) end

---@param Handle FUGCQueryHandle
---@param bReturnChildren boolean
function USteamUGC:SetReturnChildren(Handle, bReturnChildren) end

---@param Handle FUGCQueryHandle
---@param bReturnKeyValueTags boolean
function USteamUGC:SetReturnKeyValueTags(Handle, bReturnKeyValueTags) end

---@param Handle FUGCQueryHandle
---@param bReturnLongDescription boolean
function USteamUGC:SetReturnLongDescription(Handle, bReturnLongDescription) end

---@param Handle FUGCQueryHandle
---@param bReturnMetadata boolean
function USteamUGC:SetReturnMetadata(Handle, bReturnMetadata) end

---@param Handle FUGCQueryHandle
---@param bReturnOnlyIDs boolean
function USteamUGC:SetReturnOnlyIDs(Handle, bReturnOnlyIDs) end

---@param Handle FUGCQueryHandle
---@param Days int32
function USteamUGC:SetReturnPlaytimeStats(Handle, Days) end

---@param Handle FUGCQueryHandle
---@param bReturnTotalOnly boolean
function USteamUGC:SetReturnTotalOnly(Handle, bReturnTotalOnly) end

---@param Handle FUGCQueryHandle
---@param SearchText FString
function USteamUGC:SetSearchText(Handle, SearchText) end

---@param PublishedFileId FPublishedFileId
---@param bVoteUp boolean
function USteamUGC:SetUserItemVote(PublishedFileId, bVoteUp) end

---@param ConsumerAppID int32
---@param PublishedFileId FPublishedFileId
function USteamUGC:StartItemUpdate(ConsumerAppID, PublishedFileId) end

---@param Handle FUGCUpdateHandle
---@param ChangeNote FString
function USteamUGC:SubmitItemUpdate(Handle, ChangeNote) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:SubscribeItem(PublishedFileId) end

---@param bSuspend boolean
function USteamUGC:SuspendDownloads(bSuspend) end

---@param PublishedFileId FPublishedFileId
function USteamUGC:UnsubscribeItem(PublishedFileId) end

---@param Handle FUGCUpdateHandle
---@param Index int32
---@param PreviewFile FString
function USteamUGC:UpdateItemPreviewFile(Handle, Index, PreviewFile) end

---@param Handle FUGCUpdateHandle
---@param Index int32
---@param VideoID FString
function USteamUGC:UpdateItemPreviewVideo(Handle, Index, VideoID) end

---@param SteamID FSteamID
---@param IP FString
---@param Port int32
function USteamUser:AdvertiseGame(SteamID, IP, Port) end

function USteamUser:BIsBehindNAT() end

function USteamUser:BIsPhoneIdentifying() end

function USteamUser:BIsPhoneRequiringVerification() end

function USteamUser:BIsPhoneVerified() end

function USteamUser:BIsTwoFactorEnabled() end

function USteamUser:BLoggedOn() end

---@param Ticket TArray<uint8>
---@param SteamID FSteamID
function USteamUser:BeginAuthSession(Ticket, SteamID) end

---@param AuthTicket FHAuthTicket
function USteamUser:CancelAuthTicket(AuthTicket) end

---@param CompressedBuffer TArray<uint8>
---@param UncompressedBuffer TArray<uint8>
function USteamUser:DecompressVoice(CompressedBuffer, UncompressedBuffer) end

---@param SteamID FSteamID
function USteamUser:EndAuthSession(SteamID) end

---@param Ticket TArray<uint8>
function USteamUser:GetAuthSessionTicket(Ticket) end

---@param CompressedSize int32
function USteamUser:GetAvailableVoice(CompressedSize) end

function USteamUser:GetDurationControl() end

---@param Ticket TArray<uint8>
function USteamUser:GetEncryptedAppTicket(Ticket) end

---@param nSeries int32
---@param bFoil boolean
function USteamUser:GetGameBadgeLevel(nSeries, bFoil) end

function USteamUser:GetHSteamUser() end

function USteamUser:GetPlayerSteamLevel() end

function USteamUser:GetSteamID() end

function USteamUser:GetSteamUser() end

---@param VoiceData TArray<uint8>
function USteamUser:GetVoice(VoiceData) end

function USteamUser:GetVoiceOptimalSampleRate() end

function USteamUser:StartVoiceRecording() end

function USteamUser:StopVoiceRecording() end

---@param SteamID FSteamID
---@param AppID int32
function USteamUser:UserHasLicenseForApp(SteamID, AppID) end

---@param SteamLeaderboard FSteamLeaderboard
---@param UGC FUGCHandle
function USteamUserStats:AttachLeaderboardUGC(SteamLeaderboard, UGC) end

---@param Name FString
function USteamUserStats:ClearAchievement(Name) end

---@param SteamLeaderboard FSteamLeaderboard
---@param LeaderboardDataRequest ESteamLeaderboardDataRequest
---@param RangeStart int32
---@param RangeEnd int32
function USteamUserStats:DownloadLeaderboardEntries(SteamLeaderboard, LeaderboardDataRequest, RangeStart, RangeEnd) end

---@param LeaderboardName FString
function USteamUserStats:FindLeaderboard(LeaderboardName) end

---@param LeaderboardName FString
---@param LeaderboardSortMethod ESteamLeaderboardSortMethod
---@param LeaderboardDisplayType ESteamLeaderboardDisplayType
function USteamUserStats:FindOrCreateLeaderboard(LeaderboardName, LeaderboardSortMethod, LeaderboardDisplayType) end

---@param Name FString
---@param bAchieved boolean
function USteamUserStats:GetAchievement(Name, bAchieved) end

---@param Name FString
---@param Percent float
function USteamUserStats:GetAchievementAchievedPercent(Name, Percent) end

---@param Name FString
---@param bAchieved boolean
---@param UnlockTime int32
function USteamUserStats:GetAchievementAndUnlockTime(Name, bAchieved, UnlockTime) end

---@param Name FString
---@param Key FString
function USteamUserStats:GetAchievementDisplayAttribute(Name, Key) end

---@param Name FString
function USteamUserStats:GetAchievementIcon(Name) end

---@param AchievementIndex int32
function USteamUserStats:GetAchievementName(AchievementIndex) end

---@param SteamLeaderboardEntries FSteamLeaderboardEntries
---@param Index int32
---@param LeaderboardEntry FSteamLeaderboardEntry
---@param Details TArray<int32>
---@param DetailsMax int32
function USteamUserStats:GetDownloadedLeaderboardEntry(SteamLeaderboardEntries, Index, LeaderboardEntry, Details, DetailsMax) end

---@param StatName FString
---@param Data float
function USteamUserStats:GetGlobalStatFloat(StatName, Data) end

---@param StatName FString
---@param Data TArray<float>
---@param Size int32
function USteamUserStats:GetGlobalStatHistoryFloat(StatName, Data, Size) end

---@param StatName FString
---@param Data TArray<int64>
---@param Size int32
function USteamUserStats:GetGlobalStatHistoryInt64(StatName, Data, Size) end

---@param StatName FString
---@param Data int64
function USteamUserStats:GetGlobalStatInt64(StatName, Data) end

---@param SteamLeaderboard FSteamLeaderboard
function USteamUserStats:GetLeaderboardDisplayType(SteamLeaderboard) end

---@param SteamLeaderboard FSteamLeaderboard
function USteamUserStats:GetLeaderboardEntryCount(SteamLeaderboard) end

---@param SteamLeaderboard FSteamLeaderboard
function USteamUserStats:GetLeaderboardName(SteamLeaderboard) end

---@param SteamLeaderboard FSteamLeaderboard
function USteamUserStats:GetLeaderboardSortMethod(SteamLeaderboard) end

---@param Name FString
---@param Percent float
---@param bAchieved boolean
function USteamUserStats:GetMostAchievedAchievementInfo(Name, Percent, bAchieved) end

---@param IteratorPrevious int32
---@param Name FString
---@param Percent float
---@param bAchieved boolean
function USteamUserStats:GetNextMostAchievedAchievementInfo(IteratorPrevious, Name, Percent, bAchieved) end

function USteamUserStats:GetNumAchievements() end

function USteamUserStats:GetNumberOfCurrentPlayers() end

---@param Name FString
---@param Data float
function USteamUserStats:GetStatFloat(Name, Data) end

---@param Name FString
---@param Data int32
function USteamUserStats:GetStatInt32(Name, Data) end

function USteamUserStats:GetSteamUserStats() end

---@param SteamIDUser FSteamID
---@param Name FString
---@param bAchieved boolean
function USteamUserStats:GetUserAchievement(SteamIDUser, Name, bAchieved) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param bAchieved boolean
---@param UnlockTime int32
function USteamUserStats:GetUserAchievementAndUnlockTime(SteamIDUser, Name, bAchieved, UnlockTime) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data float
function USteamUserStats:GetUserStatFloat(SteamIDUser, Name, Data) end

---@param SteamIDUser FSteamID
---@param Name FString
---@param Data int32
function USteamUserStats:GetUserStatInt32(SteamIDUser, Name, Data) end

---@param Name FString
---@param CurProgress int32
---@param MaxProgress int32
function USteamUserStats:IndicateAchievementProgress(Name, CurProgress, MaxProgress) end

function USteamUserStats:RequestGlobalAchievementPercentages() end

---@param HistoryDays int32
function USteamUserStats:RequestGlobalStats(HistoryDays) end

---@param SteamIDUser FSteamID
function USteamUserStats:RequestUserStats(SteamIDUser) end

---@param bAchievementsToo boolean
function USteamUserStats:ResetAllStats(bAchievementsToo) end

---@param Name FString
function USteamUserStats:SetAchievement(Name) end

---@param Name FString
---@param Data float
function USteamUserStats:SetStatFloat(Name, Data) end

---@param Name FString
---@param Data int32
function USteamUserStats:SetStatInt32(Name, Data) end

function USteamUserStats:StoreStats() end

---@param Name FString
---@param CountThisSession float
---@param SessionLength float
function USteamUserStats:UpdateAvgRateStat(Name, CountThisSession, SessionLength) end

---@param SteamLeaderboard FSteamLeaderboard
---@param LeaderboardUploadScoreMethod ESteamLeaderboardUploadScoreMethod
---@param Score int32
---@param ScoreDetails TArray<int32>
function USteamUserStats:UploadLeaderboardScore(SteamLeaderboard, LeaderboardUploadScoreMethod, Score, ScoreDetails) end

function USteamUtils:BOverlayNeedsPresent() end

---@param SteamAPICall FSteamAPICall
function USteamUtils:GetAPICallFailureReason(SteamAPICall) end

function USteamUtils:GetAppID() end

function USteamUtils:GetConnectedUniverse() end

function USteamUtils:GetCurrentBatteryPower() end

---@param Text FString
function USteamUtils:GetEnteredGamepadTextInput(Text) end

function USteamUtils:GetEnteredGamepadTextLength() end

function USteamUtils:GetIPCCallCount() end

function USteamUtils:GetIPCountry() end

---@param Image int32
---@param Buffer TArray<uint8>
function USteamUtils:GetImageRGBA(Image, Buffer) end

---@param Image int32
---@param Size FIntPoint
function USteamUtils:GetImageSize(Image, Size) end

function USteamUtils:GetSecondsSinceAppActive() end

function USteamUtils:GetSecondsSinceComputerActive() end

function USteamUtils:GetServerRealTime() end

function USteamUtils:GetSteamUILanguage() end

function USteamUtils:GetSteamUtils() end

function USteamUtils:InitFilterText() end

---@param SteamAPICall FSteamAPICall
---@param bFailed boolean
function USteamUtils:IsAPICallCompleted(SteamAPICall, bFailed) end

function USteamUtils:IsOverlayEnabled() end

function USteamUtils:IsSteamChinaLauncher() end

function USteamUtils:IsSteamInBigPictureMode() end

function USteamUtils:IsSteamRunningInVR() end

function USteamUtils:IsSteamRunningOnSteamDeck() end

function USteamUtils:IsVRHeadsetStreamingEnabled() end

---@param Inset FIntPoint
function USteamUtils:SetOverlayNotificationInset(Inset) end

---@param NotificationPosition ESteamNotificationPosition
function USteamUtils:SetOverlayNotificationPosition(NotificationPosition) end

---@param bEnabled boolean
function USteamUtils:SetVRHeadsetStreamingEnabled(bEnabled) end

---@param KeyboardMode ESteamFloatingGamepadTextInputMode
---@param TextFieldXPosition int32
---@param TextFieldYPosition int32
---@param TextFieldWidth int32
---@param TextFieldHeight int32
function USteamUtils:ShowFloatingGamepadTextInput(KeyboardMode, TextFieldXPosition, TextFieldYPosition, TextFieldWidth, TextFieldHeight) end

---@param InputMode ESteamGamepadTextInputMode
---@param LineInputMode ESteamGamepadTextInputLineMode
---@param Description FString
---@param ExistingText FString
---@param CharMax int32
function USteamUtils:ShowGamepadTextInput(InputMode, LineInputMode, Description, ExistingText, CharMax) end

function USteamUtils:StartVRDashboard() end

---@param VideoAppID int32
function USteamVideo:GetOPFSettings(VideoAppID) end

---@param VideoAppID int32
---@param OPFString FString
function USteamVideo:GetOPFStringForApp(VideoAppID, OPFString) end

function USteamVideo:GetSteamVideo() end

---@param VideoAppID int32
function USteamVideo:GetVideoURL(VideoAppID) end

---@param NumViewers int32
function USteamVideo:IsBroadcasting(NumViewers) end
