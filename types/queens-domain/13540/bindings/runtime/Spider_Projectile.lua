---@meta

---@class ASpider_Projectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WebAnim_Scale_74F0CC0843B7F08F1F5F6E8A5010AB4F FVector
---@field WebAnim__Direction_74F0CC0843B7F08F1F5F6E8A5010AB4F ETimelineDirection::Type
---@field WebAnim UTimelineComponent
local ASpider_Projectile_C = {}

---@param EntryPoint int32
function ASpider_Projectile_C:ExecuteUbergraph_Spider_Projectile(EntryPoint) end

function ASpider_Projectile_C:ReceiveBeginPlay() end

function ASpider_Projectile_C:WebAnim__FinishedFunc() end

function ASpider_Projectile_C:WebAnim__UpdateFunc() end
