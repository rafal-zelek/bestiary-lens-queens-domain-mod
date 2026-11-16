---@meta

---@enum ESteamAPICallFailure_
local ESteamAPICallFailure_ = {
    None = 0,
    SteamGone = 1,
    NetworkFailure = 2,
    InvalidHandle = 3,
    MismatchedCallback = 4,
    ESteamAPICallFailure_MAX = 5,
}

---@enum ESteamAudioPlaybackStatus
local ESteamAudioPlaybackStatus = {
    Undefined = 0,
    Playing = 1,
    Paused = 2,
    Idle = 3,
    ESteamAudioPlaybackStatus_MAX = 4,
}

---@enum ESteamAuthSessionResponse
local ESteamAuthSessionResponse = {
    OK = 0,
    UserNotConnectedToSteam = 1,
    NoLicenseOrExpired = 2,
    VACBanned = 3,
    LoggedInElseWhere = 4,
    VACCheckTimedOut = 5,
    AuthTicketCanceled = 6,
    AuthTicketInvalidAlreadyUsed = 7,
    AuthTicketInvalid = 8,
    PublisherIssuedBan = 9,
    ESteamAuthSessionResponse_MAX = 10,
}

---@enum ESteamAvatarSize
local ESteamAvatarSize = {
    Small = 0,
    Medium = 1,
    Large = 2,
    ESteamAvatarSize_MAX = 3,
}

---@enum ESteamBeginAuthSessionResult
local ESteamBeginAuthSessionResult = {
    OK = 0,
    InvalidTicket = 1,
    DuplicateRequest = 2,
    InvalidVersion = 3,
    GameMismatch = 4,
    ExpiredTicket = 5,
    ESteamBeginAuthSessionResult_MAX = 6,
}

---@enum ESteamChatEntryType
local ESteamChatEntryType = {
    Invalid = 0,
    ChatMessage = 1,
    Typing = 2,
    InviteGame = 3,
    Emote = 4,
    LeftConversation = 6,
    Entered = 7,
    WasKicked = 8,
    WasBanned = 9,
    Disconnected = 10,
    HistoricalChat = 11,
    LinkBlocked = 14,
    ESteamChatEntryType_MAX = 15,
}

---@enum ESteamChatMemberStateChange
local ESteamChatMemberStateChange = {
    Entered = 0,
    Left = 1,
    Disconnected = 2,
    Kicked = 3,
    Banned = 4,
    ESteamChatMemberStateChange_MAX = 5,
}

---@enum ESteamChatRoomEnterResponse
local ESteamChatRoomEnterResponse = {
    Unknown = 0,
    Success = 1,
    DoesntExist = 2,
    NotAllowed = 3,
    Full = 4,
    Error = 5,
    Banned = 6,
    Limited = 7,
    ClanDisabled = 8,
    CommunityBan = 9,
    MemberBlockedYou = 10,
    YouBlockedMember = 11,
    ESteamChatRoomEnterResponse_MAX = 12,
}

---@enum ESteamControllerLEDFlag_
local ESteamControllerLEDFlag_ = {
    SetColor = 0,
    RestoreUserDefault = 1,
    ESteamControllerLEDFlag_MAX = 2,
}

---@enum ESteamControllerPad_
local ESteamControllerPad_ = {
    Left = 0,
    Right = 1,
    ESteamControllerPad_MAX = 2,
}

---@enum ESteamControllerSourceMode
local ESteamControllerSourceMode = {
    None = 0,
    Dpad = 1,
    Buttons = 2,
    FourButtons = 3,
    AbsoluteMouse = 4,
    RelativeMouse = 5,
    JoystickMove = 6,
    JoystickMouse = 7,
    JoystickCamera = 8,
    ScrollWheel = 9,
    Trigger = 10,
    TouchMenu = 11,
    MouseJoystick = 12,
    MouseRegion = 13,
    RadialMenu = 14,
    SingleButton = 15,
    Switches = 16,
    ESteamControllerSourceMode_MAX = 17,
}

---@enum ESteamDenyReason
local ESteamDenyReason = {
    Invalid = 0,
    InvalidVersion = 1,
    Generic = 2,
    NotLoggedOn = 3,
    NoLicense = 4,
    Cheater = 5,
    LoggedInElseWhere = 6,
    UnknownText = 7,
    IncompatibleAnticheat = 8,
    MemoryCorruption = 9,
    IncompatibleSoftware = 10,
    SteamConnectionLost = 11,
    SteamConnectionError = 12,
    SteamResponseTimedOut = 13,
    SteamValidationStalled = 14,
    SteamOwnerLeftGuestUser = 15,
    ESteamDenyReason_MAX = 16,
}

---@enum ESteamDeviceFormFactor_
local ESteamDeviceFormFactor_ = {
    Unknown = 0,
    Phone = 1,
    Tablet = 2,
    Computer = 3,
    TV = 4,
    ESteamDeviceFormFactor_MAX = 5,
}

