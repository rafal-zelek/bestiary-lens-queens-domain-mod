---@meta

---@class UWater_Utils_C : UBlueprintFunctionLibrary
local UWater_Utils_C = {}

---@param PassiveComp UNiagaraComponent
---@param PhysMat UPhysicalMaterial
---@param __WorldContext UObject
function UWater_Utils_C:ConfigurePassiveRipples(PassiveComp, PhysMat, __WorldContext) end

---@param SystemComponent UNiagaraComponent
---@param PhysMat UPhysicalMaterial
---@param __WorldContext UObject
function UWater_Utils_C:ConfigureWaterSystem(SystemComponent, PhysMat, __WorldContext) end

---@param PhysMat UPhysicalMaterial
---@param __WorldContext UObject
---@param Color FLinearColor
function UWater_Utils_C:GetWaterColor(PhysMat, __WorldContext, Color) end

---@param PhysMat UPhysicalMaterial
---@param __WorldContext UObject
---@param PassiveRipples UNiagaraSystem
---@param DashWaves UNiagaraSystem
---@param ExitSplash UNiagaraSystem
---@param EnterSplash UNiagaraSystem
---@param SmallSplash UNiagaraSystem
function UWater_Utils_C:GetWaterSystems(PhysMat, __WorldContext, PassiveRipples, DashWaves, ExitSplash, EnterSplash, SmallSplash) end

---@param PhysMat UPhysicalMaterial
---@param Location FVector
---@param Scale FVector
---@param __WorldContext UObject
function UWater_Utils_C:SpawnSmallSplash(PhysMat, Location, Scale, __WorldContext) end

---@param SystemTemplate UNiagaraSystem
---@param Location FVector
---@param Scale FVector
---@param PhysMat UPhysicalMaterial
---@param __WorldContext UObject
function UWater_Utils_C:SpawnSplash_Generic(SystemTemplate, Location, Scale, PhysMat, __WorldContext) end

---@param PhysMat UPhysicalMaterial
---@param Location FVector
---@param Scale FVector
---@param __WorldContext UObject
UWater_Utils_C['Spawn Enter Splash'] = function(self, PhysMat, Location, Scale, __WorldContext) end

---@param PhysMat UPhysicalMaterial
---@param Location FVector
---@param Scale FVector
---@param __WorldContext UObject
UWater_Utils_C['Spawn Exit Splash'] = function(self, PhysMat, Location, Scale, __WorldContext) end
