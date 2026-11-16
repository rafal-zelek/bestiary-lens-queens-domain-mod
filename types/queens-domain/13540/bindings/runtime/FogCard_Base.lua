---@meta

---@class AFogCard_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Billboard UBillboardComponent
---@field Plane UStaticMeshComponent
---@field Opacity float
---@field UseFogOpacity boolean
---@field Color FLinearColor
---@field Fog UENVControlData_C
---@field ColorDark FLinearColor
---@field FadeWidth float
---@field FadeStart float
---@field DepthFadeDist float
---@field TranslucencySort int32
---@field StaticRandom boolean
---@field StaticRandValue float
---@field TickUpdateColor boolean
local AFogCard_Base_C = {}

---@param EntryPoint int32
function AFogCard_Base_C:ExecuteUbergraph_FogCard_Base(EntryPoint) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AFogCard_Base_C:GetCurrentFogDAs(Alpha, Beta) end

function AFogCard_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFogCard_Base_C:ReceiveTick(DeltaSeconds) end

---@param DA UENVControlData_C
function AFogCard_Base_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AFogCard_Base_C:SetBetaFogDA(DA) end

function AFogCard_Base_C:UpdateColor() end

function AFogCard_Base_C:UpdateFogDAValues() end

function AFogCard_Base_C:UserConstructionScript() end