---@enum ESteamDurationControlNotification
local ESteamDurationControlNotification = {
    None = 0,
    OneHour = 1,
    ThreeHours = 2,
    HalfProgress = 3,
    NoProgress = 4,
    ESteamDurationControlNotification_MAX = 5,
}

---@enum ESteamDurationControlProgress
local ESteamDurationControlProgress = {
    Full = 0,
    Half = 1,
    None = 2,
    ExitSoon_3h = 3,
    ExitSoon_5h = 4,
    ExitSoon_Night = 5,
    ESteamDurationControlProgress_MAX = 6,
}

---@enum ESteamFailureType
local ESteamFailureType = {
    FlushedCallbackQueue = 0,
    PipeFail = 1,
    ESteamFailureType_MAX = 2,
}

---@enum ESteamFavoriteFlags
local ESteamFavoriteFlags = {
    None = 0,
    Favorite = 1,
    History = 2,
    ESteamFavoriteFlags_MAX = 3,
}

---@enum ESteamFloatingGamepadTextInputMode
local ESteamFloatingGamepadTextInputMode = {
    EFloatingGamepadTextInputModeModeSingleLine = 0,
    EFloatingGamepadTextInputModeModeMultipleLines = 1,
    EFloatingGamepadTextInputModeModeEmail = 2,
    EFloatingGamepadTextInputModeModeNumeric = 3,
    ESteamFloatingGamepadTextInputMode_MAX = 4,
}

---@enum ESteamFriendFlags
local ESteamFriendFlags = {
    Blocked = 0,
    FriendshipRequested = 1,
    Immediate = 2,
    ClanMember = 3,
    OnGameServer = 4,
    HasPlayedWith = 5,
    FriendOfFriend = 6,
    RequestingFriendship = 7,
    RequestingInfo = 8,
    Ignored = 9,
    IgnoredFriend = 10,
    Suggested = 11,
    ChatMember = 12,
    All = 13,
    ESteamFriendFlags_MAX = 14,
}

---@enum ESteamFriendRelationship
local ESteamFriendRelationship = {
    None = 0,
    Blocked = 1,
    RequestRecipient = 2,
    Friend = 3,
    RequestInitiator = 4,
    Ignored = 5,
    IgnoredFriend = 6,
    Max = 8,
}

---@enum ESteamGameOverlayTypes
local ESteamGameOverlayTypes = {
    Friends = 0,
    Community = 1,
    Players = 2,
    Settings = 3,
    OfficialGameGroup = 4,
    Stats = 5,
    Achievements = 6,
    ESteamGameOverlayTypes_MAX = 7,
}

---@enum ESteamGameUserOverlayTypes
local ESteamGameUserOverlayTypes = {
    SteamID = 0,
    Chat = 1,
    JoinTrade = 2,
    Stats = 3,
    Achievements = 4,
    FriendAdd = 5,
    FriendRemove = 6,
    FriendRequestAccept = 7,
    FriendRequestIgnore = 8,
    ESteamGameUserOverlayTypes_MAX = 9,
}

---@enum ESteamGamepadTextInputLineMode
local ESteamGamepadTextInputLineMode = {
    SingleLine = 0,
    MultipleLines = 1,
    ESteamGamepadTextInputLineMode_MAX = 2,
}

---@enum ESteamGamepadTextInputMode
local ESteamGamepadTextInputMode = {
    Normal = 0,
    Password = 1,
    ESteamGamepadTextInputMode_MAX = 2,
}

---@enum ESteamHTMLKeyModifiers
local ESteamHTMLKeyModifiers = {
    None = 0,
    AltDown = 1,
    CtrlDown = 2,
    ShiftDown = 4,
    ESteamHTMLKeyModifiers_MAX = 5,
}

---@enum ESteamHTMLMouseButton
local ESteamHTMLMouseButton = {
    Left = 0,
    Right = 1,
    Middle = 2,
    ESteamHTMLMouseButton_MAX = 3,
}

---@enum ESteamHTTPMethod
local ESteamHTTPMethod = {
    Invalid = 0,
    GET = 1,
    HEAD = 2,
    POST = 3,
    PUT = 4,
    DELETE = 5,
    OPTIONS = 6,
    PATCH = 7,
    ESteamHTTPMethod_MAX = 8,
}

