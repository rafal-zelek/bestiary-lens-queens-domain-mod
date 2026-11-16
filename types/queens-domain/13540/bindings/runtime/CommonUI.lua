---@meta

---@class FCommonAnalogCursorSettings
---@field PreprocessorPriority int32
---@field bEnableCursorAcceleration boolean
---@field CursorAcceleration float
---@field CursorMaxSpeed float
---@field CursorDeadZone float
---@field HoverSlowdownFactor float
---@field ScrollDeadZone float
---@field ScrollUpdatePeriod float
---@field ScrollMultiplier float
local FCommonAnalogCursorSettings = {}

---@class FCommonButtonStyleOptionalSlateSound
---@field bHasSound boolean
---@field Sound FSlateSound
local FCommonButtonStyleOptionalSlateSound = {}

---@class FCommonInputActionDataBase : FTableRowBase
---@field DisplayName FText
---@field HoldDisplayName FText
---@field KeyboardInputTypeInfo FCommonInputTypeInfo
---@field DefaultGamepadInputTypeInfo FCommonInputTypeInfo
---@field GamepadInputOverrides TMap<FName, FCommonInputTypeInfo>
---@field TouchInputTypeInfo FCommonInputTypeInfo
local FCommonInputActionDataBase = {}

---@class FCommonInputActionHandlerData
---@field InputActionRow FDataTableRowHandle
---@field State EInputActionState
local FCommonInputActionHandlerData = {}

---@class FCommonInputTypeInfo
---@field Key FKey
---@field OverrrideState EInputActionState
---@field bActionRequiresHold boolean
---@field HoldTime float
---@field OverrideBrush FSlateBrush
local FCommonInputTypeInfo = {}

---@class FCommonNumberFormattingOptions
---@field RoundingMode ERoundingMode
---@field UseGrouping boolean
---@field MinimumIntegralDigits int32
---@field MaximumIntegralDigits int32
---@field MinimumFractionalDigits int32
---@field MaximumFractionalDigits int32
local FCommonNumberFormattingOptions = {}

---@class FCommonRegisteredTabInfo
---@field TabIndex int32
---@field TabButton UCommonButtonBase
---@field ContentInstance UWidget
local FCommonRegisteredTabInfo = {}

---@class FRichTextIconData : FTableRowBase
---@field DisplayName FText
---@field ResourceObject TSoftObjectPtr<UObject>
---@field ImageSize FVector2D
local FRichTextIconData = {}

---@class FUIActionKeyMapping
---@field Key FKey
---@field HoldTime float
local FUIActionKeyMapping = {}

---@class FUIActionTag : FUITag
local FUIActionTag = {}

---@class FUIInputAction
---@field ActionTag FUIActionTag
---@field DefaultDisplayName FText
---@field KeyMappings TArray<FUIActionKeyMapping>
local FUIInputAction = {}

---@class FUITag : FGameplayTag
local FUITag = {}

---@class ICommonActionHandlerInterface : IInterface
local ICommonActionHandlerInterface = {}

---@class ICommonPoolableWidgetInterface : IInterface
local ICommonPoolableWidgetInterface = {}

---@class UAnalogSlider : USlider
---@field OnAnalogCapture FAnalogSliderOnAnalogCapture
local UAnalogSlider = {}

---@class UCommonActionWidget : UWidget
---@field OnInputMethodChanged FCommonActionWidgetOnInputMethodChanged
---@field ProgressMaterialBrush FSlateBrush
---@field ProgressMaterialParam FName
---@field IconRimBrush FSlateBrush
---@field InputActions TArray<FDataTableRowHandle>
---@field ProgressDynamicMaterial UMaterialInstanceDynamic
local UCommonActionWidget = {}

---@class UCommonActivatableWidget : UCommonUserWidget
---@field bAutoActivate boolean
---@field bIsBackHandler boolean
---@field bSupportsActivationFocus boolean
---@field bIsModal boolean
---@field bAutoRestoreFocus boolean
---@field bSetVisibilityOnActivated boolean
---@field ActivatedVisibility ESlateVisibility
---@field bSetVisibilityOnDeactivated boolean
---@field DeactivatedVisibility ESlateVisibility
---@field BP_OnWidgetActivated FCommonActivatableWidgetBP_OnWidgetActivated
---@field BP_OnWidgetDeactivated FCommonActivatableWidgetBP_OnWidgetDeactivated
---@field bIsActive boolean
local UCommonActivatableWidget = {}

---@class UCommonActivatableWidgetContainerBase : UWidget
---@field TransitionType ECommonSwitcherTransition
---@field TransitionCurveType ETransitionCurve
---@field TransitionDuration float
---@field WidgetList TArray<UCommonActivatableWidget>
---@field DisplayedWidget UCommonActivatableWidget
---@field GeneratedWidgetsPool FUserWidgetPool
local UCommonActivatableWidgetContainerBase = {}

---@class UCommonActivatableWidgetQueue : UCommonActivatableWidgetContainerBase
local UCommonActivatableWidgetQueue = {}

---@class UCommonActivatableWidgetStack : UCommonActivatableWidgetContainerBase
---@field RootContentWidgetClass TSubclassOf<UCommonActivatableWidget>
---@field RootContentWidget UCommonActivatableWidget
local UCommonActivatableWidgetStack = {}

