---@meta

---@class FAnimNode_KawaiiPhysics : FAnimNode_SkeletalControlBase
---@field RootBone FBoneReference
---@field ExcludeBones TArray<FBoneReference>
---@field TargetFramerate int32
---@field OverrideTargetFramerate boolean
---@field PhysicsSettings FKawaiiPhysicsSettings
---@field DampingCurve UCurveFloat
---@field WorldDampingLocationCurve UCurveFloat
---@field WorldDampingRotationCurve UCurveFloat
---@field StiffnessCurve UCurveFloat
---@field RadiusCurve UCurveFloat
---@field LimitAngleCurve UCurveFloat
---@field DampingCurveData FRuntimeFloatCurve
---@field WorldDampingLocationCurveData FRuntimeFloatCurve
---@field WorldDampingRotationCurveData FRuntimeFloatCurve
---@field StiffnessCurveData FRuntimeFloatCurve
---@field RadiusCurveData FRuntimeFloatCurve
---@field LimitAngleCurveData FRuntimeFloatCurve
---@field bUpdatePhysicsSettingsInGame boolean
---@field DummyBoneLength float
---@field BoneForwardAxis EBoneForwardAxis
---@field PlanarConstraint EPlanarConstraint
---@field ResetBoneTransformWhenBoneNotFound boolean
---@field SphericalLimits TArray<FSphericalLimit>
---@field CapsuleLimits TArray<FCapsuleLimit>
---@field PlanarLimits TArray<FPlanarLimit>
---@field LimitsDataAsset UKawaiiPhysicsLimitsDataAsset
---@field SphericalLimitsData TArray<FSphericalLimit>
---@field CapsuleLimitsData TArray<FCapsuleLimit>
---@field PlanarLimitsData TArray<FPlanarLimit>
---@field TeleportDistanceThreshold float
---@field TeleportRotationThreshold float
---@field Gravity FVector
---@field bEnableWind boolean
---@field WindScale float
---@field bAllowWorldCollision boolean
---@field bOverrideCollisionParams boolean
---@field CollisionChannelSettings FBodyInstance
---@field bIgnoreSelfComponent boolean
---@field IgnoreBones TArray<FBoneReference>
---@field IgnoreBoneNamePrefix TArray<FName>
---@field ModifyBones TArray<FKawaiiPhysicsModifyBone>
---@field TotalBoneLength float
---@field PreSkelCompTransform FTransform
---@field bInitPhysicsSettings boolean
local FAnimNode_KawaiiPhysics = {}

---@class FCapsuleLimit : FCollisionLimitBase
---@field Radius float
---@field Length float
local FCapsuleLimit = {}

---@class FCapsuleLimitData : FCollisionLimitDataBase
---@field Radius float
---@field Length float
local FCapsuleLimitData = {}

---@class FCollisionLimitBase
---@field DrivingBone FBoneReference
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field Location FVector
---@field Rotation FQuat
local FCollisionLimitBase = {}

---@class FCollisionLimitDataBase
---@field DrivingBoneName FName
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field Location FVector
---@field Rotation FQuat
---@field Guid FGuid
local FCollisionLimitDataBase = {}

---@class FKawaiiPhysicsModifyBone
---@field PhysicsSettings FKawaiiPhysicsSettings
local FKawaiiPhysicsModifyBone = {}

---@class FKawaiiPhysicsSettings
---@field Damping float
---@field WorldDampingLocation float
---@field WorldDampingRotation float
---@field Stiffness float
---@field Radius float
---@field LimitAngle float
local FKawaiiPhysicsSettings = {}

---@class FPlanarLimit : FCollisionLimitBase
---@field Plane FPlane
local FPlanarLimit = {}

---@class FPlanarLimitData : FCollisionLimitDataBase
---@field Plane FPlane
local FPlanarLimitData = {}

---@class FSphericalLimit : FCollisionLimitBase
---@field Radius float
---@field LimitType ESphericalLimitType
local FSphericalLimit = {}

---@class FSphericalLimitData : FCollisionLimitDataBase
---@field Radius float
---@field LimitType ESphericalLimitType
local FSphericalLimitData = {}

---@class UKawaiiPhysicsLimitsDataAsset : UDataAsset
---@field SphericalLimits TArray<FSphericalLimit>
---@field CapsuleLimits TArray<FCapsuleLimit>
---@field PlanarLimits TArray<FPlanarLimit>
local UKawaiiPhysicsLimitsDataAsset = {}