---@enum ESteamHTTPStatus
local ESteamHTTPStatus = {
    e_Invalid = 0,
    e_100Continue = 100,
    e_101SwitchingProtocols = 101,
    e_200OK = 200,
    e_201Created = 201,
    e_202Accepted = 202,
    e_203NonAuthoritative = 203,
    e_204NoContent = 204,
    e_205ResetContent = 205,
    e_206PartialContent = 206,
    e_300MultipleChoices = 300,
    e_301MovedPermanently = 301,
    e_302Found = 302,
    e_303SeeOther = 303,
    e_304NotModified = 304,
    e_305UseProxy = 305,
    e_307TemporaryRedirect = 307,
    e_400BadRequest = 400,
    e_401Unauthorized = 401,
    e_402PaymentRequired = 402,
    e_403Forbidden = 403,
    e_404NotFound = 404,
    e_405MethodNotAllowed = 405,
    e_406NotAcceptable = 406,
    e_407ProxyAuthRequired = 407,
    e_408RequestTimeout = 408,
    e_409Conflict = 409,
    e_410Gone = 410,
    e_411LengthRequired = 411,
    e_412PreconditionFailed = 412,
    e_413RequestEntityTooLarge = 413,
    e_414RequestURITooLong = 414,
    e_415UnsupportedMediaType = 415,
    e_416RequestedRangeNotSatisfiable = 416,
    e_417ExpectationFailed = 417,
    e_4xxUnknown = 418,
    e_429TooManyRequests = 429,
    e_500InternalServerError = 500,
    e_501NotImplemented = 501,
    e_502BadGateway = 502,
    e_503ServiceUnavailable = 503,
    e_504GatewayTimeout = 504,
    e_505HTTPVersionNotSupported = 505,
    e_5xxUnknown = 599,
    e_MAX = 600,
}

