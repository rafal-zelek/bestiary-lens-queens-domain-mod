---@meta

---@class ANudeQueenCutsceneMesh_C : ACutsceneSkeletalMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field spectrallight UPointLightComponent
---@field EyeLightR UPointLightComponent
---@field EyeLightL UPointLightComponent
---@field stafffallspot UEnemySkeletalMeshAttachment_C
---@field swordfallspot UEnemyAttachmentMesh_C
---@field MagicfireSplosion UNiagaraComponent
---@field FireCharFX UNiagaraComponent
---@field SpectralSwordMesh UStaticMeshComponent
---@field Puwemasplosion UNiagaraComponent
---@field wingr UStaticMeshComponent
---@field wingl UStaticMeshComponent
---@field Niagara UNiagaraComponent
---@field SwordMesh UStaticMeshComponent
---@field SwordGlow UGlowSpriteComp_C
---@field SwordGlowLight UPointLightComponent
---@field SwordGlow3 UGlowSpriteComp_C
---@field SwordGlow2 UGlowSpriteComp_C
---@field SwordGlow1 UGlowSpriteComp_C
---@field Sword UEnemyAttachmentMesh_C
---@field EyeGlow_R UGlowSpriteComp_C
---@field EyeGlow_L UGlowSpriteComp_C
---@field StaffGlow UGlowSpriteComp_C
---@field StaffLight UPointLightComponent
---@field FullStaff UEnemySkeletalMeshAttachment_C
---@field GlowOpacity float
---@field WeaponFall float
---@field SwordBaseSpot FTransform
local ANudeQueenCutsceneMesh_C = {}

---@param EntryPoint int32
function ANudeQueenCutsceneMesh_C:ExecuteUbergraph_NudeQueenCutsceneMesh(EntryPoint) end

---@param self2 UGlowSpriteComp_C
---@param BaseOpacity float
function ANudeQueenCutsceneMesh_C:NewFunction_0(self2, BaseOpacity) end

function ANudeQueenCutsceneMesh_C:UpdateGlows() end

function ANudeQueenCutsceneMesh_C:UpdateWeaponFall() end
