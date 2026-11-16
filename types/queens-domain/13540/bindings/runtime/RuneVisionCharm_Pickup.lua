---@meta

---@class ARuneVisionCharm_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Charm_Lizer UStaticMeshComponent
---@field Charm_Sci UStaticMeshComponent
---@field Charm_Skull UStaticMeshComponent
---@field Charm_Food UStaticMeshComponent
---@field Charm_Egg UStaticMeshComponent
---@field Charm_Chest UStaticMeshComponent
---@field RuneGoggle_Lens_Jigeki_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Wodaso_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Sipeha_SM UStaticMeshComponent
---@field RuneGoggle_Lens_Puwema_SM UStaticMeshComponent
---@field HasSipehaLens boolean
---@field HasWodasoLens boolean
---@field HasJigekiLens boolean
---@field HasPuwemaLens boolean
---@field HasChestCharm boolean
---@field HasEggCharm boolean
---@field HasFoodCharm boolean
---@field HasLizerCharm boolean
---@field HasSkullCharm boolean
---@field HasSciCharm boolean
local ARuneVisionCharm_Pickup_C = {}

---@param EntryPoint int32
function ARuneVisionCharm_Pickup_C:ExecuteUbergraph_RuneVisionCharm_Pickup(EntryPoint) end

function ARuneVisionCharm_Pickup_C:ReceiveBeginPlay() end

function ARuneVisionCharm_Pickup_C:Refreshlenses() end