---@enum ESteamInputActionOrigin
local ESteamInputActionOrigin = {
    None = 0,
    A = 1,
    B = 2,
    X = 3,
    Y = 4,
    LeftBumper = 5,
    RightBumper = 6,
    LeftGrip = 7,
    RightGrip = 8,
    Start = 9,
    Back = 10,
    LeftPad_Touch = 11,
    LeftPad_Swipe = 12,
    LeftPad_Click = 13,
    LeftPad_DPadNorth = 14,
    LeftPad_DPadSouth = 15,
    LeftPad_DPadWest = 16,
    LeftPad_DPadEast = 17,
    RightPad_Touch = 18,
    RightPad_Swipe = 19,
    RightPad_Click = 20,
    RightPad_DPadNorth = 21,
    RightPad_DPadSouth = 22,
    RightPad_DPadWest = 23,
    RightPad_DPadEast = 24,
    LeftTrigger_Pull = 25,
    LeftTrigger_Click = 26,
    RightTrigger_Pull = 27,
    RightTrigger_Click = 28,
    LeftStick_Move = 29,
    LeftStick_Click = 30,
    LeftStick_DPadNorth = 31,
    LeftStick_DPadSouth = 32,
    LeftStick_DPadWest = 33,
    LeftStick_DPadEast = 34,
    Gyro_Move = 35,
    Gyro_Pitch = 36,
    Gyro_Yaw = 37,
    Gyro_Roll = 38,
    SteamController_Reserved0 = 39,
    SteamController_Reserved1 = 40,
    SteamController_Reserved2 = 41,
    SteamController_Reserved3 = 42,
    SteamController_Reserved4 = 43,
    SteamController_Reserved5 = 44,
    SteamController_Reserved6 = 45,
    SteamController_Reserved7 = 46,
    SteamController_Reserved8 = 47,
    SteamController_Reserved9 = 48,
    SteamController_Reserved10 = 49,
    PS4_X = 50,
    PS4_Circle = 51,
    PS4_Triangle = 52,
    PS4_Square = 53,
    PS4_LeftBumper = 54,
    PS4_RightBumper = 55,
    PS4_Options = 56,
    PS4_Share = 57,
    PS4_LeftPad_Touch = 58,
    PS4_LeftPad_Swipe = 59,
    PS4_LeftPad_Click = 60,
    PS4_LeftPad_DPadNorth = 61,
    PS4_LeftPad_DPadSouth = 62,
    PS4_LeftPad_DPadWest = 63,
    PS4_LeftPad_DPadEast = 64,
    PS4_RightPad_Touch = 65,
    PS4_RightPad_Swipe = 66,
    PS4_RightPad_Click = 67,
    PS4_RightPad_DPadNorth = 68,
    PS4_RightPad_DPadSouth = 69,
    PS4_RightPad_DPadWest = 70,
    PS4_RightPad_DPadEast = 71,
    PS4_CenterPad_Touch = 72,
    PS4_CenterPad_Swipe = 73,
    PS4_CenterPad_Click = 74,
    PS4_CenterPad_DPadNorth = 75,
    PS4_CenterPad_DPadSouth = 76,
    PS4_CenterPad_DPadWest = 77,
    PS4_CenterPad_DPadEast = 78,
    PS4_LeftTrigger_Pull = 79,
    PS4_LeftTrigger_Click = 80,
    PS4_RightTrigger_Pull = 81,
    PS4_RightTrigger_Click = 82,
    PS4_LeftStick_Move = 83,
    PS4_LeftStick_Click = 84,
    PS4_LeftStick_DPadNorth = 85,
    PS4_LeftStick_DPadSouth = 86,
    PS4_LeftStick_DPadWest = 87,
    PS4_LeftStick_DPadEast = 88,
    PS4_RightStick_Move = 89,
    PS4_RightStick_Click = 90,
    PS4_RightStick_DPadNorth = 91,
    PS4_RightStick_DPadSouth = 92,
    PS4_RightStick_DPadWest = 93,
    PS4_RightStick_DPadEast = 94,
    PS4_DPad_North = 95,
    PS4_DPad_South = 96,
    PS4_DPad_West = 97,
    PS4_DPad_East = 98,
    PS4_Gyro_Move = 99,
    PS4_Gyro_Pitch = 100,
    PS4_Gyro_Yaw = 101,
    PS4_Gyro_Roll = 102,
    PS4_Reserved0 = 103,
    PS4_Reserved1 = 104,
    PS4_Reserved2 = 105,
    PS4_Reserved3 = 106,
    PS4_Reserved4 = 107,
    PS4_Reserved5 = 108,
    PS4_Reserved6 = 109,
    PS4_Reserved7 = 110,
    PS4_Reserved8 = 111,
    PS4_Reserved9 = 112,
    PS4_Reserved10 = 113,
    XBoxOne_A = 114,
    XBoxOne_B = 115,
    XBoxOne_X = 116,
    XBoxOne_Y = 117,
    XBoxOne_LeftBumper = 118,
    XBoxOne_RightBumper = 119,
    XBoxOne_Menu = 120,
    XBoxOne_View = 121,
    XBoxOne_LeftTrigger_Pull = 122,
    XBoxOne_LeftTrigger_Click = 123,
    XBoxOne_RightTrigger_Pull = 124,
    XBoxOne_RightTrigger_Click = 125,
    XBoxOne_LeftStick_Move = 126,
    XBoxOne_LeftStick_Click = 127,
    XBoxOne_LeftStick_DPadNorth = 128,
    XBoxOne_LeftStick_DPadSouth = 129,
    XBoxOne_LeftStick_DPadWest = 130,
    XBoxOne_LeftStick_DPadEast = 131,
    XBoxOne_RightStick_Move = 132,
    XBoxOne_RightStick_Click = 133,
    XBoxOne_RightStick_DPadNorth = 134,
    XBoxOne_RightStick_DPadSouth = 135,
    XBoxOne_RightStick_DPadWest = 136,
    XBoxOne_RightStick_DPadEast = 137,
    XBoxOne_DPad_North = 138,
    XBoxOne_DPad_South = 139,
    XBoxOne_DPad_West = 140,
    XBoxOne_DPad_East = 141,
    XBoxOne_Reserved0 = 142,
    XBoxOne_Reserved1 = 143,
    XBoxOne_Reserved2 = 144,
    XBoxOne_Reserved3 = 145,
    XBoxOne_Reserved4 = 146,
    XBoxOne_Reserved5 = 147,
    XBoxOne_Reserved6 = 148,
    XBoxOne_Reserved7 = 149,
    XBoxOne_Reserved8 = 150,
    XBoxOne_Reserved9 = 151,
    XBoxOne_Reserved10 = 152,
    XBox360_A = 153,
    XBox360_B = 154,
    XBox360_X = 155,
    XBox360_Y = 156,
    XBox360_LeftBumper = 157,
    XBox360_RightBumper = 158,
    XBox360_Start = 159,
    XBox360_Back = 160,
    XBox360_LeftTrigger_Pull = 161,
    XBox360_LeftTrigger_Click = 162,
    XBox360_RightTrigger_Pull = 163,
    XBox360_RightTrigger_Click = 164,
    XBox360_LeftStick_Move = 165,
    XBox360_LeftStick_Click = 166,
    XBox360_LeftStick_DPadNorth = 167,
    XBox360_LeftStick_DPadSouth = 168,
    XBox360_LeftStick_DPadWest = 169,
    XBox360_LeftStick_DPadEast = 170,
    XBox360_RightStick_Move = 171,
    XBox360_RightStick_Click = 172,
    XBox360_RightStick_DPadNorth = 173,
    XBox360_RightStick_DPadSouth = 174,
    XBox360_RightStick_DPadWest = 175,
    XBox360_RightStick_DPadEast = 176,
    XBox360_DPad_North = 177,
    XBox360_DPad_South = 178,
    XBox360_DPad_West = 179,
    XBox360_DPad_East = 180,
    XBox360_Reserved0 = 181,
    XBox360_Reserved1 = 182,
    XBox360_Reserved2 = 183,
    XBox360_Reserved3 = 184,
    XBox360_Reserved4 = 185,
    XBox360_Reserved5 = 186,
    XBox360_Reserved6 = 187,
    XBox360_Reserved7 = 188,
    XBox360_Reserved8 = 189,
    XBox360_Reserved9 = 190,
    XBox360_Reserved10 = 191,
    Switch_A = 192,
    Switch_B = 193,
    Switch_X = 194,
    Switch_Y = 195,
    Switch_LeftBumper = 196,
    Switch_RightBumper = 197,
    Switch_Plus = 198,
    Switch_Minus = 199,
    Switch_Capture = 200,
    Switch_LeftTrigger_Pull = 201,
    Switch_LeftTrigger_Click = 202,
    Switch_RightTrigger_Pull = 203,
    Switch_RightTrigger_Click = 204,
    Switch_LeftStick_Move = 205,
    Switch_LeftStick_Click = 206,
    Switch_LeftStick_DPadNorth = 207,
    Switch_LeftStick_DPadSouth = 208,
    Switch_LeftStick_DPadWest = 209,
    Switch_LeftStick_DPadEast = 210,
    Switch_RightStick_Move = 211,
    Switch_RightStick_Click = 212,
    Switch_RightStick_DPadNorth = 213,
    Switch_RightStick_DPadSouth = 214,
    Switch_RightStick_DPadWest = 215,
    Switch_RightStick_DPadEast = 216,
    Switch_DPad_North = 217,
    Switch_DPad_South = 218,
    Switch_DPad_West = 219,
    Switch_DPad_East = 220,
    SwitchProGyro_Move = 221,
    SwitchProGyro_Pitch = 222,
    SwitchProGyro_Yaw = 223,
    SwitchProGyro_Roll = 224,
    Switch_Reserved0 = 225,
    Switch_Reserved1 = 226,
    Switch_Reserved2 = 227,
    Switch_Reserved3 = 228,
    Switch_Reserved4 = 229,
    Switch_Reserved5 = 230,
    Switch_Reserved6 = 231,
    Switch_Reserved7 = 232,
    Switch_Reserved8 = 233,
    Switch_Reserved9 = 234,
    Switch_Reserved10 = 235,
    Count = 236,
    ESteamInputActionOrigin_MAX = 237,
}