---@class UCommonActivatableWidgetSwitcher : UCommonAnimatedSwitcher
local UCommonActivatableWidgetSwitcher = {}

---@class UCommonAnimatedSwitcher : UWidgetSwitcher
---@field TransitionType ECommonSwitcherTransition
---@field TransitionCurveType ETransitionCurve
---@field TransitionDuration float
local UCommonAnimatedSwitcher = {}

---@class UCommonBorder : UBorder
---@field Style TSubclassOf<UCommonBorderStyle>
---@field bReducePaddingBySafezone boolean
---@field MinimumPadding FMargin
local UCommonBorder = {}

---@class UCommonBorderStyle : UObject
---@field Background FSlateBrush
local UCommonBorderStyle = {}

---@class UCommonBoundActionBar : UDynamicEntryBoxBase
---@field ActionButtonClass TSubclassOf<UCommonBoundActionButton>
---@field bDisplayOwningPlayerActionsOnly boolean
local UCommonBoundActionBar = {}

---@class UCommonBoundActionButton : UCommonButtonBase
---@field Text_ActionName UCommonTextBlock
local UCommonBoundActionButton = {}

---@class UCommonButtonBase : UCommonUserWidget
---@field MinWidth int32
---@field MinHeight int32
---@field Style TSubclassOf<UCommonButtonStyle>
---@field StyleRandom float
---@field bHideInputAction boolean
---@field PressedSlateSoundOverride FSlateSound
---@field HoveredSlateSoundOverride FSlateSound
---@field bApplyAlphaOnDisable boolean
---@field bSelectable boolean
---@field bShouldSelectUponReceivingFocus boolean
---@field bInteractableWhenSelected boolean
---@field bToggleable boolean
---@field bDisplayInputActionWhenNotInteractable boolean
---@field bHideInputActionWithKeyboard boolean
---@field bShouldUseFallbackDefaultInputAction boolean
---@field ClickMethod EButtonClickMethod::Type
---@field TouchMethod EButtonTouchMethod::Type
---@field PressMethod EButtonPressMethod::Type
---@field InputPriority int32
---@field TriggeringInputAction FDataTableRowHandle
---@field OnSelectedChangedBase FCommonButtonBaseOnSelectedChangedBase
---@field OnButtonBaseClicked FCommonButtonBaseOnButtonBaseClicked
---@field OnButtonBaseDoubleClicked FCommonButtonBaseOnButtonBaseDoubleClicked
---@field OnButtonBaseHovered FCommonButtonBaseOnButtonBaseHovered
---@field OnButtonBaseUnhovered FCommonButtonBaseOnButtonBaseUnhovered
---@field bIsPersistentBinding boolean
---@field InputModeOverride ECommonInputMode
---@field SingleMaterialStyleMID UMaterialInstanceDynamic
---@field NormalStyle FButtonStyle
---@field SelectedStyle FButtonStyle
---@field DisabledStyle FButtonStyle
---@field bStopDoubleClickPropagation boolean
---@field InputActionWidget UCommonActionWidget
local UCommonButtonBase = {}

---@class UCommonButtonGroupBase : UCommonWidgetGroupBase
---@field OnSelectedButtonBaseChanged FCommonButtonGroupBaseOnSelectedButtonBaseChanged
---@field OnHoveredButtonBaseChanged FCommonButtonGroupBaseOnHoveredButtonBaseChanged
---@field OnButtonBaseClicked FCommonButtonGroupBaseOnButtonBaseClicked
---@field OnButtonBaseDoubleClicked FCommonButtonGroupBaseOnButtonBaseDoubleClicked
---@field OnSelectionCleared FCommonButtonGroupBaseOnSelectionCleared
---@field bSelectionRequired boolean
local UCommonButtonGroupBase = {}

---@class UCommonButtonInternalBase : UButton
---@field OnDoubleClicked FCommonButtonInternalBaseOnDoubleClicked
---@field MinWidth int32
---@field MinHeight int32
---@field bButtonEnabled boolean
---@field bInteractionEnabled boolean
local UCommonButtonInternalBase = {}

---@class UCommonButtonStyle : UObject
---@field bSingleMaterial boolean
---@field bRandomnessEnabled boolean
---@field SingleMaterialBrush FSlateBrush
---@field NormalBase FSlateBrush
---@field NormalHovered FSlateBrush
---@field NormalPressed FSlateBrush
---@field SelectedBase FSlateBrush
---@field SelectedHovered FSlateBrush
---@field SelectedPressed FSlateBrush
---@field Disabled FSlateBrush
---@field ButtonPadding FMargin
---@field CustomPadding FMargin
---@field MinWidth int32
---@field MinHeight int32
---@field NormalTextStyle TSubclassOf<UCommonTextStyle>
---@field NormalHoveredTextStyle TSubclassOf<UCommonTextStyle>
---@field SelectedTextStyle TSubclassOf<UCommonTextStyle>
---@field SelectedHoveredTextStyle TSubclassOf<UCommonTextStyle>
---@field DisabledTextStyle TSubclassOf<UCommonTextStyle>
---@field PressedSlateSound FSlateSound
---@field SelectedPressedSlateSound FCommonButtonStyleOptionalSlateSound
---@field DisabledPressedSlateSound FCommonButtonStyleOptionalSlateSound
---@field HoveredSlateSound FSlateSound
---@field SelectedHoveredSlateSound FCommonButtonStyleOptionalSlateSound
---@field DisabledHoveredSlateSound FCommonButtonStyleOptionalSlateSound
local UCommonButtonStyle = {}

