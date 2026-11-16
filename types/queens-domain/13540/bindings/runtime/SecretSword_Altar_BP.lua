---@meta

---@class ASecretSword_Altar_BP_C : ANPC_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WingBurstFX UNiagaraComponent
---@field SecretSword_BrokenBitsTrails4 UNiagaraComponent
---@field SecretSword_BrokenBitsTrails2 UNiagaraComponent
---@field SecretSword_BrokenBitsTrails1 UNiagaraComponent
---@field SecretSword_BrokenBitsTrails UNiagaraComponent
---@field SecretSword_EmergeFX UNiagaraComponent
---@field KingFS_Glowy UStaticMeshComponent
---@field PlayerFS_Glowy UStaticMeshComponent
---@field SecretSword_GemTrails10 UNiagaraComponent
---@field SecretSword_GemTrails9 UNiagaraComponent
---@field SecretSword_GemTrails8 UNiagaraComponent
---@field SecretSword_GemTrails7 UNiagaraComponent
---@field SecretSword_GemTrails6 UNiagaraComponent
---@field SecretSword_GemTrails4 UNiagaraComponent
---@field SecretSword_GemTrails3 UNiagaraComponent
---@field SecretSword_GemTrails2 UNiagaraComponent
---@field SecretSword_GemTrails1 UNiagaraComponent
---@field SecretSword_GemTrails UNiagaraComponent
---@field GlowSpriteComp9 UGlowSpriteComp_C
---@field GlowSpriteComp8 UGlowSpriteComp_C
---@field GlowSpriteComp7 UGlowSpriteComp_C
---@field GlowSpriteComp6 UGlowSpriteComp_C
---@field GlowSpriteComp5 UGlowSpriteComp_C
---@field GlowSpriteComp4 UGlowSpriteComp_C
---@field GlowSpriteComp3 UGlowSpriteComp_C
---@field GlowSpriteComp2 UGlowSpriteComp_C
---@field GlowSpriteComp1 UGlowSpriteComp_C
---@field GlowSpriteComp UGlowSpriteComp_C
---@field GemCircleCenter USceneComponent
---@field BrokenKingFS USkeletalMeshComponent
---@field KingFS_Root USceneComponent
---@field PlayerFS UStaticMeshComponent
---@field PlayerFS_Root USceneComponent
---@field KingGem4 UStaticMeshComponent
---@field KingGem3 UStaticMeshComponent
---@field KingGem2 UStaticMeshComponent
---@field KingGem1 UStaticMeshComponent
---@field KingGem0 UStaticMeshComponent
---@field PlayerGem4 UStaticMeshComponent
---@field PlayerGem3 UStaticMeshComponent
---@field PlayerGem2 UStaticMeshComponent
---@field PlayerGem1 UStaticMeshComponent
---@field PlayerGem0 UStaticMeshComponent
---@field PlayerUltGem UStaticMeshComponent
---@field KingUltGem UStaticMeshComponent
---@field AnimationIsSuccess boolean
---@field FailureIsUnevodFS boolean
---@field PlayerSwordGems TArray<UStaticMeshComponent>
---@field KingSwordGems TArray<UStaticMeshComponent>
---@field MergeAnimSequence ALevelSequenceActor
---@field SecretSwordPickup ASecretSword_ItemPickup_C
---@field AllGems TArray<UStaticMeshComponent>
---@field GemsMoveToCircle float
---@field GemsFloatOff float
---@field GemCircleRotation float
---@field GemTime float
---@field GemCircleRadius float
---@field HideGems boolean
---@field GemsGlow float
---@field GlowySwordsOpacity float
---@field GlowySwordsDissolve float
---@field BrokenSwordbitsGlow float
---@field BlockInteract_0 boolean
local ASecretSword_Altar_BP_C = {}

function ASecretSword_Altar_BP_C:CheckforFailStates() end

function ASecretSword_Altar_BP_C:ConfigurePlayerSword() end

function ASecretSword_Altar_BP_C:DoFullAnimation() end

function ASecretSword_Altar_BP_C:DoKingRemnant_PlaceAnim() end

function ASecretSword_Altar_BP_C:DoPlayerFS_PlaceAnim() end

---@param EntryPoint int32
function ASecretSword_Altar_BP_C:ExecuteUbergraph_SecretSword_Altar_BP(EntryPoint) end

function ASecretSword_Altar_BP_C:FailDialogueEnded() end

function ASecretSword_Altar_BP_C:FinishedFullAnim() end

---@param Gem USceneComponent
---@param Index int32
function ASecretSword_Altar_BP_C:GemAnimFunc(Gem, Index) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASecretSword_Altar_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ASecretSword_Altar_BP_C:InitGemArrays() end

---@param PlayerInteracting AActor
function ASecretSword_Altar_BP_C:Interact(PlayerInteracting) end

function ASecretSword_Altar_BP_C:ReceiveBeginPlay() end

function ASecretSword_Altar_BP_C:RemovePlayerFS() end

function ASecretSword_Altar_BP_C:ResetAnimation() end

function ASecretSword_Altar_BP_C:ShowPlayerFS() end

function ASecretSword_Altar_BP_C:SwapEquips() end

function ASecretSword_Altar_BP_C:UpdateGemAnimation() end

function ASecretSword_Altar_BP_C:UserConstructionScript() end