---@enum ESteamInputGlyphSize_BP
local ESteamInputGlyphSize_BP = {
    ESteamInputGlyphSize_Small = 0,
    ESteamInputGlyphSize_Medium = 1,
    ESteamInputGlyphSize_Large = 2,
    ESteamInputGlyphSize_Count = 3,
    ESteamInputGlyphSize_MAX = 4,
}

---@enum ESteamInputType_
local ESteamInputType_ = {
    Unknown = 0,
    SteamController = 1,
    XBox360Controller = 2,
    XBoxOneController = 3,
    GenericXInput = 4,
    PS4Controller = 5,
    AppleMFiController = 6,
    AndroidController = 7,
    SwitchJoyConPair = 8,
    SwitchJoyConSingle = 9,
    SwitchProController = 10,
    MobileTouch = 11,
    PS3Controller = 12,
    Count = 13,
    ESteamInputType_MAX = 14,
}

---@enum ESteamItemFlags_
local ESteamItemFlags_ = {
    NoTrade = 0,
    ItemRemoved = 8,
    ItemConsumed = 9,
    ESteamItemFlags_MAX = 10,
}

---@enum ESteamItemPreviewType
local ESteamItemPreviewType = {
    Image = 0,
    YouTubeVideo = 1,
    Sketchfab = 2,
    EnvironmentMap_HorizontalCross = 3,
    EnvironmentMap_LatLong = 4,
    ReservedMax = 255,
    ESteamItemPreviewType_MAX = 256,
}

---@enum ESteamItemStatistic
local ESteamItemStatistic = {
    NumSubscriptions = 0,
    NumFavorites = 1,
    NumFollowers = 2,
    NumUniqueSubscriptions = 3,
    NumUniqueFavorites = 4,
    NumUniqueFollowers = 5,
    NumUniqueWebsiteViews = 6,
    ReportScore = 7,
    NumSecondsPlayed = 8,
    NumPlaytimeSessions = 9,
    NumComments = 10,
    NumSecondsPlayedDuringTimePeriod = 11,
    NumPlaytimeSessionsDuringTimePeriod = 12,
    ESteamItemStatistic_MAX = 13,
}

---@enum ESteamItemUpdateStatus
local ESteamItemUpdateStatus = {
    Invalid = 0,
    PreparingConfig = 1,
    PreparingContent = 2,
    UploadingContent = 3,
    UploadingPreviewFile = 4,
    CommittingChanges = 5,
    ESteamItemUpdateStatus_MAX = 6,
}

---@enum ESteamLeaderboardDataRequest
local ESteamLeaderboardDataRequest = {
    Global = 0,
    GlobalAroundUser = 1,
    Friends = 2,
    Users = 3,
    ESteamLeaderboardDataRequest_MAX = 4,
}

---@enum ESteamLeaderboardDisplayType
local ESteamLeaderboardDisplayType = {
    None = 0,
    Numeric = 1,
    TimeSeconds = 2,
    TimeMilliSeconds = 3,
    ESteamLeaderboardDisplayType_MAX = 4,
}

---@enum ESteamLeaderboardSortMethod
local ESteamLeaderboardSortMethod = {
    None = 0,
    Ascending = 1,
    Descending = 2,
    ESteamLeaderboardSortMethod_MAX = 3,
}