---@class UCommonCustomNavigation : UBorder
---@field OnNavigationEvent FCommonCustomNavigationOnNavigationEvent
local UCommonCustomNavigation = {}

---@class UCommonDateTimeTextBlock : UCommonTextBlock
local UCommonDateTimeTextBlock = {}

---@class UCommonGameViewportClient : UGameViewportClient
local UCommonGameViewportClient = {}

---@class UCommonHierarchicalScrollBox : UScrollBox
local UCommonHierarchicalScrollBox = {}

---@class UCommonLazyImage : UImage
---@field LoadingBackgroundBrush FSlateBrush
---@field MaterialTextureParamName FName
---@field BP_OnLoadingStateChanged FCommonLazyImageBP_OnLoadingStateChanged
local UCommonLazyImage = {}

---@class UCommonLazyWidget : UWidget
---@field LoadingBackgroundBrush FSlateBrush
---@field Content UUserWidget
---@field BP_OnLoadingStateChanged FCommonLazyWidgetBP_OnLoadingStateChanged
local UCommonLazyWidget = {}

---@class UCommonListView : UListView
local UCommonListView = {}

---@class UCommonLoadGuard : UContentWidget
---@field LoadingBackgroundBrush FSlateBrush
---@field ThrobberAlignment EHorizontalAlignment
---@field ThrobberPadding FMargin
---@field LoadingText FText
---@field TextStyle TSubclassOf<UCommonTextStyle>
---@field BP_OnLoadingStateChanged FCommonLoadGuardBP_OnLoadingStateChanged
---@field SpinnerMaterialPath FSoftObjectPath
local UCommonLoadGuard = {}

---@class UCommonNumericTextBlock : UCommonTextBlock
---@field OnInterpolationStartedEvent FCommonNumericTextBlockOnInterpolationStartedEvent
---@field OnInterpolationUpdatedEvent FCommonNumericTextBlockOnInterpolationUpdatedEvent
---@field OnOutroEvent FCommonNumericTextBlockOnOutroEvent
---@field OnInterpolationEndedEvent FCommonNumericTextBlockOnInterpolationEndedEvent
---@field CurrentNumericValue float
---@field NumericType ECommonNumericType
---@field FormattingSpecification FCommonNumberFormattingOptions
---@field EaseOutInterpolationExponent float
---@field InterpolationUpdateInterval float
---@field PostInterpolationShrinkDuration float
---@field PerformSizeInterpolation boolean
---@field IsPercentage boolean
local UCommonNumericTextBlock = {}

---@class UCommonRichTextBlock : URichTextBlock
---@field InlineIconDisplayMode ERichTextInlineIconDisplayMode
---@field bTintInlineIcon boolean
---@field DefaultTextStyleOverrideClass TSubclassOf<UCommonTextStyle>
---@field MobileTextBlockScale float
---@field ScrollStyle TSubclassOf<UCommonTextScrollStyle>
---@field bDisplayAllCaps boolean
local UCommonRichTextBlock = {}

---@class UCommonRotator : UCommonButtonBase
---@field OnRotated FCommonRotatorOnRotated
---@field MyText UCommonTextBlock
local UCommonRotator = {}

---@class UCommonTabListWidgetBase : UCommonUserWidget
---@field OnTabSelected FCommonTabListWidgetBaseOnTabSelected
---@field OnTabButtonCreation FCommonTabListWidgetBaseOnTabButtonCreation
---@field OnTabButtonRemoval FCommonTabListWidgetBaseOnTabButtonRemoval
---@field NextTabInputActionData FDataTableRowHandle
---@field PreviousTabInputActionData FDataTableRowHandle
---@field bAutoListenForInput boolean
---@field LinkedSwitcher TWeakObjectPtr<UCommonAnimatedSwitcher>
---@field TabButtonGroup UCommonButtonGroupBase
---@field RegisteredTabsByID TMap<FName, FCommonRegisteredTabInfo>
local UCommonTabListWidgetBase = {}

---@class UCommonTextBlock : UTextBlock
---@field Style TSubclassOf<UCommonTextStyle>
---@field ScrollStyle TSubclassOf<UCommonTextScrollStyle>
---@field bDisplayAllCaps boolean
---@field bAutoCollapseWithEmptyText boolean
---@field MobileFontSizeMultiplier float
local UCommonTextBlock = {}

---@class UCommonTextScrollStyle : UObject
---@field Speed float
---@field StartDelay float
---@field EndDelay float
---@field FadeInDelay float
---@field FadeOutDelay float
---@field bAltClippingMode boolean
local UCommonTextScrollStyle = {}

---@class UCommonTextStyle : UObject
---@field Font FSlateFontInfo
---@field LocalizedFontOverrides TMap<FString, FSlateFontInfo>
---@field FontOptionOverrides TArray<FSlateFontInfo>
---@field Color FLinearColor
---@field bUsesDropShadow boolean
---@field ShadowOffset FVector2D
---@field ShadowColor FLinearColor
---@field Margin FMargin
---@field StrikeBrush FSlateBrush
---@field LineHeightPercentage float
---@field EmptyLineHeightPercentage float
local UCommonTextStyle = {}

