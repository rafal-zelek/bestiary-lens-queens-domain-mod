---@meta

---@class AFieldSystemActor : AActor
---@field FieldSystemComponent UFieldSystemComponent
local AFieldSystemActor = {}

---@class FFieldObjectCommands
---@field TargetNames TArray<FName>
---@field RootNodes TArray<UFieldNodeBase>
---@field MetaDatas TArray<UFieldSystemMetaData>
local FFieldObjectCommands = {}

---@class UBoxFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Transform FTransform
---@field Falloff EFieldFalloffType
local UBoxFalloff = {}

---@class UCullingField : UFieldNodeBase
---@field Culling UFieldNodeBase
---@field Field UFieldNodeBase
---@field Operation EFieldCullingOperationType
local UCullingField = {}

---@class UFieldNodeBase : UActorComponent
local UFieldNodeBase = {}

---@class UFieldNodeFloat : UFieldNodeBase
local UFieldNodeFloat = {}

---@class UFieldNodeInt : UFieldNodeBase
local UFieldNodeInt = {}

---@class UFieldNodeVector : UFieldNodeBase
local UFieldNodeVector = {}

---@class UFieldSystem : UObject
local UFieldSystem = {}

---@class UFieldSystemComponent : UPrimitiveComponent
---@field FieldSystem UFieldSystem
---@field bIsWorldField boolean
---@field bIsChaosField boolean
---@field SupportedSolvers TArray<TSoftObjectPtr<AChaosSolverActor>>
---@field ConstructionCommands FFieldObjectCommands
---@field BufferCommands FFieldObjectCommands
local UFieldSystemComponent = {}

---@class UFieldSystemMetaData : UActorComponent
local UFieldSystemMetaData = {}

---@class UFieldSystemMetaDataFilter : UFieldSystemMetaData
---@field FilterType EFieldFilterType
local UFieldSystemMetaDataFilter = {}

---@class UFieldSystemMetaDataIteration : UFieldSystemMetaData
---@field Iterations int32
local UFieldSystemMetaDataIteration = {}

---@class UFieldSystemMetaDataProcessingResolution : UFieldSystemMetaData
---@field ResolutionType EFieldResolutionType
local UFieldSystemMetaDataProcessingResolution = {}

---@class UNoiseField : UFieldNodeFloat
---@field MinRange float
---@field MaxRange float
---@field Transform FTransform
local UNoiseField = {}

---@class UOperatorField : UFieldNodeBase
---@field Magnitude float
---@field RightField UFieldNodeBase
---@field LeftField UFieldNodeBase
---@field Operation EFieldOperationType
local UOperatorField = {}

---@class UPlaneFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Distance float
---@field Position FVector
---@field Normal FVector
---@field Falloff EFieldFalloffType
local UPlaneFalloff = {}

---@class URadialFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Radius float
---@field Position FVector
---@field Falloff EFieldFalloffType
local URadialFalloff = {}

---@class URadialIntMask : UFieldNodeInt
---@field Radius float
---@field Position FVector
---@field InteriorValue int32
---@field ExteriorValue int32
---@field SetMaskCondition ESetMaskConditionType
local URadialIntMask = {}

---@class URadialVector : UFieldNodeVector
---@field Magnitude float
---@field Position FVector
local URadialVector = {}

---@class URandomVector : UFieldNodeVector
---@field Magnitude float
local URandomVector = {}

---@class UReturnResultsTerminal : UFieldNodeBase
local UReturnResultsTerminal = {}

---@class UToFloatField : UFieldNodeFloat
---@field IntField UFieldNodeInt
local UToFloatField = {}

---@class UToIntegerField : UFieldNodeInt
---@field FloatField UFieldNodeFloat
local UToIntegerField = {}

---@class UUniformInteger : UFieldNodeInt
---@field Magnitude int32
local UUniformInteger = {}

---@class UUniformScalar : UFieldNodeFloat
---@field Magnitude float
local UUniformScalar = {}

---@class UUniformVector : UFieldNodeVector
---@field Magnitude float
---@field Direction FVector
local UUniformVector = {}

---@class UWaveScalar : UFieldNodeFloat
---@field Magnitude float
---@field Position FVector
---@field Wavelength float
---@field Period float
---@field Function EWaveFunctionType
---@field Falloff EFieldFalloffType
local UWaveScalar = {}

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Transform FTransform
---@param Falloff EFieldFalloffType
function UBoxFalloff:SetBoxFalloff(Magnitude, MinRange, MaxRange, Default, Transform, Falloff) end

