---@meta

---@class AMechaKnight_DualAxe_Rusty_C : AMechaKnight_DualAxe_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MechaKnight_Robo_JetSounds UAudioComponent
---@field Thruster_Back UParticleSystemComponent
---@field Thruster_R UParticleSystemComponent
---@field Thruster_L UParticleSystemComponent
---@field ThrusterVal float
local AMechaKnight_DualAxe_Rusty_C = {}

---@param Damaged boolean
function AMechaKnight_DualAxe_Rusty_C:ActivateTrap(Damaged) end

function AMechaKnight_DualAxe_Rusty_C:CancelAxeThrowAttack() end

function AMechaKnight_DualAxe_Rusty_C:DoAxeThrowAttack() end

function AMechaKnight_DualAxe_Rusty_C:DoAxeThrowMoveSlam() end

function AMechaKnight_DualAxe_Rusty_C:DoNextAxeThrow() end

function AMechaKnight_DualAxe_Rusty_C:EndAxeThrowMoveSmoothly() end

---@param Mode EnemyBehaviourMode::Type
function AMechaKnight_DualAxe_Rusty_C:EnterTrapMode(Mode) end

---@param EntryPoint int32
function AMechaKnight_DualAxe_Rusty_C:ExecuteUbergraph_MechaKnight_DualAxe_Rusty(EntryPoint) end

---@param R boolean
function AMechaKnight_DualAxe_Rusty_C:GetThrowAnim(R) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_5CD8DC22478859BE2C8353B0F92FEA41(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_7FD286794FEB0B804AB749AA6DF956F6(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_8DDC40F54217ED37174839872A4B3C92(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_90E64D6F4D4C969746BC00B63183B1C9(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_BC987AE74DCB7BAA321A96916C383D99(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_E568AF7542F3AF8F61B28F8B8CDF9228(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnBlendOut_FF8AA0454F6F95F0F9606599FCC5B58A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_5CD8DC22478859BE2C8353B0F92FEA41(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_7FD286794FEB0B804AB749AA6DF956F6(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_8DDC40F54217ED37174839872A4B3C92(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_90E64D6F4D4C969746BC00B63183B1C9(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_BC987AE74DCB7BAA321A96916C383D99(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_E568AF7542F3AF8F61B28F8B8CDF9228(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnCompleted_FF8AA0454F6F95F0F9606599FCC5B58A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_5CD8DC22478859BE2C8353B0F92FEA41(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_7FD286794FEB0B804AB749AA6DF956F6(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_8DDC40F54217ED37174839872A4B3C92(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_90E64D6F4D4C969746BC00B63183B1C9(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_BC987AE74DCB7BAA321A96916C383D99(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_E568AF7542F3AF8F61B28F8B8CDF9228(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnInterrupted_FF8AA0454F6F95F0F9606599FCC5B58A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_5CD8DC22478859BE2C8353B0F92FEA41(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_7FD286794FEB0B804AB749AA6DF956F6(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_8DDC40F54217ED37174839872A4B3C92(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_90E64D6F4D4C969746BC00B63183B1C9(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_BC987AE74DCB7BAA321A96916C383D99(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_E568AF7542F3AF8F61B28F8B8CDF9228(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyBegin_FF8AA0454F6F95F0F9606599FCC5B58A(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_5CD8DC22478859BE2C8353B0F92FEA41(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_7FD286794FEB0B804AB749AA6DF956F6(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_8DDC40F54217ED37174839872A4B3C92(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_90E64D6F4D4C969746BC00B63183B1C9(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_BC987AE74DCB7BAA321A96916C383D99(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_E568AF7542F3AF8F61B28F8B8CDF9228(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Rusty_C:OnNotifyEnd_FF8AA0454F6F95F0F9606599FCC5B58A(NotifyName) end

---@param DeltaSeconds float
function AMechaKnight_DualAxe_Rusty_C:ReceiveTick(DeltaSeconds) end

function AMechaKnight_DualAxe_Rusty_C:StartCheckingAxeThrowSlam() end