---@enum ESteamLeaderboardUploadScoreMethod
local ESteamLeaderboardUploadScoreMethod = {
    None = 0,
    KeepBest = 1,
    ForceUpdate = 2,
    ESteamLeaderboardUploadScoreMethod_MAX = 3,
}

---@enum ESteamLobbyComparison
local ESteamLobbyComparison = {
    EqualToOrLessThan = 0,
    LessThan = 1,
    Equal = 2,
    GreaterThan = 3,
    EqualToOrGreaterThan = 4,
    NotEqual = 5,
    ESteamLobbyComparison_MAX = 6,
}

---@enum ESteamLobbyDistanceFilter
local ESteamLobbyDistanceFilter = {
    Close = 0,
    Default = 1,
    Far = 2,
    Worldwide = 3,
    ESteamLobbyDistanceFilter_MAX = 4,
}

---@enum ESteamLobbyType
local ESteamLobbyType = {
    Private = 0,
    FriendsOnly = 1,
    Public = 2,
    Invisible = 3,
    ESteamLobbyType_MAX = 4,
}

---@enum ESteamMouseCursor
local ESteamMouseCursor = {
    dc_user = 0,
    dc_none = 1,
    dc_arrow = 2,
    dc_ibeam = 3,
    dc_hourglass = 4,
    dc_waitarrow = 5,
    dc_crosshair = 6,
    dc_up = 7,
    dc_sizenw = 8,
    dc_sizese = 9,
    dc_sizene = 10,
    dc_sizesw = 11,
    dc_sizew = 12,
    dc_sizee = 13,
    dc_sizen = 14,
    dc_sizes = 15,
    dc_sizewe = 16,
    dc_sizens = 17,
    dc_sizeall = 18,
    dc_no = 19,
    dc_hand = 20,
    dc_blank = 21,
    dc_middle_pan = 22,
    dc_north_pan = 23,
    dc_north_east_pan = 24,
    dc_east_pan = 25,
    dc_south_east_pan = 26,
    dc_south_pan = 27,
    dc_south_west_pan = 28,
    dc_west_pan = 29,
    dc_north_west_pan = 30,
    dc_alias = 31,
    dc_cell = 32,
    dc_colresize = 33,
    dc_copycur = 34,
    dc_verticaltext = 35,
    dc_rowresize = 36,
    dc_zoomin = 37,
    dc_zoomout = 38,
    dc_help = 39,
    dc_custom = 40,
    dc_last = 41,
    dc_MAX = 42,
}

---@enum ESteamNotificationPosition
local ESteamNotificationPosition = {
    TopLeft = 0,
    TopRight = 1,
    BottomLeft = 2,
    BottomRight = 3,
    ESteamNotificationPosition_MAX = 4,
}

---@enum ESteamOverlayToStoreFlag
local ESteamOverlayToStoreFlag = {
    None = 0,
    AddToCart = 1,
    AddToCartAndShow = 2,
    ESteamOverlayToStoreFlag_MAX = 3,
}

---@enum ESteamPartyBeaconLocation
local ESteamPartyBeaconLocation = {
    Invalid = 0,
    ChatGroup = 1,
    Max = 2,
}

---@enum ESteamPartyBeaconLocationData_
local ESteamPartyBeaconLocationData_ = {
    Invalid = 0,
    Name = 1,
    IconURLSmall = 2,
    IconURLMedium = 3,
    IconURLLarge = 4,
    ESteamPartyBeaconLocationData_MAX = 5,
}

---@enum ESteamPersonaChange
local ESteamPersonaChange = {
    None = 0,
    ChangeName = 1,
    ChangeStatus = 2,
    ChangeComeOnline = 3,
    ChangeGoneOffline = 4,
    ChangeGamePlayed = 5,
    ChangeGameServer = 6,
    ChangeAvatar = 7,
    ChangeJoinedSource = 8,
    ChangeLeftSource = 9,
    ChangeRelationshipChanged = 10,
    ChangeNameFirstSet = 11,
    ChangeFacebookInfo = 12,
    ChangeNickname = 13,
    ChangeSteamLevel = 14,
    ChangeErr = 15,
    ESteamPersonaChange_MAX = 16,
}

---@enum ESteamPersonaState
local ESteamPersonaState = {
    Offline = 0,
    Online = 1,
    Busy = 2,
    Away = 3,
    Snooze = 4,
    LookingToTrade = 5,
    LookingToPlay = 6,
    Max = 7,
}

---@enum ESteamRemoteStoragePlatform
local ESteamRemoteStoragePlatform = {
    Windows = 0,
    OSX = 1,
    PS3 = 2,
    Linux = 3,
    Reserved = 4,
    All = 5,
    ESteamRemoteStoragePlatform_MAX = 6,
}

---@enum ESteamRemoteStoragePublishedFileVisibility
local ESteamRemoteStoragePublishedFileVisibility = {
    Public = 0,
    FriendsOnly = 1,
    Private = 2,
    ESteamRemoteStoragePublishedFileVisibility_MAX = 3,
}

