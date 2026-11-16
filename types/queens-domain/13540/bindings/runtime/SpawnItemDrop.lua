---@meta

---@class USpawnItemDrop_C : UBlueprintFunctionLibrary
local USpawnItemDrop_C = {}

---@param __WorldContext UObject
---@param Mult float
function USpawnItemDrop_C:GetGlobalDropChanceIncrease(__WorldContext, Mult) end

---@param __WorldContext UObject
---@param Mult float
function USpawnItemDrop_C:GetTotalLuck(__WorldContext, Mult) end

---@param StartPoint FVector
---@param Drop AItemPickup_Base_C
---@param IgnoreActors TArray<AActor>
---@param DisableNav boolean
---@param __WorldContext UObject
function USpawnItemDrop_C:SnapDropToGround(StartPoint, Drop, IgnoreActors, DisableNav, __WorldContext) end

---@param Location FVector
---@param Rotation FRotator
---@param Disable_Snap_To_Nav boolean
---@param Dropper AActor
---@param Disable_Bounce boolean
---@param Item TSoftObjectPtr<UFS_Item>
---@param DisableSnapToSurface boolean
---@param IgnoreActorsForSnap AActor
---@param Gravity boolean
---@param CoinCount int32
---@param ExtraFallGravityForce FVector
---@param skip_drop_save boolean
---@param SaveLocOverride boolean
---@param SaveLocOverridePos FVector
---@param __WorldContext UObject
---@param ItemActor AActor
function USpawnItemDrop_C:SpawnIndividualItem(Location, Rotation, Disable_Snap_To_Nav, Dropper, Disable_Bounce, Item, DisableSnapToSurface, IgnoreActorsForSnap, Gravity, CoinCount, ExtraFallGravityForce, skip_drop_save, SaveLocOverride, SaveLocOverridePos, __WorldContext, ItemActor) end

---@param Drop FItemDrop
---@param Location FVector
---@param Rotation FRotator
---@param Disable_Snap_To_Nav boolean
---@param Dropper AActor
---@param Disable_Bounce boolean
---@param DisableSnapToSurface boolean
---@param DropWithGravity boolean
---@param ExtraDropChance float
---@param Source FName
---@param BasePityRate float
---@param ExtraFallGravityForce FVector
---@param skip_drop_save boolean
---@param SaveLocOverride boolean
---@param SaveLocOverridePos FVector
---@param __WorldContext UObject
---@param FirstItemActor AActor
---@param SecondItemActor AActor
function USpawnItemDrop_C:TrySpawningItem(Drop, Location, Rotation, Disable_Snap_To_Nav, Dropper, Disable_Bounce, DisableSnapToSurface, DropWithGravity, ExtraDropChance, Source, BasePityRate, ExtraFallGravityForce, skip_drop_save, SaveLocOverride, SaveLocOverridePos, __WorldContext, FirstItemActor, SecondItemActor) end
