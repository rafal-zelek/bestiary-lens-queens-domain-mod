---@meta

---@class AROS_TreeLock_Tree_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Gem3_Glow3 UGlowSpriteComp_C
---@field Gem3_Glow2 UGlowSpriteComp_C
---@field Gem3_Glow1 UGlowSpriteComp_C
---@field Gem3_Glow0 UGlowSpriteComp_C
---@field Gem2_Glow3 UGlowSpriteComp_C
---@field Gem2_Glow2 UGlowSpriteComp_C
---@field Gem2_Glow1 UGlowSpriteComp_C
---@field Gem2_Glow0 UGlowSpriteComp_C
---@field Gem1_Glow3 UGlowSpriteComp_C
---@field Gem1_Glow2 UGlowSpriteComp_C
---@field Gem1_Glow1 UGlowSpriteComp_C
---@field Gem1_Glow0 UGlowSpriteComp_C
---@field GemGlow3_GlowUp_9ADE9D7A400BA1F2107D0194698051CC float
---@field GemGlow3__Direction_9ADE9D7A400BA1F2107D0194698051CC ETimelineDirection::Type
---@field GemGlow3 UTimelineComponent
---@field GemGlow2_GlowUp_A0F9ECDF4012D86D3931CBA954E3D671 float
---@field GemGlow2__Direction_A0F9ECDF4012D86D3931CBA954E3D671 ETimelineDirection::Type
---@field GemGlow2 UTimelineComponent
---@field GemGlow1_GlowUp_DCF151FA49B5E4D5A651D8A0A5E72BC5 float
---@field GemGlow1__Direction_DCF151FA49B5E4D5A651D8A0A5E72BC5 ETimelineDirection::Type
---@field GemGlow1 UTimelineComponent
local AROS_TreeLock_Tree_C = {}

---@param EntryPoint int32
function AROS_TreeLock_Tree_C:ExecuteUbergraph_ROS_TreeLock_Tree(EntryPoint) end

function AROS_TreeLock_Tree_C:GemGlow1__FinishedFunc() end

function AROS_TreeLock_Tree_C:GemGlow1__UpdateFunc() end

function AROS_TreeLock_Tree_C:GemGlow2__FinishedFunc() end

function AROS_TreeLock_Tree_C:GemGlow2__UpdateFunc() end

function AROS_TreeLock_Tree_C:GemGlow3__FinishedFunc() end

function AROS_TreeLock_Tree_C:GemGlow3__UpdateFunc() end

---@param Count int32
function AROS_TreeLock_Tree_C:InsertedGem(Count) end

---@param ActiveGems int32
function AROS_TreeLock_Tree_C:RestoreSaveState(ActiveGems) end