---@class UCommonTileView : UTileView
local UCommonTileView = {}

---@class UCommonTreeView : UTreeView
local UCommonTreeView = {}

---@class UCommonUIActionRouterBase : ULocalPlayerSubsystem
local UCommonUIActionRouterBase = {}

---@class UCommonUIEditorSettings : UObject
---@field TemplateTextStyle TSoftClassPtr<UCommonTextStyle>
---@field TemplateButtonStyle TSoftClassPtr<UCommonButtonStyle>
---@field TemplateBorderStyle TSoftClassPtr<UCommonBorderStyle>
local UCommonUIEditorSettings = {}

---@class UCommonUIInputSettings : UObject
---@field bLinkCursorToGamepadFocus boolean
---@field UIActionProcessingPriority int32
---@field InputActions TArray<FUIInputAction>
---@field ActionOverrides TArray<FUIInputAction>
---@field AnalogCursorSettings FCommonAnalogCursorSettings
local UCommonUIInputSettings = {}

---@class UCommonUILibrary : UBlueprintFunctionLibrary
local UCommonUILibrary = {}

---@class UCommonUIRichTextData : UObject
---@field InlineIconSet UDataTable
local UCommonUIRichTextData = {}

---@class UCommonUISettings : UObject
---@field bAutoLoadData boolean
---@field DefaultImageResourceObject TSoftObjectPtr<UObject>
---@field DefaultThrobberMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultRichTextDataClass TSoftClassPtr<UCommonUIRichTextData>
---@field DefaultImageResourceObjectInstance UObject
---@field DefaultThrobberMaterialInstance UMaterialInterface
---@field DefaultThrobberBrush FSlateBrush
---@field RichTextDataInstance UCommonUIRichTextData
local UCommonUISettings = {}

---@class UCommonUISubsystemBase : UGameInstanceSubsystem
local UCommonUISubsystemBase = {}

---@class UCommonUserWidget : UUserWidget
---@field bConsumePointerInput boolean
local UCommonUserWidget = {}

---@class UCommonVideoPlayer : UWidget
---@field Video UMediaSource
---@field MediaPlayer UMediaPlayer
---@field MediaTexture UMediaTexture
---@field VideoMaterial UMaterial
---@field SoundComponent UMediaSoundComponent
---@field VideoBrush FSlateBrush
local UCommonVideoPlayer = {}

---@class UCommonVisibilitySwitcher : UOverlay
---@field ShownVisibility ESlateVisibility
---@field ActiveWidgetIndex int32
---@field bAutoActivateSlot boolean
---@field bActivateFirstSlotOnAdding boolean
local UCommonVisibilitySwitcher = {}

---@class UCommonVisibilitySwitcherSlot : UOverlaySlot
local UCommonVisibilitySwitcherSlot = {}

---@class UCommonVisibilityWidgetBase : UCommonBorder
---@field VisibilityControls TMap<FName, boolean>
---@field bShowForGamepad boolean
---@field bShowForMouseAndKeyboard boolean
---@field bShowForTouch boolean
---@field VisibleType ESlateVisibility
---@field HiddenType ESlateVisibility
local UCommonVisibilityWidgetBase = {}

---@class UCommonVisualAttachment : USizeBox
---@field ContentAnchor FVector2D
local UCommonVisualAttachment = {}

---@class UCommonWidgetCarousel : UPanelWidget
---@field ActiveWidgetIndex int32
---@field OnCurrentPageIndexChanged FCommonWidgetCarouselOnCurrentPageIndexChanged
local UCommonWidgetCarousel = {}

---@class UCommonWidgetCarouselNavBar : UWidget
---@field ButtonWidgetType TSubclassOf<UCommonButtonBase>
---@field ButtonPadding FMargin
---@field LinkedCarousel UCommonWidgetCarousel
---@field ButtonGroup UCommonButtonGroupBase
---@field Buttons TArray<UCommonButtonBase>
local UCommonWidgetCarouselNavBar = {}

---@class UCommonWidgetGroupBase : UObject
local UCommonWidgetGroupBase = {}

---@class ULoadGuardSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local ULoadGuardSlot = {}

function ICommonPoolableWidgetInterface:OnAcquireFromPool() end

function ICommonPoolableWidgetInterface:OnReleaseToPool() end

function UCommonActionWidget:GetDisplayText() end

function UCommonActionWidget:GetIcon() end

function UCommonActionWidget:IsHeldAction() end

---@param bUsingGamepad boolean
function UCommonActionWidget:OnInputMethodChanged__DelegateSignature(bUsingGamepad) end

---@param InIconRimBrush FSlateBrush
function UCommonActionWidget:SetIconRimBrush(InIconRimBrush) end

---@param InputActionRow FDataTableRowHandle
function UCommonActionWidget:SetInputAction(InputActionRow) end

---@param NewInputActions TArray<FDataTableRowHandle>
function UCommonActionWidget:SetInputActions(NewInputActions) end

function UCommonActivatableWidget:ActivateWidget() end

function UCommonActivatableWidget:BP_GetDesiredFocusTarget() end

function UCommonActivatableWidget:BP_OnActivated() end

function UCommonActivatableWidget:BP_OnDeactivated() end

