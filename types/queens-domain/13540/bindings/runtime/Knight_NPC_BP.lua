---@meta

---@class AKnight_NPC_BP_C : ANPC_Base_C
---@field Sheath UStaticMeshComponent
---@field Tool_L UStaticMeshComponent
---@field Helmet UStaticMeshComponent
---@field Tool_R UStaticMeshComponent
---@field ShowToolR boolean
---@field ShowToolL boolean
---@field ['Show Helmet'] boolean
---@field HelmetModel UStaticMesh
---@field LeftToolModel UStaticMesh
---@field RightToolModel UStaticMesh
---@field ShowSheath boolean
---@field SheathModel UStaticMesh
local AKnight_NPC_BP_C = {}

function AKnight_NPC_BP_C:SetUpAttachments() end

function AKnight_NPC_BP_C:UserConstructionScript() end
