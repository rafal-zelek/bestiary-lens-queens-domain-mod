---@meta

---@class UEnemyUtils_C : UBlueprintFunctionLibrary
local UEnemyUtils_C = {}

---@param Actor AActor
---@param Comp USceneComponent
---@param Range float
---@param Radius float
---@param Ignores TArray<AActor>
---@param __WorldContext UObject
---@param Successful boolean
---@param OutHit FHitResult
---@param HitActor AActor
function UEnemyUtils_C:DoLaserTrace(Actor, Comp, Range, Radius, Ignores, __WorldContext, Successful, OutHit, HitActor) end

---@param Actor AActor
---@param Radius float
---@param StartPos FVector
---@param EndPos FVector
---@param __WorldContext UObject
---@param Successful boolean
---@param OutHit FHitResult
---@param HitActor AActor
---@param Hit boolean
function UEnemyUtils_C:DoLaserTrace_Raw(Actor, Radius, StartPos, EndPos, __WorldContext, Successful, OutHit, HitActor, Hit) end

---@param Enemy ACharacter
---@param __WorldContext UObject
---@param Data UEnemyData_C
function UEnemyUtils_C:GetEnemyData(Enemy, __WorldContext, Data) end

---@param Character ACharacter
---@param __WorldContext UObject
---@param Current float
---@param Max float
function UEnemyUtils_C:GetEnemyHP(Character, __WorldContext, Current, Max) end

---@param Character ACharacter
---@param __WorldContext UObject
---@param Dead boolean
---@param SuspendedDeath boolean
function UEnemyUtils_C:GetEnemyIsDead(Character, __WorldContext, Dead, SuspendedDeath) end

---@param Length float
---@param Actor AActor
---@param LaserComp USceneComponent
---@param __WorldContext UObject
function UEnemyUtils_C:UpdateLaserLength(Length, Actor, LaserComp, __WorldContext) end