---@enum ESteamResult
local ESteamResult = {
    None = 0,
    OK = 1,
    Fail = 2,
    NoConnection = 3,
    InvalidPassword = 5,
    LoggedInElsewhere = 6,
    InvalidProtocolVer = 7,
    InvalidParam = 8,
    FileNotFound = 9,
    Busy = 10,
    InvalidState = 11,
    InvalidName = 12,
    InvalidEmail = 13,
    DuplicateName = 14,
    AccessDenied = 15,
    Timeout = 16,
    Banned = 17,
    AccountNotFound = 18,
    InvalidSteamID = 19,
    ServiceUnavailable = 20,
    NotLoggedOn = 21,
    Pending = 22,
    EncryptionFailure = 23,
    InsufficientPrivilege = 24,
    LimitExceeded = 25,
    Revoked = 26,
    Expired = 27,
    AlreadyRedeemed = 28,
    DuplicateRequest = 29,
    AlreadyOwned = 30,
    IPNotFound = 31,
    PersistFailed = 32,
    LockingFailed = 33,
    LogonSessionReplaced = 34,
    ConnectFailed = 35,
    HandshakeFailed = 36,
    IOFailure = 37,
    RemoteDisconnect = 38,
    ShoppingCartNotFound = 39,
    Blocked = 40,
    Ignored = 41,
    NoMatch = 42,
    AccountDisabled = 43,
    ServiceReadOnly = 44,
    AccountNotFeatured = 45,
    AdministratorOK = 46,
    ContentVersion = 47,
    TryAnotherCM = 48,
    PasswordRequiredToKickSession = 49,
    AlreadyLoggedInElsewhere = 50,
    Suspended = 51,
    Cancelled = 52,
    DataCorruption = 53,
    DiskFull = 54,
    RemoteCallFailed = 55,
    PasswordUnset = 56,
    ExternalAccountUnlinked = 57,
    PSNTicketInvalid = 58,
    ExternalAccountAlreadyLinked = 59,
    RemoteFileConflict = 60,
    IllegalPassword = 61,
    SameAsPreviousValue = 62,
    AccountLogonDenied = 63,
    CannotUseOldPassword = 64,
    InvalidLoginAuthCode = 65,
    AccountLogonDeniedNoMail = 66,
    HardwareNotCapableOfIPT = 67,
    IPTInitError = 68,
    ParentalControlRestricted = 69,
    FacebookQueryError = 70,
    ExpiredLoginAuthCode = 71,
    IPLoginRestrictionFailed = 72,
    AccountLockedDown = 73,
    AccountLogonDeniedVerifiedEmailRequired = 74,
    NoMatchingURL = 75,
    BadResponse = 76,
    RequirePasswordReEntry = 77,
    ValueOutOfRange = 78,
    UnexpectedError = 79,
    Disabled = 80,
    InvalidCEGSubmission = 81,
    RestrictedDevice = 82,
    RegionLocked = 83,
    RateLimitExceeded = 84,
    AccountLoginDeniedNeedTwoFactor = 85,
    ItemDeleted = 86,
    AccountLoginDeniedThrottle = 87,
    TwoFactorCodeMismatch = 88,
    TwoFactorActivationCodeMismatch = 89,
    AccountAssociatedToMultiplePartners = 90,
    NotModified = 91,
    NoMobileDevice = 92,
    TimeNotSynced = 93,
    SmsCodeFailed = 94,
    AccountLimitExceeded = 95,
    AccountActivityLimitExceeded = 96,
    PhoneActivityLimitExceeded = 97,
    RefundToWallet = 98,
    EmailSendFailure = 99,
    NotSettled = 100,
    NeedCaptcha = 101,
    GSLTDenied = 102,
    GSOwnerDenied = 103,
    InvalidItemType = 104,
    IPBanned = 105,
    GSLTExpired = 106,
    InsufficientFunds = 107,
    TooManyPending = 108,
    ESteamResult_MAX = 109,
}

---@enum ESteamTextFilteringContext
local ESteamTextFilteringContext = {
    Unknown = 0,
    GameContent = 1,
    Chat = 2,
    Name = 3,
    ESteamTextFilteringContext_MAX = 4,
}

---@enum ESteamUGCMatchingUGCType
local ESteamUGCMatchingUGCType = {
    Items = 0,
    Items_Mtx = 1,
    Items_ReadyToUse = 2,
    Collections = 3,
    Artwork = 4,
    Videos = 5,
    Screenshots = 6,
    AllGuides = 7,
    WebGuides = 8,
    IntegratedGuides = 9,
    UsableInGame = 10,
    ControllerBindings = 11,
    GameManagedItems = 12,
    All = 254,
    ESteamUGCMatchingUGCType_MAX = 255,
}

