---@meta

---@class UEnemyData_C : UQD_EnemyData_base
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SortOrder int32
---@field Name FText
---@field HP float
---@field BaseDamage float
---@field XPReward int32
---@field SlashResistance EnemyResistance::Type
---@field BluntResistance EnemyResistance::Type
---@field PierceResistance EnemyResistance::Type
---@field StatusType EEnemyStatusType
---@field ['Status%'] float
---@field StaggerStacks float
---@field DiseaseResistance EnemyResistance::Type
---@field FireResistance EnemyResistance::Type
---@field PoisonResistance EnemyResistance::Type
---@field CustomData TMap<FName, float>
---@field ['Data Import Key'] FName
---@field EnemyBP TSubclassOf<AEnemyBase_C>
---@field VisualEnemyBPOverride TSubclassOf<AEnemyBase_C>
---@field AttackStopFollowRange float
---@field PassiveStopFollowRange float
---@field MoveSpeed float
---@field TurnSpeed float
---@field RotationTargetOffset float
---@field Drop FItemDrop
---@field AwarenessProfile UEnemyAwarenessProfile
---@field AggroSensitivity float
---@field AggroDecreaseRate float
---@field Boss boolean
---@field BestiaryScale float
---@field ['Bestiary Forward / BackOffset'] float
---@field ['Bestiary Up / DownOffset'] float
---@field Description FText
---@field ['Bestiary Clamp Rotation'] boolean
---@field ['Bestiary Starting Rotation'] float
---@field ['Bestiary Pitch Offset'] float
---@field DoNotCountForBestiaryTotal boolean
---@field ParentData UEnemyData_C
---@field JournalDioramaOverride TSubclassOf<ABaseJournalDiorama_C>
---@field AttackComments FString
local UEnemyData_C = {}

---@param EntryPoint int32
function UEnemyData_C:ExecuteUbergraph_EnemyData(EntryPoint) end

function UEnemyData_C:MigrateAttackDataFromBP() end
