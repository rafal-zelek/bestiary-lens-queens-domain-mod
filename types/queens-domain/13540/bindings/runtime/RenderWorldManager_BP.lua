---@meta

---@class ARenderWorldManager_BP_C : ARW_RenderWorldManager
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field PlayerRef APawn
local ARenderWorldManager_BP_C = {}

---@param Axes FVector2D
function ARenderWorldManager_BP_C:AddRotationAxisInput(Axes) end

---@param EntryPoint int32
function ARenderWorldManager_BP_C:ExecuteUbergraph_RenderWorldManager_BP(EntryPoint) end

function ARenderWorldManager_BP_C:ReceiveBeginPlay() end

function ARenderWorldManager_BP_C:StartRendering() end

function ARenderWorldManager_BP_C:StopRendering() end

---@param RT UTextureRenderTarget2D
ARenderWorldManager_BP_C['Set Output RT'] = function(self, RT) end