function UCommonActivatableWidget:BP_OnHandleBackAction() end

function UCommonActivatableWidget:DeactivateWidget() end

function UCommonActivatableWidget:IsActivated() end

---@param ActivatableWidgetClass TSubclassOf<UCommonActivatableWidget>
function UCommonActivatableWidgetContainerBase:BP_AddWidget(ActivatableWidgetClass) end

function UCommonActivatableWidgetContainerBase:ClearWidgets() end

function UCommonActivatableWidgetContainerBase:GetActiveWidget() end

---@param WidgetToRemove UCommonActivatableWidget
function UCommonActivatableWidgetContainerBase:RemoveWidget(WidgetToRemove) end

---@param bCanWrap boolean
function UCommonAnimatedSwitcher:ActivateNextWidget(bCanWrap) end

---@param bCanWrap boolean
function UCommonAnimatedSwitcher:ActivatePreviousWidget(bCanWrap) end

function UCommonAnimatedSwitcher:HasWidgets() end

---@param bDisableAnimation boolean
function UCommonAnimatedSwitcher:SetDisableTransitionAnimation(bDisableAnimation) end

---@param InStyle TSubclassOf<UCommonBorderStyle>
function UCommonBorder:SetStyle(InStyle) end

---@param Brush FSlateBrush
function UCommonBorderStyle:GetBackgroundBrush(Brush) end

---@param bShouldOnlyDisplayOwningPlayerActions boolean
function UCommonBoundActionBar:SetDisplayOwningPlayerActionsOnly(bShouldOnlyDisplayOwningPlayerActions) end

function UCommonBoundActionButton:OnUpdateInputAction() end

function UCommonButtonBase:BP_OnClicked() end

function UCommonButtonBase:BP_OnDeselected() end

function UCommonButtonBase:BP_OnDisabled() end

function UCommonButtonBase:BP_OnDoubleClicked() end

function UCommonButtonBase:BP_OnEnabled() end

function UCommonButtonBase:BP_OnHovered() end

function UCommonButtonBase:BP_OnSelected() end

function UCommonButtonBase:BP_OnUnhovered() end

function UCommonButtonBase:ClearSelection() end

---@param DisabledReason FText
function UCommonButtonBase:DisableButtonWithReason(DisabledReason) end

---@param OutButtonPadding FMargin
function UCommonButtonBase:GetCurrentButtonPadding(OutButtonPadding) end

---@param OutCustomPadding FMargin
function UCommonButtonBase:GetCurrentCustomPadding(OutCustomPadding) end

function UCommonButtonBase:GetCurrentTextStyle() end

function UCommonButtonBase:GetCurrentTextStyleClass() end

---@param InputActionRow FDataTableRowHandle
function UCommonButtonBase:GetInputAction(InputActionRow) end

function UCommonButtonBase:GetIsFocusable() end

function UCommonButtonBase:GetSelected() end

function UCommonButtonBase:GetShouldSelectUponReceivingFocus() end

function UCommonButtonBase:GetSingleMaterialStyleMID() end

function UCommonButtonBase:GetStyle() end

function UCommonButtonBase:HandleButtonClicked() end

function UCommonButtonBase:HandleButtonPressed() end

function UCommonButtonBase:HandleButtonReleased() end

function UCommonButtonBase:HandleFocusReceived() end

---@param bPassThrough boolean
function UCommonButtonBase:HandleTriggeringActionCommited(bPassThrough) end

function UCommonButtonBase:IsInteractionEnabled() end

function UCommonButtonBase:IsPressed() end

function UCommonButtonBase:NativeOnActionComplete() end

---@param HeldPercent float
function UCommonButtonBase:NativeOnActionProgress(HeldPercent) end

function UCommonButtonBase:OnActionComplete() end

---@param HeldPercent float
function UCommonButtonBase:OnActionProgress(HeldPercent) end

function UCommonButtonBase:OnCurrentTextStyleChanged() end

---@param CurrentInputType ECommonInputType
function UCommonButtonBase:OnInputMethodChanged(CurrentInputType) end

---@param NewTriggeredAction FDataTableRowHandle
function UCommonButtonBase:OnTriggeredInputActionChanged(NewTriggeredAction) end

---@param InClickMethod EButtonClickMethod::Type
function UCommonButtonBase:SetClickMethod(InClickMethod) end

---@param Sound USoundBase
function UCommonButtonBase:SetHoveredSoundOverride(Sound) end

---@param InProgressMaterialBrush FSlateBrush
---@param InProgressMaterialParam FName
function UCommonButtonBase:SetInputActionProgressMaterial(InProgressMaterialBrush, InProgressMaterialParam) end

---@param bInIsFocusable boolean
function UCommonButtonBase:SetIsFocusable(bInIsFocusable) end

---@param bInInteractableWhenSelected boolean
function UCommonButtonBase:SetIsInteractableWhenSelected(bInInteractableWhenSelected) end

---@param bInIsInteractionEnabled boolean
function UCommonButtonBase:SetIsInteractionEnabled(bInIsInteractionEnabled) end

---@param bInIsSelectable boolean
function UCommonButtonBase:SetIsSelectable(bInIsSelectable) end

---@param InSelected boolean
---@param bGiveClickFeedback boolean
function UCommonButtonBase:SetIsSelected(InSelected, bGiveClickFeedback) end

