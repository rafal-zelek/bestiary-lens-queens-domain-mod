---@meta

---@class UPrimitiveFlagUtils_C : UBlueprintFunctionLibrary
local UPrimitiveFlagUtils_C = {}

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetDisableFogAlpha(Primitive, Value, __WorldContext) end

---@param Actor AActor
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetDisableFogAlpha_Actor(Actor, Value, __WorldContext) end

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetFPLeftHandEnableStencil(Primitive, Value, __WorldContext) end

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetFirstpersonEnableStencil(Primitive, Value, __WorldContext) end

---@param Float_To_Set_Bit_In float
---@param Bit int32
---@param Value boolean
---@param __WorldContext UObject
---@param Result float
function UPrimitiveFlagUtils_C:SetFlagInFloatAsByte(Float_To_Set_Bit_In, Bit, Value, __WorldContext, Result) end

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetFogEnableStencil(Primitive, Value, __WorldContext) end

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param Bit int32
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetPrimitiveStencilValue(Primitive, Value, Bit, __WorldContext) end

---@param Primitive UPrimitiveComponent
---@param Value boolean
---@param __WorldContext UObject
function UPrimitiveFlagUtils_C:SetSplineEnableStencil(Primitive, Value, __WorldContext) end
