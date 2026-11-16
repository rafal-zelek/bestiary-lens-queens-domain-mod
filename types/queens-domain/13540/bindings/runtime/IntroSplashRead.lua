---@meta

---@class AIntroSplashRead_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field arrow UArrowComponent
---@field InteractBox UBoxComponent
---@field Read FIntroSplashRead_CRead
---@field ['Text (Deprecated)'] FText
---@field ['Required Keys'] TMap<UFS_ItemData_C, int32>
---@field ['Note DA'] UReadableText_DataAsset_C
---@field DisableOnActivate boolean
---@field HideOnActivate boolean
---@field MaxInteractAngle float
local AIntroSplashRead_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AIntroSplashRead_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AIntroSplashRead_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AIntroSplashRead_C:ExecuteUbergraph_IntroSplashRead(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AIntroSplashRead_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AIntroSplashRead_C:Interact(PlayerInteracting) end

function AIntroSplashRead_C:Read__DelegateSignature() end

---@param CanUse boolean
AIntroSplashRead_C['Has Needed Keys'] = function(self, CanUse) end
