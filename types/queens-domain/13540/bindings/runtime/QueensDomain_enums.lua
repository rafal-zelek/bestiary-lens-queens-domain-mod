---@meta

---@enum EBM_BoneForwardAxis
local EBM_BoneForwardAxis = {
    X_Positive = 0,
    X_Negative = 1,
    Y_Positive = 2,
    Y_Negative = 3,
    Z_Positive = 4,
    Z_Negative = 5,
    EBM_MAX = 6,
}

---@enum EBM_PlanarConstraint
local EBM_PlanarConstraint = {
    None = 0,
    X = 1,
    Y = 2,
    Z = 3,
    EBM_MAX = 4,
}

---@enum EEnemyStatusType
local EEnemyStatusType = {
    EST_None = 0,
    EST_Poison = 1,
    EST_Heavy = 2,
    EST_Weaken = 3,
    EST_Sticky = 4,
    EST_Disease = 5,
    EST_MagicFire = 6,
    EST_MagicPoison = 7,
    EST_Binding = 8,
    EST_Wound = 9,
    EST_MAX = 10,
}

---@enum EFS_AttackAggroNoise
local EFS_AttackAggroNoise = {
    EAAN_None = 0,
    EAAN_Small = 1,
    EAAN_Medium = 2,
    EAAN_Large = 3,
    EAAN_MAX = 4,
}

---@enum EFS_ChallengeMode
local EFS_ChallengeMode = {
    Manual = 0,
    Stat_AutoInventory = 1,
    Stat_AutoNSD = 2,
    Stat_Manual = 3,
    Stat_AutoItemTag = 4,
    EFS_MAX = 5,
}

---@enum EFS_Comparator
local EFS_Comparator = {
    EC_Equal = 0,
    EC_NotEqual = 1,
    EC_LessThan = 2,
    EC_LessThanOrEqual = 3,
    EC_GreaterThan = 4,
    EC_GreaterThanOrEqual = 5,
    EC_MAX = 6,
}

---@enum EFS_DialogueConditionBehaviour
local EFS_DialogueConditionBehaviour = {
    EDCB_ShowOR = 0,
    EDCB_ShowAND = 1,
    EDCB_HideOR = 2,
    EDCB_HideAND = 3,
    EDCB_MAX = 4,
}

---@enum EFS_DialogueConditionType
local EFS_DialogueConditionType = {
    EDCT_NamedSaveData = 0,
    EDCT_Inventory = 1,
    EDCT_MAX = 2,
}

---@enum EFS_EnemyActionCancelReason
local EFS_EnemyActionCancelReason = {
    EEAR_Staggered = 0,
    EEAR_Died = 1,
    EEAR_Behaviour = 2,
    EEAR_Interrupted = 3,
    EEAR_MAX = 4,
}

---@enum EFS_EnemyActionResponse
local EFS_EnemyActionResponse = {
    EEAR_Finished = 0,
    EEAR_Cancelled = 1,
    EEAR_MAX = 2,
}

---@enum EFS_LocationType
local EFS_LocationType = {
    FSLT_SavePoint = 0,
    FSLT_Teleporter = 1,
    FSLT_SpecialTeleport = 2,
    FSLT_MAX = 3,
}

---@enum EFS_NamedSaveDataChangeMode
local EFS_NamedSaveDataChangeMode = {
    ENSDCM_Set = 0,
    ENSDCM_Add = 1,
    ENSDCM_MAX = 2,
}

---@enum EFS_PickupDifficulty
local EFS_PickupDifficulty = {
    EFSPD_MainPath = 0,
    EFSPD_OutOfView = 1,
    EFSPD_Hidden = 2,
    EFSPD_AccessibleLater = 3,
    EFSPD_MAX = 4,
}

---@enum EFS_PickupLocation
local EFS_PickupLocation = {
    EFSPL_GreenRuins = 0,
    EFSPL_AquaRuins = 1,
    EFSPL_Library = 2,
    EFSPL_Mausoleum = 3,
    EFSPL_AutumnIsland = 4,
    EFSPL_Castle = 5,
    EFSPL_SecretZones = 6,
    EFSPL_MerchantIsland = 7,
    EFSPL_SZForest = 8,
    EFSPL_SZ_Swamp = 9,
    EFSPL_SZ_Prison = 10,
    EFSPL_SZ_Library = 11,
    EFSPL_SZ_GRMA = 12,
    EFSPL_SZ_AquaRuins = 13,
    EFSPL_SZ_RecordOfSin = 14,
    EFSPL_StoneGarden = 15,
    EFSPL_MAX = 16,
}

---@enum EFS_SpawnerUpdateMode
local EFS_SpawnerUpdateMode = {
    ESUM_CheckHeartbeat = 0,
    ESUM_CheckRespawn = 1,
    ESUM_ActivateEnemy = 2,
    ESUM_MAX = 3,
}

---@enum EFS_WaitForLevelManagementMode
local EFS_WaitForLevelManagementMode = {
    WFLM_Run = 0,
    WFLM_Cancel = 1,
    WFLM_MAX = 2,
}

---@enum EFS_WeaponDamageTypeDisplay
local EFS_WeaponDamageTypeDisplay = {
    EWDTD_Slash = 0,
    EWDTD_Pierce = 1,
    EWDTD_Impact = 2,
    EWDTD_Absolute = 3,
    EWDTD_PierceOrSlash = 4,
    EWDTD_SlashOrImpact = 5,
    EWDTD_SlashOrAbsolute = 6,
    EWDTD_PierceOrAbsolute = 7,
    EWDTD_ImpactOrAbsolute = 8,
    EWDTD_PierceAndSlash = 9,
    EWDTD_SlashAndImpact = 10,
    EWDTD_PierceAndImpact = 12,
    EWDTD_SlashOrMagicFire = 13,
    EWDTD_PierceOrStatus = 14,
    EWDTD_AbsoluteOrStatus = 15,
    EWDTD_MagicFire = 16,
    EWDTD_PierceAndPoison = 17,
    EWDTD_SlashOrDisease = 18,
    EWDTD_SlashOrParalyze = 19,
    EWDTD_SlashOrWeaken = 20,
    EWDTD_Weaken = 21,
    EWDTD_Poison = 22,
    EWDTD_Heavy = 23,
    EWDTD_Paralyze = 24,
    EWDTD_Disease = 25,
    EWDTD_Status = 26,
    EWDTD_PierceOrImpact = 27,
    EWDTD_MagicFireParalysis = 28,
    EWDTD_SlashAndHeavy = 29,
    EWDTD_MAX = 30,
}

---@enum EFS_WeaponRange
local EFS_WeaponRange = {
    EWR_VeryShort = 1,
    EWR_Short = 2,
    EWR_SlightlyShort = 3,
    EWR_Normal = 0,
    EWR_SlightlyLong = 4,
    EWR_Long = 5,
    EWR_VeryLong = 6,
    EWR_ExtremelyLong = 7,
    EWR_MAX = 8,
}

---@enum EFS_WeaponWidth
local EFS_WeaponWidth = {
    EWR_Normal = 0,
    EWR_Narrow = 1,
    EWR_Big = 2,
    EWR_Wide = 3,
    EWR_MAX = 4,
}

---@enum EPlatform
local EPlatform = {
    PCSteam = 0,
    PCWinGDK = 1,
    PS5 = 2,
    XSX = 3,
    Switch = 4,
    Switch2 = 5,
    EPlatform_MAX = 6,
}
