---@meta

---@class UGrimoire_Logic_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerCharRef AFS_PlayerChar_C
---@field UIProjector AGrimoire_UI_Projector_C
---@field Passwords TMap<FString, FGrimoire_Password>
---@field OverlayUI UGrimoire_Overlay_C
---@field Processing boolean
---@field CurrentlyProcessingPassword FString
---@field TOOLING_PasswordToHash FString
---@field TOOLING_HashedPassword FString
---@field ItemsToSequentialGrant TArray<UFS_ItemData_C>
---@field CurGrimSpawnFX UNiagaraComponent
---@field LastSpawnedPickup AItemPickup_Base_C
local UGrimoire_Logic_C = {}

function UGrimoire_Logic_C:BeginSequentialItemGrants() end

function UGrimoire_Logic_C:CustomEvent() end

function UGrimoire_Logic_C:CustomEvent_1() end

function UGrimoire_Logic_C:DoNextPickupGrant() end

---@param EntryPoint int32
function UGrimoire_Logic_C:ExecuteUbergraph_Grimoire_Logic(EntryPoint) end

function UGrimoire_Logic_C:FinishExiting() end

function UGrimoire_Logic_C:GetNextSubmitPageNum() end

---@param SourceString FString
function UGrimoire_Logic_C:HashPassword(SourceString) end

function UGrimoire_Logic_C:InvalidReadTextWasClosed() end

function UGrimoire_Logic_C:IsOutOfInk() end

function UGrimoire_Logic_C:KeyboardClosePressed() end

---@param CurrentString FString
function UGrimoire_Logic_C:KeyboardConfirmPressed(CurrentString) end

function UGrimoire_Logic_C:LockForSubmit() end

function UGrimoire_Logic_C:NextPageRequested() end

function UGrimoire_Logic_C:Open() end

function UGrimoire_Logic_C:PrevPageRequested() end

function UGrimoire_Logic_C:ReceiveBeginPlay() end

function UGrimoire_Logic_C:SpawnItemSpawnParticles() end

---@param InputPin UFS_ItemData_C
---@param NewParam AItemPickup_Base_C
function UGrimoire_Logic_C:SpawnPickup(InputPin, NewParam) end

---@param Passsword FString
---@param Valid boolean
function UGrimoire_Logic_C:Submit(Passsword, Valid) end

function UGrimoire_Logic_C:UnlockFromSubmit() end
