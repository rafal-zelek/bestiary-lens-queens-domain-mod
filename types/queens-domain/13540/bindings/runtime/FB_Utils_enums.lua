---@meta

---@enum EFB_CancellableDelayMode
local EFB_CancellableDelayMode = {
    CD_Run = 0,
    CD_Cancel = 1,
    CD_MAX = 2,
}

---@enum EFB_CooldownReturn
local EFB_CooldownReturn = {
    Then = 0,
    CooledDown = 1,
    RunStillCoolingDown = 2,
    EFB_MAX = 3,
}

---@enum EFB_QuickTLMode
local EFB_QuickTLMode = {
    QTL_Play = 0,
    QTL_Reverse = 1,
    QTL_PlayFromStart = 2,
    QTL_ReverseFromEnd = 3,
    QTL_Stop = 4,
    QTL_MAX = 5,
}

---@enum EFB_QuickTLReturn
local EFB_QuickTLReturn = {
    Update = 0,
    FinishedForward = 1,
    FinishedReverse = 2,
    EFB_MAX = 3,
}

---@enum EFS_TraceType
local EFS_TraceType = {
    ETT_StartAndEnd = 0,
    ETT_StartAndOffset = 1,
    ETT_MAX = 2,
}

---@enum EFastValidReturn
local EFastValidReturn = {
    Valid = 0,
    Invalid = 1,
    EFastValidReturn_MAX = 2,
}
