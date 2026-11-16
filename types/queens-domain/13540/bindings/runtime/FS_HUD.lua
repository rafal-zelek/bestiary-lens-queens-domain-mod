---@meta

---@class AFS_HUD_C : AFS_HUD_Base
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field QueuedLines TArray<FHUD_QueuedLine>
---@field QueuedTexts TArray<FHUD_QueuedText>
---@field QueuedBoxes TArray<FHUD_QueuedBox>
---@field BaseCrosshairSize FVector2D
---@field Crosshairmat UMaterialInstanceDynamic
---@field CrosshairDA UCrosshairs_C
---@field CurrentPickupSizeMult float
---@field ScreenSize FVector2D
---@field InteractTimer float
---@field CanInteract boolean
local AFS_HUD_C = {}

---@param Player AFS_PlayerChar_C
---@param Return_Value boolean
function AFS_HUD_C:CanInteractHighlight(Player, Return_Value) end

---@param Color FLinearColor
function AFS_HUD_C:DebugPickupBox(Color) end

function AFS_HUD_C:DebugThings() end

---@param Start_X_ float
---@param Start_Y_ float
---@param End_X_ float
---@param End_Y_ float
---@param LineColor FLinearColor
---@param LineThickness float
function AFS_HUD_C:DrawLineInPickupBox(Start_X_, Start_Y_, End_X_, End_Y_, LineColor, LineThickness) end

---@param EntryPoint int32
function AFS_HUD_C:ExecuteUbergraph_FS_HUD(EntryPoint) end

---@param LinearColor FLinearColor
function AFS_HUD_C:GetCrosshairColor(LinearColor) end

---@param Size float
function AFS_HUD_C:HUDDebug_SetPickupSize(Size) end

function AFS_HUD_C:InitializeCrosshairMaterial() end

function AFS_HUD_C:ReceiveBeginPlay() end

---@param SizeX int32
---@param SizeY int32
function AFS_HUD_C:ReceiveDrawHUD(SizeX, SizeY) end

function AFS_HUD_C:UpdateCrosshairMaterial() end
