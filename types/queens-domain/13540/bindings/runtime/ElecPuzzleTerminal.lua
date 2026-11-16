---@meta

---@class AElecPuzzleTerminal_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GlowSpriteComp UGlowSpriteComp_C
---@field PointLight UPointLightComponent
---@field InteractBox_0 UBoxComponent
---@field StaticMesh UStaticMeshComponent
---@field PuzzleController AElecNodeNetwork_C
---@field AFog UENVControlData_C
---@field BFog UENVControlData_C
---@field Activated boolean
---@field NewVar_0 FLinearColor
local AElecPuzzleTerminal_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AElecPuzzleTerminal_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AElecPuzzleTerminal_C:CheatPuzzle() end

function AElecPuzzleTerminal_C:Closed() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AElecPuzzleTerminal_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AElecPuzzleTerminal_C:ExecuteUbergraph_ElecPuzzleTerminal(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AElecPuzzleTerminal_C:GetCurrentFogDAs(Alpha, Beta) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AElecPuzzleTerminal_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AElecPuzzleTerminal_C:Interact(PlayerInteracting) end

function AElecPuzzleTerminal_C:RefillEnergy() end

function AElecPuzzleTerminal_C:ResetPuzzle() end

---@param DA UENVControlData_C
function AElecPuzzleTerminal_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AElecPuzzleTerminal_C:SetBetaFogDA(DA) end

function AElecPuzzleTerminal_C:UpdateFogDAValues() end

function AElecPuzzleTerminal_C:UserConstructionScript() end
