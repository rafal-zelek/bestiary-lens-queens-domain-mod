---@meta

---@class ASlimer_Gold_BP_C : ASlimer_Metal_BP_C
local ASlimer_Gold_BP_C = {}

function ASlimer_Gold_BP_C:StopAllMovement() end

---@param InputPin USphereComponent
---@param PositionOverride FVector
---@param UseOverride boolean
---@param Hit boolean
function ASlimer_Gold_BP_C:TickIndividualHitbox(InputPin, PositionOverride, UseOverride, Hit) end

ASlimer_Gold_BP_C['Update Rotation'] = function(self) end
