---@meta

---@class AChef_Ghost_BP_C : ANPC_Ghost_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spatula1 UStaticMeshComponent
---@field Cleaver2 UStaticMeshComponent
---@field Cleaver1 UStaticMeshComponent
---@field Whisk1 UStaticMeshComponent
---@field Ladle1 UStaticMeshComponent
---@field Crow AChefCrow_Ghost_BP_C
---@field FacePlayer boolean
---@field Animating boolean
---@field FacinPlayer boolean
local AChef_Ghost_BP_C = {}

function AChef_Ghost_BP_C:EndDialogue() end

---@param EntryPoint int32
function AChef_Ghost_BP_C:ExecuteUbergraph_Chef_Ghost_BP(EntryPoint) end

---@param PlayerInteracting AActor
function AChef_Ghost_BP_C:Interact(PlayerInteracting) end

function AChef_Ghost_BP_C:MoveOn() end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnBlendOut_07676F944C3D40D87853A68934B443CB(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnBlendOut_AC2A4B194E412D8CCEA12381458D8765(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnCompleted_07676F944C3D40D87853A68934B443CB(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnCompleted_AC2A4B194E412D8CCEA12381458D8765(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnInterrupted_07676F944C3D40D87853A68934B443CB(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnInterrupted_AC2A4B194E412D8CCEA12381458D8765(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnNotifyBegin_07676F944C3D40D87853A68934B443CB(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnNotifyBegin_AC2A4B194E412D8CCEA12381458D8765(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnNotifyEnd_07676F944C3D40D87853A68934B443CB(NotifyName) end

---@param NotifyName FName
function AChef_Ghost_BP_C:OnNotifyEnd_AC2A4B194E412D8CCEA12381458D8765(NotifyName) end

function AChef_Ghost_BP_C:ReadyForCrowHandoff() end

---@param DeltaSeconds float
function AChef_Ghost_BP_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
---@param ParameterValue2 float
---@param ParameterValue3 float
---@param ParameterValue4 float
---@param FadeOut float
---@param EarlyFadeOptional float
function AChef_Ghost_BP_C:SetPropFadeOut(ParameterValue, ParameterValue2, ParameterValue3, ParameterValue4, FadeOut, EarlyFadeOptional) end
