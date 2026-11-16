---@meta

---@class ARW_GameModeBase : AGameModeBase
---@field RenderWorlds TArray<UWorld>
---@field RenderWorldManagers TArray<ARW_RenderWorldManager>
local ARW_GameModeBase = {}

---@class ARW_RenderWorldManager : AActor
---@field GameModeRef ARW_GameModeBase
local ARW_RenderWorldManager = {}

---@class UFB_RenderWorldsBPLibrary : UBlueprintFunctionLibrary
local UFB_RenderWorldsBPLibrary = {}

---@param ManagerClass TSubclassOf<ARW_RenderWorldManager>
---@param OwningObject UObject
---@param OptionalLevelToLoad TSoftObjectPtr<UWorld>
function ARW_GameModeBase:CreateRenderWorld(ManagerClass, OwningObject, OptionalLevelToLoad) end

---@param RenderWorldManager ARW_RenderWorldManager
function ARW_GameModeBase:DestroyRenderWorld(RenderWorldManager) end

---@param Enable boolean
function ARW_RenderWorldManager:SetWorldTickEnable(Enable) end

---@param Param float
function UFB_RenderWorldsBPLibrary:FB_RenderWorldsSampleFunction(Param) end
