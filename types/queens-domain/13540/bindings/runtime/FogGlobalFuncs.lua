---@meta

---@class UFogGlobalFuncs_C : UBlueprintFunctionLibrary
local UFogGlobalFuncs_C = {}

---@param Comp UPrimitiveComponent
---@param Forward FVector
---@param Temp boolean
---@param __WorldContext UObject
function UFogGlobalFuncs_C:SetFogBoxForward(Comp, Forward, Temp, __WorldContext) end

---@param Actor AActor
---@param DA UENVControlData_C
---@param SetOnBeta boolean
---@param __WorldContext UObject
function UFogGlobalFuncs_C:SetFogPropertiesOnActor(Actor, DA, SetOnBeta, __WorldContext) end

---@param Comp UPrimitiveComponent
---@param DA UENVControlData_C
---@param SetOnBeta boolean
---@param Set_On_Children boolean
---@param __WorldContext UObject
UFogGlobalFuncs_C['Set Fog Properties on Primitive Comp Using DA'] = function(self, Comp, DA, SetOnBeta, Set_On_Children, __WorldContext) end

---@param Comp UPrimitiveComponent
---@param SetOnBeta boolean
---@param Color FLinearColor
---@param StartDist float
---@param FadeRange float
---@param __WorldContext UObject
UFogGlobalFuncs_C['Set Fog Properties on Primitive Comp Using Values'] = function(self, Comp, SetOnBeta, Color, StartDist, FadeRange, __WorldContext) end