---@param bInIsToggleable boolean
function UCommonButtonBase:SetIsToggleable(bInIsToggleable) end

---@param InMinWidth int32
---@param InMinHeight int32
function UCommonButtonBase:SetMinDimensions(InMinWidth, InMinHeight) end

---@param InPressMethod EButtonPressMethod::Type
function UCommonButtonBase:SetPressMethod(InPressMethod) end

---@param Sound USoundBase
function UCommonButtonBase:SetPressedSoundOverride(Sound) end

---@param bInSelected boolean
---@param bAllowSound boolean
---@param bBroadcast boolean
function UCommonButtonBase:SetSelectedInternal(bInSelected, bAllowSound, bBroadcast) end

---@param bInShouldSelectUponReceivingFocus boolean
function UCommonButtonBase:SetShouldSelectUponReceivingFocus(bInShouldSelectUponReceivingFocus) end

---@param bInShouldUseFallbackDefaultInputAction boolean
function UCommonButtonBase:SetShouldUseFallbackDefaultInputAction(bInShouldUseFallbackDefaultInputAction) end

---@param InStyle TSubclassOf<UCommonButtonStyle>
function UCommonButtonBase:SetStyle(InStyle) end

function UCommonButtonBase:SetStyleRandom() end

---@param InTouchMethod EButtonTouchMethod::Type
function UCommonButtonBase:SetTouchMethod(InTouchMethod) end

---@param InputActionRow FDataTableRowHandle
function UCommonButtonBase:SetTriggeredInputAction(InputActionRow) end

---@param InputActionRow FDataTableRowHandle
function UCommonButtonBase:SetTriggeringInputAction(InputActionRow) end

function UCommonButtonBase:StopDoubleClickPropagation() end

function UCommonButtonGroupBase:DeselectAll() end

---@param ButtonToFind UCommonButtonBase
function UCommonButtonGroupBase:FindButtonIndex(ButtonToFind) end

---@param Index int32
function UCommonButtonGroupBase:GetButtonBaseAtIndex(Index) end

function UCommonButtonGroupBase:GetButtonCount() end

function UCommonButtonGroupBase:GetHoveredButtonIndex() end

function UCommonButtonGroupBase:GetSelectedButtonBase() end

function UCommonButtonGroupBase:GetSelectedButtonIndex() end

function UCommonButtonGroupBase:HasAnyButtons() end

---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnButtonBaseHovered(BaseButton) end

---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnButtonBaseUnhovered(BaseButton) end

---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnHandleButtonBaseClicked(BaseButton) end

---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnHandleButtonBaseDoubleClicked(BaseButton) end

---@param BaseButton UCommonButtonBase
---@param bIsSelected boolean
function UCommonButtonGroupBase:OnSelectionStateChangedBase(BaseButton, bIsSelected) end

---@param ButtonIndex int32
function UCommonButtonGroupBase:SelectButtonAtIndex(ButtonIndex) end

---@param bAllowWrap boolean
function UCommonButtonGroupBase:SelectNextButton(bAllowWrap) end

---@param bAllowWrap boolean
function UCommonButtonGroupBase:SelectPreviousButton(bAllowWrap) end

---@param bRequireSelection boolean
function UCommonButtonGroupBase:SetSelectionRequired(bRequireSelection) end

---@param OutButtonPadding FMargin
function UCommonButtonStyle:GetButtonPadding(OutButtonPadding) end

---@param OutCustomPadding FMargin
function UCommonButtonStyle:GetCustomPadding(OutCustomPadding) end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetDisabledBrush(Brush) end

function UCommonButtonStyle:GetDisabledTextStyle() end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetMaterialBrush(Brush) end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalBaseBrush(Brush) end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalHoveredBrush(Brush) end

function UCommonButtonStyle:GetNormalHoveredTextStyle() end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalPressedBrush(Brush) end

function UCommonButtonStyle:GetNormalTextStyle() end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedBaseBrush(Brush) end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedHoveredBrush(Brush) end

function UCommonButtonStyle:GetSelectedHoveredTextStyle() end

---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedPressedBrush(Brush) end

function UCommonButtonStyle:GetSelectedTextStyle() end

function UCommonDateTimeTextBlock:GetDateTime() end

---@param InCompletionText FText
function UCommonDateTimeTextBlock:SetCountDownCompletionText(InCompletionText) end

---@param InDateTime FDateTime
---@param bShowAsCountdown boolean
---@param InRefreshDelay float
function UCommonDateTimeTextBlock:SetDateTimeValue(InDateTime, bShowAsCountdown, InRefreshDelay) end

---@param InTimespan FTimespan
function UCommonDateTimeTextBlock:SetTimespanValue(InTimespan) end

function UCommonLazyImage:IsLoading() end

---@param LazyObject TSoftObjectPtr<UObject>
---@param bMatchTextureSize boolean
function UCommonLazyImage:SetBrushFromLazyDisplayAsset(LazyObject, bMatchTextureSize) end

---@param LazyMaterial TSoftObjectPtr<UMaterialInterface>
function UCommonLazyImage:SetBrushFromLazyMaterial(LazyMaterial) end

---@param LazyTexture TSoftObjectPtr<UTexture2D>
---@param bMatchSize boolean
function UCommonLazyImage:SetBrushFromLazyTexture(LazyTexture, bMatchSize) end