---@enum ESteamUGCQuery
local ESteamUGCQuery = {
    RankedByVote = 0,
    RankedByPublicationDate = 1,
    AcceptedForGameRankedByAcceptanceDate = 2,
    RankedByTrend = 3,
    FavoritedByFriendsRankedByPublicationDate = 4,
    CreatedByFriendsRankedByPublicationDate = 5,
    RankedByNumTimesReported = 6,
    CreatedByFollowedUsersRankedByPublicationDate = 7,
    NotYetRated = 8,
    RankedByTotalVotesAsc = 9,
    RankedByVotesUp = 10,
    RankedByTextSearch = 11,
    RankedByTotalUniqueSubscriptions = 12,
    RankedByPlaytimeTrend = 13,
    RankedByTotalPlaytime = 14,
    RankedByAveragePlaytimeTrend = 15,
    RankedByLifetimeAveragePlaytime = 16,
    RankedByPlaytimeSessionsTrend = 17,
    RankedByLifetimePlaytimeSessions = 18,
    ESteamUGCQuery_MAX = 19,
}

---@enum ESteamUniverse
local ESteamUniverse = {
    Invalid = 0,
    Public = 1,
    Beta = 2,
    Internal = 3,
    Dev = 4,
    Max = 5,
}

---@enum ESteamUserHasLicenseForAppResult
local ESteamUserHasLicenseForAppResult = {
    HasLicense = 0,
    DoesNotHaveLicense = 1,
    NoAuth = 2,
    ESteamUserHasLicenseForAppResult_MAX = 3,
}

---@enum ESteamUserRestrictions
local ESteamUserRestrictions = {
    Unknown = 0,
    AnyChat = 1,
    VoiceChat = 2,
    GroupChat = 3,
    Rating = 4,
    GameInvites = 5,
    Trading = 6,
    ESteamUserRestrictions_MAX = 7,
}

---@enum ESteamUserUGCList
local ESteamUserUGCList = {
    Published = 0,
    VotedOn = 1,
    VotedUp = 2,
    VotedDown = 3,
    WillVoteLater = 4,
    Favorited = 5,
    Subscribed = 6,
    UsedOrPlayed = 7,
    Followed = 8,
    ESteamUserUGCList_MAX = 9,
}

---@enum ESteamUserUGCListSortOrder
local ESteamUserUGCListSortOrder = {
    CreationOrderDesc = 0,
    CreationOrderAsc = 1,
    TitleAsc = 2,
    LastUpdatedDesc = 3,
    SubscriptionDateDesc = 4,
    VoteScoreDesc = 5,
    ForModeration = 6,
    ESteamUserUGCListSortOrder_MAX = 7,
}

---@enum ESteamVRScreenshotType
local ESteamVRScreenshotType = {
    None = 0,
    Mono = 1,
    Stereo = 2,
    MonoCubemap = 3,
    MonoPanorama = 4,
    StereoPanorama = 5,
    ESteamVRScreenshotType_MAX = 6,
}

---@enum ESteamVoiceResult
local ESteamVoiceResult = {
    OK = 0,
    NotInitialized = 1,
    NotRecording = 2,
    NoData = 3,
    BufferTooSmall = 4,
    DataCorrupted = 5,
    Restricted = 6,
    UnsupportedCodec = 7,
    ReceiverOutOfDate = 8,
    ReceiverDidNotAnswer = 9,
    ESteamVoiceResult_MAX = 10,
}

---@enum ESteamWorkshopFileType
local ESteamWorkshopFileType = {
    First = 0,
    Community = 0,
    Microtransaction = 1,
    Collection = 2,
    Art = 3,
    Video = 4,
    Screenshot = 5,
    Game = 6,
    Software = 7,
    Concept = 8,
    WebGuide = 9,
    IntegratedGuide = 10,
    Merch = 11,
    ControllerBinding = 12,
    SteamworksAccessInvite = 13,
    SteamVideo = 14,
    GameManagedItem = 15,
    Max = 16,
}

---@enum ESteamXboxOrigin
local ESteamXboxOrigin = {
    A = 0,
    B = 1,
    X = 2,
    Y = 3,
    LeftBumper = 4,
    RightBumper = 5,
    Menu = 6,
    View = 7,
    LeftTrigger_Pull = 8,
    LeftTrigger_Click = 9,
    RightTrigger_Pull = 10,
    RightTrigger_Click = 11,
    LeftStick_Move = 12,
    LeftStick_Click = 13,
    LeftStick_DPadNorth = 14,
    LeftStick_DPadSouth = 15,
    LeftStick_DPadWest = 16,
    LeftStick_DPadEast = 17,
    RightStick_Move = 18,
    RightStick_Click = 19,
    RightStick_DPadNorth = 20,
    RightStick_DPadSouth = 21,
    RightStick_DPadWest = 22,
    RightStick_DPadEast = 23,
    DPad_North = 24,
    DPad_South = 25,
    DPad_West = 26,
    DPad_East = 27,
    Count = 28,
    ESteamXboxOrigin_MAX = 29,
}