---@param Culling UFieldNodeBase
---@param Field UFieldNodeBase
---@param Operation EFieldCullingOperationType
function UCullingField:SetCullingField(Culling, Field, Operation) end

---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddFieldCommand(Enabled, Target, MetaData, Field) end

---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddPersistentField(Enabled, Target, MetaData, Field) end

---@param Enabled boolean
---@param Direction FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyLinearForce(Enabled, Direction, Magnitude) end

---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:ApplyPhysicsField(Enabled, Target, MetaData, Field) end

---@param Enabled boolean
---@param Position FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialForce(Enabled, Position, Magnitude) end

---@param Enabled boolean
---@param Position FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialVectorFalloffForce(Enabled, Position, Radius, Magnitude) end

---@param Enabled boolean
---@param Position FVector
---@param Radius float
function UFieldSystemComponent:ApplyStayDynamicField(Enabled, Position, Radius) end

---@param Enabled boolean
---@param Position FVector
---@param Radius float
---@param Magnitude float
---@param Iterations int32
function UFieldSystemComponent:ApplyStrainField(Enabled, Position, Radius, Magnitude, Iterations) end

---@param Enabled boolean
---@param Position FVector
---@param Direction FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyUniformVectorFalloffForce(Enabled, Position, Direction, Radius, Magnitude) end

function UFieldSystemComponent:RemovePersistentFields() end

function UFieldSystemComponent:ResetFieldSystem() end

---@param FilterType EFieldFilterType
function UFieldSystemMetaDataFilter:SetMetaDataFilterType(FilterType) end

---@param Iterations int32
function UFieldSystemMetaDataIteration:SetMetaDataIteration(Iterations) end

---@param ResolutionType EFieldResolutionType
function UFieldSystemMetaDataProcessingResolution:SetMetaDataaProcessingResolutionType(ResolutionType) end

---@param MinRange float
---@param MaxRange float
---@param Transform FTransform
function UNoiseField:SetNoiseField(MinRange, MaxRange, Transform) end

---@param Magnitude float
---@param LeftField UFieldNodeBase
---@param RightField UFieldNodeBase
---@param Operation EFieldOperationType
function UOperatorField:SetOperatorField(Magnitude, LeftField, RightField, Operation) end

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Distance float
---@param Position FVector
---@param Normal FVector
---@param Falloff EFieldFalloffType
function UPlaneFalloff:SetPlaneFalloff(Magnitude, MinRange, MaxRange, Default, Distance, Position, Normal, Falloff) end

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Radius float
---@param Position FVector
---@param Falloff EFieldFalloffType
function URadialFalloff:SetRadialFalloff(Magnitude, MinRange, MaxRange, Default, Radius, Position, Falloff) end

---@param Radius float
---@param Position FVector
---@param InteriorValue int32
---@param ExteriorValue int32
---@param SetMaskConditionIn ESetMaskConditionType
function URadialIntMask:SetRadialIntMask(Radius, Position, InteriorValue, ExteriorValue, SetMaskConditionIn) end

---@param Magnitude float
---@param Position FVector
function URadialVector:SetRadialVector(Magnitude, Position) end

---@param Magnitude float
function URandomVector:SetRandomVector(Magnitude) end

function UReturnResultsTerminal:SetReturnResultsTerminal() end

---@param IntegerField UFieldNodeInt
function UToFloatField:SetToFloatField(IntegerField) end

---@param FloatField UFieldNodeFloat
function UToIntegerField:SetToIntegerField(FloatField) end

---@param Magnitude int32
function UUniformInteger:SetUniformInteger(Magnitude) end

---@param Magnitude float
function UUniformScalar:SetUniformScalar(Magnitude) end

---@param Magnitude float
---@param Direction FVector
function UUniformVector:SetUniformVector(Magnitude, Direction) end

---@param Magnitude float
---@param Position FVector
---@param Wavelength float
---@param Period float
---@param Time float
---@param Function EWaveFunctionType
---@param Falloff EFieldFalloffType
function UWaveScalar:SetWaveScalar(Magnitude, Position, Wavelength, Period, Time, Function, Falloff) end