---@param TextureParamName FName
function UCommonLazyImage:SetMaterialTextureParamName(TextureParamName) end

function UCommonLazyWidget:GetContent() end

function UCommonLazyWidget:IsLoading() end

---@param SoftWidget TSoftClassPtr<UUserWidget>
function UCommonLazyWidget:SetLazyContent(SoftWidget) end

---@param InEntrySpacing float
function UCommonListView:SetEntrySpacing(InEntrySpacing) end

---@param InLazyAsset TSoftObjectPtr<UObject>
---@param OnAssetLoaded FBP_GuardAndLoadAssetOnAssetLoaded
function UCommonLoadGuard:BP_GuardAndLoadAsset(InLazyAsset, OnAssetLoaded) end

function UCommonLoadGuard:IsLoading() end

---@param Object UObject
function UCommonLoadGuard:OnAssetLoaded__DelegateSignature(Object) end

---@param bInIsLoading boolean
function UCommonLoadGuard:SetIsLoading(bInIsLoading) end

---@param InLoadingText FText
function UCommonLoadGuard:SetLoadingText(InLoadingText) end

function UCommonNumericTextBlock:GetTargetValue() end

---@param TargetValue float
---@param MaximumInterpolationDuration float
---@param MinimumChangeRate float
---@param OutroOffset float
function UCommonNumericTextBlock:InterpolateToValue(TargetValue, MaximumInterpolationDuration, MinimumChangeRate, OutroOffset) end

function UCommonNumericTextBlock:IsInterpolatingNumericValue() end

---@param NumericTextBlock UCommonNumericTextBlock
---@param HadCompleted boolean
function UCommonNumericTextBlock:OnInterpolationEnded__DelegateSignature(NumericTextBlock, HadCompleted) end

---@param NumericTextBlock UCommonNumericTextBlock
function UCommonNumericTextBlock:OnInterpolationStarted__DelegateSignature(NumericTextBlock) end

---@param NumericTextBlock UCommonNumericTextBlock
---@param LastValue float
---@param NewValue float
function UCommonNumericTextBlock:OnInterpolationUpdated__DelegateSignature(NumericTextBlock, LastValue, NewValue) end

---@param NumericTextBlock UCommonNumericTextBlock
function UCommonNumericTextBlock:OnOutro__DelegateSignature(NumericTextBlock) end

---@param NewValue float
function UCommonNumericTextBlock:SetCurrentValue(NewValue) end

---@param InNumericType ECommonNumericType
function UCommonNumericTextBlock:SetNumericType(InNumericType) end

---@param Index int32
function UCommonRotator:BP_OnOptionSelected(Index) end

---@param Count int32
function UCommonRotator:BP_OnOptionsPopulated(Count) end

function UCommonRotator:GetSelectedIndex() end

function UCommonRotator:GetSelectedText() end

---@param Labels TArray<FText>
function UCommonRotator:PopulateTextLabels(Labels) end

---@param InValue int32
function UCommonRotator:SetSelectedItem(InValue) end

function UCommonRotator:ShiftTextLeft() end

function UCommonRotator:ShiftTextRight() end

---@param TabNameID FName
---@param Reason FText
function UCommonTabListWidgetBase:DisableTabWithReason(TabNameID, Reason) end

function UCommonTabListWidgetBase:GetActiveTab() end

function UCommonTabListWidgetBase:GetLinkedSwitcher() end

function UCommonTabListWidgetBase:GetSelectedTabId() end

---@param TabNameID FName
function UCommonTabListWidgetBase:GetTabButtonBaseByID(TabNameID) end

function UCommonTabListWidgetBase:GetTabCount() end

---@param Index int32
function UCommonTabListWidgetBase:GetTabIdAtIndex(Index) end

---@param bPassThrough boolean
function UCommonTabListWidgetBase:HandleNextTabInputAction(bPassThrough) end

function UCommonTabListWidgetBase:HandlePostLinkedSwitcherChanged_BP() end

function UCommonTabListWidgetBase:HandlePreLinkedSwitcherChanged_BP() end

---@param bPassThrough boolean
function UCommonTabListWidgetBase:HandlePreviousTabInputAction(bPassThrough) end

---@param SelectedTabButton UCommonButtonBase
---@param ButtonIndex int32
function UCommonTabListWidgetBase:HandleTabButtonSelected(SelectedTabButton, ButtonIndex) end

---@param TabNameID FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:HandleTabCreation(TabNameID, TabButton) end

---@param TabNameID FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:HandleTabRemoval(TabNameID, TabButton) end

---@param TabId FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:OnTabButtonCreation__DelegateSignature(TabId, TabButton) end

---@param TabId FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:OnTabButtonRemoval__DelegateSignature(TabId, TabButton) end

---@param TabId FName
function UCommonTabListWidgetBase:OnTabSelected__DelegateSignature(TabId) end

---@param TabNameID FName
---@param ButtonWidgetType TSubclassOf<UCommonButtonBase>
---@param ContentWidget UWidget
function UCommonTabListWidgetBase:RegisterTab(TabNameID, ButtonWidgetType, ContentWidget) end

function UCommonTabListWidgetBase:RemoveAllTabs() end

---@param TabNameID FName
function UCommonTabListWidgetBase:RemoveTab(TabNameID) end

