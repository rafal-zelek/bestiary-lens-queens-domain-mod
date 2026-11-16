---@meta

---@class ACharacterStuckFixer_C : AActor
---@field Capsule UCapsuleComponent
---@field StaticMesh UStaticMeshComponent
---@field CapsuleWorldLoc FTransform
---@field HasEverUpdated boolean
local ACharacterStuckFixer_C = {}

function ACharacterStuckFixer_C:ResetTargetPos() end

function ACharacterStuckFixer_C:UserConstructionScript() end

---@param Location FVector
---@param Rotation FRotator
ACharacterStuckFixer_C['Get Safe Unstick Location'] = function(self, Location, Rotation) end