---@param TabNameID FName
---@param bSuppressClickFeedback boolean
function UCommonTabListWidgetBase:SelectTabByID(TabNameID, bSuppressClickFeedback) end

---@param CommonSwitcher UCommonAnimatedSwitcher
function UCommonTabListWidgetBase:SetLinkedSwitcher(CommonSwitcher) end

---@param bShouldListen boolean
function UCommonTabListWidgetBase:SetListeningForInput(bShouldListen) end

---@param TabNameID FName
---@param bEnable boolean
function UCommonTabListWidgetBase:SetTabEnabled(TabNameID, bEnable) end

---@param TabNameID FName
---@param bEnable boolean
function UCommonTabListWidgetBase:SetTabInteractionEnabled(TabNameID, bEnable) end

---@param TabNameID FName
---@param NewVisibility ESlateVisibility
function UCommonTabListWidgetBase:SetTabVisibility(TabNameID, NewVisibility) end

function UCommonTextBlock:ResetScrollState() end

---@param InStyle TSubclassOf<UCommonTextStyle>
function UCommonTextBlock:SetStyle(InStyle) end

---@param bUseAllCaps boolean
function UCommonTextBlock:SetTextCase(bUseAllCaps) end

---@param InWrapTextAt int32
function UCommonTextBlock:SetWrapTextWidth(InWrapTextAt) end

---@param OutColor FLinearColor
function UCommonTextStyle:GetColor(OutColor) end

function UCommonTextStyle:GetEmptyLineHeightPercentage() end

---@param OutFont FSlateFontInfo
function UCommonTextStyle:GetFont(OutFont) end

function UCommonTextStyle:GetLineHeightPercentage() end

---@param OutMargin FMargin
function UCommonTextStyle:GetMargin(OutMargin) end

---@param OutColor FLinearColor
function UCommonTextStyle:GetShadowColor(OutColor) end

---@param OutShadowOffset FVector2D
function UCommonTextStyle:GetShadowOffset(OutShadowOffset) end

---@param OutStrikeBrush FSlateBrush
function UCommonTextStyle:GetStrikeBrush(OutStrikeBrush) end

function UCommonTextStyle:ResolveFont() end

---@param StartingWidget UWidget
---@param Type TSubclassOf<UWidget>
function UCommonUILibrary:FindParentWidgetOfType(StartingWidget, Type) end

---@param InputActionRowHandle FDataTableRowHandle
---@param InputType ECommonInputType
---@param GamepadName FName
function UCommonUISubsystemBase:GetInputActionButtonIcon(InputActionRowHandle, InputType, GamepadName) end

---@param bInConsumePointerInput boolean
function UCommonUserWidget:SetConsumePointerInput(bInConsumePointerInput) end

function UCommonVisibilitySwitcher:ActivateVisibleSlot() end

function UCommonVisibilitySwitcher:DeactivateVisibleSlot() end

---@param bAllowWrapping boolean
function UCommonVisibilitySwitcher:DecrementActiveWidgetIndex(bAllowWrapping) end

function UCommonVisibilitySwitcher:GetActiveWidget() end

function UCommonVisibilitySwitcher:GetActiveWidgetIndex() end

---@param bAllowWrapping boolean
function UCommonVisibilitySwitcher:IncrementActiveWidgetIndex(bAllowWrapping) end

---@param Widget UWidget
function UCommonVisibilitySwitcher:SetActiveWidget(Widget) end

---@param Index int32
function UCommonVisibilitySwitcher:SetActiveWidgetIndex(Index) end

function UCommonVisibilityWidgetBase:GetRegisteredPlatforms() end

---@param ScrollInterval float
function UCommonWidgetCarousel:BeginAutoScrolling(ScrollInterval) end

function UCommonWidgetCarousel:EndAutoScrolling() end

function UCommonWidgetCarousel:GetActiveWidgetIndex() end

---@param Index int32
function UCommonWidgetCarousel:GetWidgetAtIndex(Index) end

function UCommonWidgetCarousel:NextPage() end

function UCommonWidgetCarousel:PreviousPage() end

---@param Widget UWidget
function UCommonWidgetCarousel:SetActiveWidget(Widget) end

---@param Index int32
function UCommonWidgetCarousel:SetActiveWidgetIndex(Index) end

---@param AssociatedButton UCommonButtonBase
---@param ButtonIndex int32
function UCommonWidgetCarouselNavBar:HandleButtonClicked(AssociatedButton, ButtonIndex) end

---@param CommonCarousel UCommonWidgetCarousel
---@param PageIndex int32
function UCommonWidgetCarouselNavBar:HandlePageChanged(CommonCarousel, PageIndex) end

---@param CommonCarousel UCommonWidgetCarousel
function UCommonWidgetCarouselNavBar:SetLinkedCarousel(CommonCarousel) end

---@param InWidget UWidget
function UCommonWidgetGroupBase:AddWidget(InWidget) end

function UCommonWidgetGroupBase:RemoveAll() end

---@param InWidget UWidget
function UCommonWidgetGroupBase:RemoveWidget(InWidget) end

---@param InHorizontalAlignment EHorizontalAlignment
function ULoadGuardSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function ULoadGuardSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function ULoadGuardSlot:SetVerticalAlignment(InVerticalAlignment) end
