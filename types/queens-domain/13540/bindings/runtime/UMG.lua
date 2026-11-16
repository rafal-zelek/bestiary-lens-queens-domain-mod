---@meta

---@class FAnchorData
---@field Offsets FMargin
---@field Anchors FAnchors
---@field Alignment FVector2D
local FAnchorData = {}

---@class FAnimationEventBinding
---@field Animation UWidgetAnimation
---@field Delegate FAnimationEventBindingDelegate
---@field AnimationEvent EWidgetAnimationEvent
---@field UserTag FName
local FAnimationEventBinding = {}

---@class FBlueprintWidgetAnimationDelegateBinding
---@field Action EWidgetAnimationEvent
---@field AnimationToBind FName
---@field FunctionNameToBind FName
---@field UserTag FName
local FBlueprintWidgetAnimationDelegateBinding = {}

---@class FDelegateRuntimeBinding
---@field ObjectName FString
---@field PropertyName FName
---@field FunctionName FName
---@field SourcePath FDynamicPropertyPath
---@field Kind EBindingKind
local FDelegateRuntimeBinding = {}

---@class FDynamicPropertyPath : FCachedPropertyPath
local FDynamicPropertyPath = {}

---@class FEventReply
local FEventReply = {}

---@class FMovieScene2DTransformMask
---@field Mask uint32
local FMovieScene2DTransformMask = {}

---@class FMovieSceneWidgetMaterialSectionTemplate : FMovieSceneParameterSectionTemplate
---@field BrushPropertyNamePath TArray<FName>
local FMovieSceneWidgetMaterialSectionTemplate = {}

---@class FNamedSlotBinding
---@field Name FName
---@field Content UWidget
local FNamedSlotBinding = {}

---@class FPaintContext
local FPaintContext = {}

---@class FRadialBoxSettings
---@field StartingAngle float
---@field bDistributeItemsEvenly boolean
---@field AngleBetweenItems float
---@field SectorCentralAngle float
local FRadialBoxSettings = {}

---@class FRichImageRow : FTableRowBase
---@field Brush FSlateBrush
local FRichImageRow = {}

---@class FRichTextStyleRow : FTableRowBase
---@field TextStyle FTextBlockStyle
local FRichTextStyleRow = {}

---@class FShapedTextOptions
---@field bOverride_TextShapingMethod boolean
---@field bOverride_TextFlowDirection boolean
---@field TextShapingMethod ETextShapingMethod
---@field TextFlowDirection ETextFlowDirection
local FShapedTextOptions = {}

---@class FSlateChildSize
---@field Value float
---@field SizeRule ESlateSizeRule::Type
local FSlateChildSize = {}

---@class FSlateMeshVertex
---@field Position FVector2D
---@field Color FColor
---@field UV0 FVector2D
---@field UV1 FVector2D
---@field UV2 FVector2D
---@field UV3 FVector2D
---@field UV4 FVector2D
---@field UV5 FVector2D
local FSlateMeshVertex = {}

---@class FUserWidgetPool
---@field ActiveWidgets TArray<UUserWidget>
---@field InactiveWidgets TArray<UUserWidget>
local FUserWidgetPool = {}

---@class FWidgetAnimationBinding
---@field WidgetName FName
---@field SlotWidgetName FName
---@field AnimationGuid FGuid
---@field bIsRootWidget boolean
local FWidgetAnimationBinding = {}

---@class FWidgetComponentInstanceData : FSceneComponentInstanceData
local FWidgetComponentInstanceData = {}

---@class FWidgetNavigationData
---@field Rule EUINavigationRule
---@field WidgetToFocus FName
---@field Widget TWeakObjectPtr<UWidget>
---@field CustomDelegate FWidgetNavigationDataCustomDelegate
local FWidgetNavigationData = {}

---@class FWidgetTransform
---@field Translation FVector2D
---@field Scale FVector2D
---@field Shear FVector2D
---@field Angle float
local FWidgetTransform = {}

---@class INamedSlotInterface : IInterface
local INamedSlotInterface = {}

---@class IUserListEntry : IInterface
local IUserListEntry = {}

---@class IUserObjectListEntry : IUserListEntry
local IUserObjectListEntry = {}

---@class UAsyncTaskDownloadImage : UBlueprintAsyncActionBase
---@field OnSuccess FAsyncTaskDownloadImageOnSuccess
---@field OnFail FAsyncTaskDownloadImageOnFail
local UAsyncTaskDownloadImage = {}

---@class UBackgroundBlur : UContentWidget
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field bApplyAlphaToBlur boolean
---@field BlurStrength float
---@field bOverrideAutoRadiusCalculation boolean
---@field BlurRadius int32
---@field LowQualityFallbackBrush FSlateBrush
local UBackgroundBlur = {}

---@class UBackgroundBlurSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UBackgroundBlurSlot = {}

---@class UBoolBinding : UPropertyBinding
local UBoolBinding = {}

---@class UBorder : UContentWidget
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field bShowEffectWhenDisabled boolean
---@field ContentColorAndOpacity FLinearColor
---@field ContentColorAndOpacityDelegate FBorderContentColorAndOpacityDelegate
---@field Padding FMargin
---@field Background FSlateBrush
---@field BackgroundDelegate FBorderBackgroundDelegate
---@field BrushColor FLinearColor
---@field BrushColorDelegate FBorderBrushColorDelegate
---@field DesiredSizeScale FVector2D
---@field bFlipForRightToLeftFlowDirection boolean
---@field OnMouseButtonDownEvent FBorderOnMouseButtonDownEvent
---@field OnMouseButtonUpEvent FBorderOnMouseButtonUpEvent
---@field OnMouseMoveEvent FBorderOnMouseMoveEvent
---@field OnMouseDoubleClickEvent FBorderOnMouseDoubleClickEvent
local UBorder = {}

---@class UBorderSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UBorderSlot = {}

---@class UBrushBinding : UPropertyBinding
local UBrushBinding = {}

---@class UButton : UContentWidget
---@field Style USlateWidgetStyleAsset
---@field WidgetStyle FButtonStyle
---@field ColorAndOpacity FLinearColor
---@field BackgroundColor FLinearColor
---@field ClickMethod EButtonClickMethod::Type
---@field TouchMethod EButtonTouchMethod::Type
---@field PressMethod EButtonPressMethod::Type
---@field IsFocusable boolean
---@field OnClicked FButtonOnClicked
---@field OnPressed FButtonOnPressed
---@field OnReleased FButtonOnReleased
---@field OnHovered FButtonOnHovered
---@field OnUnhovered FButtonOnUnhovered
local UButton = {}

---@class UButtonSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UButtonSlot = {}

---@class UCanvasPanel : UPanelWidget
local UCanvasPanel = {}

---@class UCanvasPanelSlot : UPanelSlot
---@field LayoutData FAnchorData
---@field bAutoSize boolean
---@field ZOrder int32
local UCanvasPanelSlot = {}

---@class UCheckBox : UContentWidget
---@field CheckedState ECheckBoxState
---@field CheckedStateDelegate FCheckBoxCheckedStateDelegate
---@field WidgetStyle FCheckBoxStyle
---@field Style USlateWidgetStyleAsset
---@field UncheckedImage USlateBrushAsset
---@field UncheckedHoveredImage USlateBrushAsset
---@field UncheckedPressedImage USlateBrushAsset
---@field CheckedImage USlateBrushAsset
---@field CheckedHoveredImage USlateBrushAsset
---@field CheckedPressedImage USlateBrushAsset
---@field UndeterminedImage USlateBrushAsset
---@field UndeterminedHoveredImage USlateBrushAsset
---@field UndeterminedPressedImage USlateBrushAsset
---@field HorizontalAlignment EHorizontalAlignment
---@field Padding FMargin
---@field BorderBackgroundColor FSlateColor
---@field ClickMethod EButtonClickMethod::Type
---@field TouchMethod EButtonTouchMethod::Type
---@field PressMethod EButtonPressMethod::Type
---@field IsFocusable boolean
---@field OnCheckStateChanged FCheckBoxOnCheckStateChanged
local UCheckBox = {}

---@class UCheckedStateBinding : UPropertyBinding
local UCheckedStateBinding = {}

---@class UCircularThrobber : UWidget
---@field NumberOfPieces int32
---@field Period float
---@field Radius float
---@field PieceImage USlateBrushAsset
---@field Image FSlateBrush
---@field bEnableRadius boolean
local UCircularThrobber = {}

---@class UColorBinding : UPropertyBinding
local UColorBinding = {}

---@class UComboBox : UWidget
---@field Items TArray<UObject>
---@field OnGenerateWidgetEvent FComboBoxOnGenerateWidgetEvent
---@field bIsFocusable boolean
local UComboBox = {}

---@class UComboBoxString : UWidget
---@field DefaultOptions TArray<FString>
---@field SelectedOption FString
---@field WidgetStyle FComboBoxStyle
---@field ItemStyle FTableRowStyle
---@field ContentPadding FMargin
---@field MaxListHeight float
---@field HasDownArrow boolean
---@field EnableGamepadNavigationMode boolean
---@field Font FSlateFontInfo
---@field ForegroundColor FSlateColor
---@field bIsFocusable boolean
---@field OnGenerateWidgetEvent FComboBoxStringOnGenerateWidgetEvent
---@field OnSelectionChanged FComboBoxStringOnSelectionChanged
---@field OnOpening FComboBoxStringOnOpening
local UComboBoxString = {}

---@class UContentWidget : UPanelWidget
local UContentWidget = {}

---@class UDefault__WidgetBlueprintGeneratedClass
local UDefault__WidgetBlueprintGeneratedClass = {}

---@class UDragDropOperation : UObject
---@field Tag FString
---@field Payload UObject
---@field DefaultDragVisual UWidget
---@field Pivot EDragPivot
---@field Offset FVector2D
---@field OnDrop FDragDropOperationOnDrop
---@field OnDragCancelled FDragDropOperationOnDragCancelled
---@field OnDragged FDragDropOperationOnDragged
local UDragDropOperation = {}

---@class UDynamicEntryBox : UDynamicEntryBoxBase
---@field EntryWidgetClass TSubclassOf<UUserWidget>
local UDynamicEntryBox = {}

---@class UDynamicEntryBoxBase : UWidget
---@field EntryBoxType EDynamicBoxType
---@field EntrySpacing FVector2D
---@field SpacingPattern TArray<FVector2D>
---@field EntrySizeRule FSlateChildSize
---@field EntryHorizontalAlignment EHorizontalAlignment
---@field EntryVerticalAlignment EVerticalAlignment
---@field MaxElementSize int32
---@field RadialBoxSettings FRadialBoxSettings
---@field EntryWidgetPool FUserWidgetPool
local UDynamicEntryBoxBase = {}

---@class UEditableText : UWidget
---@field Text FText
---@field TextDelegate FEditableTextTextDelegate
---@field HintText FText
---@field HintTextDelegate FEditableTextHintTextDelegate
---@field WidgetStyle FEditableTextStyle
---@field Style USlateWidgetStyleAsset
---@field BackgroundImageSelected USlateBrushAsset
---@field BackgroundImageComposing USlateBrushAsset
---@field CaretImage USlateBrushAsset
---@field Font FSlateFontInfo
---@field ColorAndOpacity FSlateColor
---@field IsReadOnly boolean
---@field IsPassword boolean
---@field MinimumDesiredWidth float
---@field IsCaretMovedWhenGainFocus boolean
---@field SelectAllTextWhenFocused boolean
---@field RevertTextOnEscape boolean
---@field ClearKeyboardFocusOnCommit boolean
---@field SelectAllTextOnCommit boolean
---@field AllowContextMenu boolean
---@field KeyboardType EVirtualKeyboardType::Type
---@field VirtualKeyboardOptions FVirtualKeyboardOptions
---@field VirtualKeyboardTrigger EVirtualKeyboardTrigger
---@field VirtualKeyboardDismissAction EVirtualKeyboardDismissAction
---@field Justification ETextJustify::Type
---@field ShapedTextOptions FShapedTextOptions
---@field OnTextChanged FEditableTextOnTextChanged
---@field OnTextCommitted FEditableTextOnTextCommitted
local UEditableText = {}

---@class UEditableTextBox : UWidget
---@field Text FText
---@field TextDelegate FEditableTextBoxTextDelegate
---@field WidgetStyle FEditableTextBoxStyle
---@field Style USlateWidgetStyleAsset
---@field HintText FText
---@field HintTextDelegate FEditableTextBoxHintTextDelegate
---@field Font FSlateFontInfo
---@field ForegroundColor FLinearColor
---@field BackgroundColor FLinearColor
---@field ReadOnlyForegroundColor FLinearColor
---@field IsReadOnly boolean
---@field IsPassword boolean
---@field MinimumDesiredWidth float
---@field Padding FMargin
---@field IsCaretMovedWhenGainFocus boolean
---@field SelectAllTextWhenFocused boolean
---@field RevertTextOnEscape boolean
---@field ClearKeyboardFocusOnCommit boolean
---@field SelectAllTextOnCommit boolean
---@field AllowContextMenu boolean
---@field KeyboardType EVirtualKeyboardType::Type
---@field VirtualKeyboardOptions FVirtualKeyboardOptions
---@field VirtualKeyboardTrigger EVirtualKeyboardTrigger
---@field VirtualKeyboardDismissAction EVirtualKeyboardDismissAction
---@field Justification ETextJustify::Type
---@field ShapedTextOptions FShapedTextOptions
---@field OnTextChanged FEditableTextBoxOnTextChanged
---@field OnTextCommitted FEditableTextBoxOnTextCommitted
local UEditableTextBox = {}

---@class UExpandableArea : UWidget
---@field Style FExpandableAreaStyle
---@field BorderBrush FSlateBrush
---@field BorderColor FSlateColor
---@field bIsExpanded boolean
---@field MaxHeight float
---@field HeaderPadding FMargin
---@field AreaPadding FMargin
---@field OnExpansionChanged FExpandableAreaOnExpansionChanged
---@field HeaderContent UWidget
---@field BodyContent UWidget
local UExpandableArea = {}

---@class UFloatBinding : UPropertyBinding
local UFloatBinding = {}

---@class UGridPanel : UPanelWidget
---@field ColumnFill TArray<float>
---@field RowFill TArray<float>
local UGridPanel = {}

---@class UGridSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field Row int32
---@field RowSpan int32
---@field Column int32
---@field ColumnSpan int32
---@field Layer int32
---@field Nudge FVector2D
local UGridSlot = {}

---@class UHorizontalBox : UPanelWidget
local UHorizontalBox = {}

---@class UHorizontalBoxSlot : UPanelSlot
---@field Padding FMargin
---@field Size FSlateChildSize
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UHorizontalBoxSlot = {}

---@class UImage : UWidget
---@field Brush FSlateBrush
---@field BrushDelegate FImageBrushDelegate
---@field ColorAndOpacity FLinearColor
---@field ColorAndOpacityDelegate FImageColorAndOpacityDelegate
---@field bFlipForRightToLeftFlowDirection boolean
---@field OnMouseButtonDownEvent FImageOnMouseButtonDownEvent
local UImage = {}

---@class UInputKeySelector : UWidget
---@field WidgetStyle FButtonStyle
---@field TextStyle FTextBlockStyle
---@field SelectedKey FInputChord
---@field Font FSlateFontInfo
---@field Margin FMargin
---@field ColorAndOpacity FLinearColor
---@field KeySelectionText FText
---@field NoKeySpecifiedText FText
---@field bAllowModifierKeys boolean
---@field bAllowGamepadKeys boolean
---@field EscapeKeys TArray<FKey>
---@field OnKeySelected FInputKeySelectorOnKeySelected
---@field OnIsSelectingKeyChanged FInputKeySelectorOnIsSelectingKeyChanged
local UInputKeySelector = {}

---@class UInt32Binding : UPropertyBinding
local UInt32Binding = {}

---@class UInvalidationBox : UContentWidget
---@field bCanCache boolean
---@field CacheRelativeTransforms boolean
local UInvalidationBox = {}

---@class UListView : UListViewBase
---@field Orientation EOrientation
---@field SelectionMode ESelectionMode::Type
---@field ConsumeMouseWheel EConsumeMouseWheel
---@field bClearSelectionOnClick boolean
---@field bIsFocusable boolean
---@field EntrySpacing float
---@field bReturnFocusToSelection boolean
---@field ListItems TArray<UObject>
---@field BP_OnEntryInitialized FListViewBP_OnEntryInitialized
---@field BP_OnItemClicked FListViewBP_OnItemClicked
---@field BP_OnItemDoubleClicked FListViewBP_OnItemDoubleClicked
---@field BP_OnItemIsHoveredChanged FListViewBP_OnItemIsHoveredChanged
---@field BP_OnItemSelectionChanged FListViewBP_OnItemSelectionChanged
---@field BP_OnItemScrolledIntoView FListViewBP_OnItemScrolledIntoView
local UListView = {}

---@class UListViewBase : UWidget
---@field EntryWidgetClass TSubclassOf<UUserWidget>
---@field bAllowOverscroll boolean
---@field WheelScrollMultiplier float
---@field bEnableScrollAnimation boolean
---@field bEnableFixedLineOffset boolean
---@field FixedLineScrollOffset float
---@field BP_OnEntryGenerated FListViewBaseBP_OnEntryGenerated
---@field BP_OnEntryReleased FListViewBaseBP_OnEntryReleased
---@field EntryWidgetPool FUserWidgetPool
local UListViewBase = {}

---@class UListViewDesignerPreviewItem : UObject
local UListViewDesignerPreviewItem = {}

---@class UMenuAnchor : UContentWidget
---@field MenuClass TSubclassOf<UUserWidget>
---@field OnGetMenuContentEvent FMenuAnchorOnGetMenuContentEvent
---@field OnGetUserMenuContentEvent FMenuAnchorOnGetUserMenuContentEvent
---@field Placement EMenuPlacement
---@field bFitInWindow boolean
---@field ShouldDeferPaintingAfterWindowContent boolean
---@field UseApplicationMenuStack boolean
---@field OnMenuOpenChanged FMenuAnchorOnMenuOpenChanged
local UMenuAnchor = {}

---@class UMouseCursorBinding : UPropertyBinding
local UMouseCursorBinding = {}

---@class UMovieScene2DTransformPropertySystem : UMovieScenePropertySystem
local UMovieScene2DTransformPropertySystem = {}

---@class UMovieScene2DTransformSection : UMovieSceneSection
---@field TransformMask FMovieScene2DTransformMask
---@field Translation FMovieSceneFloatChannel
---@field Rotation FMovieSceneFloatChannel
---@field Scale FMovieSceneFloatChannel
---@field Shear FMovieSceneFloatChannel
local UMovieScene2DTransformSection = {}

---@class UMovieScene2DTransformTrack : UMovieScenePropertyTrack
local UMovieScene2DTransformTrack = {}

---@class UMovieSceneMarginPropertySystem : UMovieScenePropertySystem
local UMovieSceneMarginPropertySystem = {}

---@class UMovieSceneMarginSection : UMovieSceneSection
---@field TopCurve FMovieSceneFloatChannel
---@field LeftCurve FMovieSceneFloatChannel
---@field RightCurve FMovieSceneFloatChannel
---@field BottomCurve FMovieSceneFloatChannel
local UMovieSceneMarginSection = {}

---@class UMovieSceneMarginTrack : UMovieScenePropertyTrack
local UMovieSceneMarginTrack = {}

---@class UMovieSceneWidgetMaterialTrack : UMovieSceneMaterialTrack
---@field BrushPropertyNamePath TArray<FName>
---@field TrackName FName
local UMovieSceneWidgetMaterialTrack = {}

---@class UMultiLineEditableText : UTextLayoutWidget
---@field Text FText
---@field HintText FText
---@field HintTextDelegate FMultiLineEditableTextHintTextDelegate
---@field WidgetStyle FTextBlockStyle
---@field bIsReadOnly boolean
---@field Font FSlateFontInfo
---@field SelectAllTextWhenFocused boolean
---@field ClearTextSelectionOnFocusLoss boolean
---@field RevertTextOnEscape boolean
---@field ClearKeyboardFocusOnCommit boolean
---@field AllowContextMenu boolean
---@field VirtualKeyboardOptions FVirtualKeyboardOptions
---@field VirtualKeyboardDismissAction EVirtualKeyboardDismissAction
---@field OnTextChanged FMultiLineEditableTextOnTextChanged
---@field OnTextCommitted FMultiLineEditableTextOnTextCommitted
local UMultiLineEditableText = {}

---@class UMultiLineEditableTextBox : UTextLayoutWidget
---@field Text FText
---@field HintText FText
---@field HintTextDelegate FMultiLineEditableTextBoxHintTextDelegate
---@field WidgetStyle FEditableTextBoxStyle
---@field TextStyle FTextBlockStyle
---@field bIsReadOnly boolean
---@field AllowContextMenu boolean
---@field VirtualKeyboardOptions FVirtualKeyboardOptions
---@field VirtualKeyboardDismissAction EVirtualKeyboardDismissAction
---@field Style USlateWidgetStyleAsset
---@field Font FSlateFontInfo
---@field ForegroundColor FLinearColor
---@field BackgroundColor FLinearColor
---@field ReadOnlyForegroundColor FLinearColor
---@field OnTextChanged FMultiLineEditableTextBoxOnTextChanged
---@field OnTextCommitted FMultiLineEditableTextBoxOnTextCommitted
local UMultiLineEditableTextBox = {}

---@class UNamedSlot : UContentWidget
local UNamedSlot = {}

---@class UNativeWidgetHost : UWidget
local UNativeWidgetHost = {}

---@class UOverlay : UPanelWidget
local UOverlay = {}

---@class UOverlaySlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UOverlaySlot = {}

---@class UPanelSlot : UVisual
---@field Parent UPanelWidget
---@field Content UWidget
local UPanelSlot = {}

---@class UPanelWidget : UWidget
---@field Slots TArray<UPanelSlot>
local UPanelWidget = {}

---@class UProgressBar : UWidget
---@field WidgetStyle FProgressBarStyle
---@field Style USlateWidgetStyleAsset
---@field BackgroundImage USlateBrushAsset
---@field FillImage USlateBrushAsset
---@field MarqueeImage USlateBrushAsset
---@field Percent float
---@field BarFillType EProgressBarFillType::Type
---@field bIsMarquee boolean
---@field BorderPadding FVector2D
---@field PercentDelegate FProgressBarPercentDelegate
---@field FillColorAndOpacity FLinearColor
---@field FillColorAndOpacityDelegate FProgressBarFillColorAndOpacityDelegate
local UProgressBar = {}

---@class UPropertyBinding : UObject
---@field SourceObject TWeakObjectPtr<UObject>
---@field SourcePath FDynamicPropertyPath
---@field DestinationProperty FName
local UPropertyBinding = {}

---@class URetainerBox : UContentWidget
---@field bRetainRender boolean
---@field RenderOnInvalidation boolean
---@field RenderOnPhase boolean
---@field Phase int32
---@field PhaseCount int32
---@field EffectMaterial UMaterialInterface
---@field TextureParameter FName
local URetainerBox = {}

---@class URichTextBlock : UTextLayoutWidget
---@field Text FText
---@field TextStyleSet UDataTable
---@field DecoratorClasses TArray<TSubclassOf<URichTextBlockDecorator>>
---@field bOverrideDefaultStyle boolean
---@field DefaultTextStyleOverride FTextBlockStyle
---@field MinDesiredWidth float
---@field TextTransformPolicy ETextTransformPolicy
---@field DefaultTextStyle FTextBlockStyle
---@field InstanceDecorators TArray<URichTextBlockDecorator>
local URichTextBlock = {}

---@class URichTextBlockDecorator : UObject
local URichTextBlockDecorator = {}

---@class URichTextBlockImageDecorator : URichTextBlockDecorator
---@field ImageSet UDataTable
local URichTextBlockImageDecorator = {}

---@class USafeZone : UContentWidget
---@field PadLeft boolean
---@field PadRight boolean
---@field PadTop boolean
---@field PadBottom boolean
local USafeZone = {}

---@class USafeZoneSlot : UPanelSlot
---@field bIsTitleSafe boolean
---@field SafeAreaScale FMargin
---@field HAlign EHorizontalAlignment
---@field VAlign EVerticalAlignment
---@field Padding FMargin
local USafeZoneSlot = {}

---@class UScaleBox : UContentWidget
---@field Stretch EStretch::Type
---@field StretchDirection EStretchDirection::Type
---@field UserSpecifiedScale float
---@field IgnoreInheritedScale boolean
local UScaleBox = {}

---@class UScaleBoxSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UScaleBoxSlot = {}

---@class UScrollBar : UWidget
---@field WidgetStyle FScrollBarStyle
---@field Style USlateWidgetStyleAsset
---@field bAlwaysShowScrollbar boolean
---@field bAlwaysShowScrollbarTrack boolean
---@field Orientation EOrientation
---@field Thickness FVector2D
---@field Padding FMargin
local UScrollBar = {}

---@class UScrollBox : UPanelWidget
---@field WidgetStyle FScrollBoxStyle
---@field WidgetBarStyle FScrollBarStyle
---@field Style USlateWidgetStyleAsset
---@field BarStyle USlateWidgetStyleAsset
---@field Orientation EOrientation
---@field ScrollBarVisibility ESlateVisibility
---@field ConsumeMouseWheel EConsumeMouseWheel
---@field ScrollbarThickness FVector2D
---@field ScrollbarPadding FMargin
---@field AlwaysShowScrollbar boolean
---@field AlwaysShowScrollbarTrack boolean
---@field AllowOverscroll boolean
---@field bAnimateWheelScrolling boolean
---@field NavigationDestination EDescendantScrollDestination
---@field NavigationScrollPadding float
---@field ScrollWhenFocusChanges EScrollWhenFocusChanges
---@field bAllowRightClickDragScrolling boolean
---@field WheelScrollMultiplier float
---@field OnUserScrolled FScrollBoxOnUserScrolled
local UScrollBox = {}

---@class UScrollBoxSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UScrollBoxSlot = {}

---@class USizeBox : UContentWidget
---@field WidthOverride float
---@field HeightOverride float
---@field MinDesiredWidth float
---@field MinDesiredHeight float
---@field MaxDesiredWidth float
---@field MaxDesiredHeight float
---@field MinAspectRatio float
---@field MaxAspectRatio float
---@field bOverride_WidthOverride boolean
---@field bOverride_HeightOverride boolean
---@field bOverride_MinDesiredWidth boolean
---@field bOverride_MinDesiredHeight boolean
---@field bOverride_MaxDesiredWidth boolean
---@field bOverride_MaxDesiredHeight boolean
---@field bOverride_MinAspectRatio boolean
---@field bOverride_MaxAspectRatio boolean
local USizeBox = {}

---@class USizeBoxSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local USizeBoxSlot = {}

---@class USlateAccessibleWidgetData : UObject
---@field bCanChildrenBeAccessible boolean
---@field AccessibleBehavior ESlateAccessibleBehavior
---@field AccessibleSummaryBehavior ESlateAccessibleBehavior
---@field AccessibleText FText
---@field AccessibleTextDelegate FSlateAccessibleWidgetDataAccessibleTextDelegate
---@field AccessibleSummaryText FText
---@field AccessibleSummaryTextDelegate FSlateAccessibleWidgetDataAccessibleSummaryTextDelegate
local USlateAccessibleWidgetData = {}

---@class USlateBlueprintLibrary : UBlueprintFunctionLibrary
local USlateBlueprintLibrary = {}

---@class USlateVectorArtData : UObject
---@field VertexData TArray<FSlateMeshVertex>
---@field IndexData TArray<uint32>
---@field Material UMaterialInterface
---@field ExtentMin FVector2D
---@field ExtentMax FVector2D
local USlateVectorArtData = {}

---@class USlider : UWidget
---@field Value float
---@field ValueDelegate FSliderValueDelegate
---@field MinValue float
---@field MaxValue float
---@field WidgetStyle FSliderStyle
---@field Orientation EOrientation
---@field SliderBarColor FLinearColor
---@field SliderHandleColor FLinearColor
---@field IndentHandle boolean
---@field Locked boolean
---@field MouseUsesStep boolean
---@field RequiresControllerLock boolean
---@field StepSize float
---@field IsFocusable boolean
---@field OnMouseCaptureBegin FSliderOnMouseCaptureBegin
---@field OnMouseCaptureEnd FSliderOnMouseCaptureEnd
---@field OnControllerCaptureBegin FSliderOnControllerCaptureBegin
---@field OnControllerCaptureEnd FSliderOnControllerCaptureEnd
---@field OnValueChanged FSliderOnValueChanged
local USlider = {}

---@class USpacer : UWidget
---@field Size FVector2D
local USpacer = {}

---@class USpinBox : UWidget
---@field Value float
---@field ValueDelegate FSpinBoxValueDelegate
---@field WidgetStyle FSpinBoxStyle
---@field Style USlateWidgetStyleAsset
---@field MinFractionalDigits int32
---@field MaxFractionalDigits int32
---@field bAlwaysUsesDeltaSnap boolean
---@field Delta float
---@field SliderExponent float
---@field Font FSlateFontInfo
---@field Justification ETextJustify::Type
---@field MinDesiredWidth float
---@field ClearKeyboardFocusOnCommit boolean
---@field SelectAllTextOnCommit boolean
---@field ForegroundColor FSlateColor
---@field OnValueChanged FSpinBoxOnValueChanged
---@field OnValueCommitted FSpinBoxOnValueCommitted
---@field OnBeginSliderMovement FSpinBoxOnBeginSliderMovement
---@field OnEndSliderMovement FSpinBoxOnEndSliderMovement
---@field bOverride_MinValue boolean
---@field bOverride_MaxValue boolean
---@field bOverride_MinSliderValue boolean
---@field bOverride_MaxSliderValue boolean
---@field MinValue float
---@field MaxValue float
---@field MinSliderValue float
---@field MaxSliderValue float
local USpinBox = {}

---@class UTextBinding : UPropertyBinding
local UTextBinding = {}

---@class UTextBlock : UTextLayoutWidget
---@field Text FText
---@field TextDelegate FTextBlockTextDelegate
---@field ColorAndOpacity FSlateColor
---@field ColorAndOpacityDelegate FTextBlockColorAndOpacityDelegate
---@field Font FSlateFontInfo
---@field StrikeBrush FSlateBrush
---@field ShadowOffset FVector2D
---@field ShadowColorAndOpacity FLinearColor
---@field ShadowColorAndOpacityDelegate FTextBlockShadowColorAndOpacityDelegate
---@field MinDesiredWidth float
---@field bWrapWithInvalidationPanel boolean
---@field bAutoWrapText boolean
---@field TextTransformPolicy ETextTransformPolicy
---@field bSimpleTextMode boolean
local UTextBlock = {}

---@class UTextLayoutWidget : UWidget
---@field ShapedTextOptions FShapedTextOptions
---@field Justification ETextJustify::Type
---@field WrappingPolicy ETextWrappingPolicy
---@field AutoWrapText boolean
---@field WrapTextAt float
---@field Margin FMargin
---@field LineHeightPercentage float
---@field EmptyLineHeightPercentage float
local UTextLayoutWidget = {}

---@class UThrobber : UWidget
---@field NumberOfPieces int32
---@field bAnimateHorizontally boolean
---@field bAnimateVertically boolean
---@field bAnimateOpacity boolean
---@field PieceImage USlateBrushAsset
---@field Image FSlateBrush
local UThrobber = {}

---@class UTileView : UListView
---@field EntryHeight float
---@field EntryWidth float
---@field TileAlignment EListItemAlignment
---@field bWrapHorizontalNavigation boolean
local UTileView = {}

---@class UTreeView : UListView
---@field BP_OnGetItemChildren FTreeViewBP_OnGetItemChildren
---@field BP_OnItemExpansionChanged FTreeViewBP_OnItemExpansionChanged
local UTreeView = {}

---@class UUMGSequencePlayer : UObject
---@field Animation UWidgetAnimation
---@field RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance
local UUMGSequencePlayer = {}

---@class UUMGSequenceTickManager : UObject
---@field WeakUserWidgets TSet<TWeakObjectPtr<UUserWidget>>
---@field Linker UMovieSceneEntitySystemLinker
local UUMGSequenceTickManager = {}

---@class UUniformGridPanel : UPanelWidget
---@field SlotPadding FMargin
---@field MinDesiredSlotWidth float
---@field MinDesiredSlotHeight float
local UUniformGridPanel = {}

---@class UUniformGridSlot : UPanelSlot
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field Row int32
---@field Column int32
local UUniformGridSlot = {}

---@class UUserListEntryLibrary : UBlueprintFunctionLibrary
local UUserListEntryLibrary = {}

---@class UUserObjectListEntryLibrary : UBlueprintFunctionLibrary
local UUserObjectListEntryLibrary = {}

---@class UUserWidget : UWidget
---@field ColorAndOpacity FLinearColor
---@field ColorAndOpacityDelegate FUserWidgetColorAndOpacityDelegate
---@field ForegroundColor FSlateColor
---@field ForegroundColorDelegate FUserWidgetForegroundColorDelegate
---@field OnVisibilityChanged FUserWidgetOnVisibilityChanged
---@field Padding FMargin
---@field ActiveSequencePlayers TArray<UUMGSequencePlayer>
---@field AnimationTickManager UUMGSequenceTickManager
---@field StoppedSequencePlayers TArray<UUMGSequencePlayer>
---@field NamedSlotBindings TArray<FNamedSlotBinding>
---@field WidgetTree UWidgetTree
---@field Priority int32
---@field bSupportsKeyboardFocus boolean
---@field bIsFocusable boolean
---@field bStopAction boolean
---@field bHasScriptImplementedTick boolean
---@field bHasScriptImplementedPaint boolean
---@field TickFrequency EWidgetTickFrequency
---@field InputComponent UInputComponent
---@field AnimationCallbacks TArray<FAnimationEventBinding>
local UUserWidget = {}

---@class UVerticalBox : UPanelWidget
local UVerticalBox = {}

---@class UVerticalBoxSlot : UPanelSlot
---@field Size FSlateChildSize
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UVerticalBoxSlot = {}

---@class UViewport : UContentWidget
---@field BackgroundColor FLinearColor
local UViewport = {}

---@class UVisibilityBinding : UPropertyBinding
local UVisibilityBinding = {}

---@class UVisual : UObject
local UVisual = {}

---@class UWidget : UVisual
---@field Slot UPanelSlot
---@field bIsEnabledDelegate FWidgetBIsEnabledDelegate
---@field ToolTipText FText
---@field ToolTipTextDelegate FWidgetToolTipTextDelegate
---@field ToolTipWidget UWidget
---@field ToolTipWidgetDelegate FWidgetToolTipWidgetDelegate
---@field VisibilityDelegate FWidgetVisibilityDelegate
---@field RenderTransform FWidgetTransform
---@field RenderTransformPivot FVector2D
---@field bIsVariable boolean
---@field bCreatedByConstructionScript boolean
---@field BIsEnabled boolean
---@field bOverride_Cursor boolean
---@field AccessibleWidgetData USlateAccessibleWidgetData
---@field bIsVolatile boolean
---@field Cursor EMouseCursor::Type
---@field Clipping EWidgetClipping
---@field Visibility ESlateVisibility
---@field RenderOpacity float
---@field Navigation UWidgetNavigation
---@field FlowDirectionPreference EFlowDirectionPreference
---@field NativeBindings TArray<UPropertyBinding>
local UWidget = {}

---@class UWidgetAnimation : UMovieSceneSequence
---@field MovieScene UMovieScene
---@field AnimationBindings TArray<FWidgetAnimationBinding>
---@field bLegacyFinishOnStop boolean
---@field DisplayLabel FString
local UWidgetAnimation = {}

---@class UWidgetAnimationDelegateBinding : UDynamicBlueprintBinding
---@field WidgetAnimationDelegateBindings TArray<FBlueprintWidgetAnimationDelegateBinding>
local UWidgetAnimationDelegateBinding = {}

---@class UWidgetAnimationPlayCallbackProxy : UObject
---@field Finished FWidgetAnimationPlayCallbackProxyFinished
local UWidgetAnimationPlayCallbackProxy = {}

---@class UWidgetBinding : UPropertyBinding
local UWidgetBinding = {}

---@class UWidgetBlueprintGeneratedClass : UBlueprintGeneratedClass
---@field WidgetTree UWidgetTree
---@field bClassRequiresNativeTick boolean
---@field Bindings TArray<FDelegateRuntimeBinding>
---@field Animations TArray<UWidgetAnimation>
---@field NamedSlots TArray<FName>
local UWidgetBlueprintGeneratedClass = {}

---@class UWidgetBlueprintLibrary : UBlueprintFunctionLibrary
local UWidgetBlueprintLibrary = {}

---@class UWidgetComponent : UMeshComponent
---@field Space EWidgetSpace
---@field TimingPolicy EWidgetTimingPolicy
---@field WidgetClass TSubclassOf<UUserWidget>
---@field DrawSize FIntPoint
---@field bManuallyRedraw boolean
---@field bRedrawRequested boolean
---@field RedrawTime float
---@field CurrentDrawSize FIntPoint
---@field bDrawAtDesiredSize boolean
---@field Pivot FVector2D
---@field bReceiveHardwareInput boolean
---@field bWindowFocusable boolean
---@field WindowVisibility EWindowVisibility
---@field bApplyGammaCorrection boolean
---@field OwnerPlayer ULocalPlayer
---@field BackgroundColor FLinearColor
---@field TintColorAndOpacity FLinearColor
---@field OpacityFromTexture float
---@field BlendMode EWidgetBlendMode
---@field bIsTwoSided boolean
---@field TickWhenOffscreen boolean
---@field BodySetup UBodySetup
---@field TranslucentMaterial UMaterialInterface
---@field TranslucentMaterial_OneSided UMaterialInterface
---@field OpaqueMaterial UMaterialInterface
---@field OpaqueMaterial_OneSided UMaterialInterface
---@field MaskedMaterial UMaterialInterface
---@field MaskedMaterial_OneSided UMaterialInterface
---@field RenderTarget UTextureRenderTarget2D
---@field MaterialInstance UMaterialInstanceDynamic
---@field bAddedToScreen boolean
---@field bEditTimeUsable boolean
---@field SharedLayerName FName
---@field LayerZOrder int32
---@field GeometryMode EWidgetGeometryMode
---@field CylinderArcAngle float
---@field TickMode ETickMode
---@field Widget UUserWidget
local UWidgetComponent = {}

---@class UWidgetInteractionComponent : USceneComponent
---@field OnHoveredWidgetChanged FWidgetInteractionComponentOnHoveredWidgetChanged
---@field VirtualUserIndex int32
---@field PointerIndex int32
---@field TraceChannel ECollisionChannel
---@field InteractionDistance float
---@field InteractionSource EWidgetInteractionSource
---@field bEnableHitTesting boolean
---@field bShowDebug boolean
---@field DebugSphereLineThickness float
---@field DebugLineThickness float
---@field DebugColor FLinearColor
---@field CustomHitResult FHitResult
---@field LocalHitLocation FVector2D
---@field LastLocalHitLocation FVector2D
---@field HoveredWidgetComponent UWidgetComponent
---@field LastHitResult FHitResult
---@field bIsHoveredWidgetInteractable boolean
---@field bIsHoveredWidgetFocusable boolean
---@field bIsHoveredWidgetHitTestVisible boolean
local UWidgetInteractionComponent = {}

---@class UWidgetLayoutLibrary : UBlueprintFunctionLibrary
local UWidgetLayoutLibrary = {}

---@class UWidgetNavigation : UObject
---@field Up FWidgetNavigationData
---@field Down FWidgetNavigationData
---@field Left FWidgetNavigationData
---@field Right FWidgetNavigationData
---@field Next FWidgetNavigationData
---@field Previous FWidgetNavigationData
local UWidgetNavigation = {}

---@class UWidgetSwitcher : UPanelWidget
---@field ActiveWidgetIndex int32
local UWidgetSwitcher = {}

---@class UWidgetSwitcherSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UWidgetSwitcherSlot = {}

---@class UWidgetTree : UObject
---@field RootWidget UWidget
local UWidgetTree = {}

---@class UWindowTitleBarArea : UContentWidget
---@field bWindowButtonsEnabled boolean
---@field bDoubleClickTogglesFullscreen boolean
local UWindowTitleBarArea = {}

---@class UWindowTitleBarAreaSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UWindowTitleBarAreaSlot = {}

---@class UWrapBox : UPanelWidget
---@field InnerSlotPadding FVector2D
---@field WrapWidth float
---@field WrapSize float
---@field bExplicitWrapWidth boolean
---@field bExplicitWrapSize boolean
---@field Orientation EOrientation
local UWrapBox = {}

---@class UWrapBoxSlot : UPanelSlot
---@field Padding FMargin
---@field bFillEmptySpace boolean
---@field FillSpanWhenLessThan float
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UWrapBoxSlot = {}

function IUserListEntry:BP_OnEntryReleased() end

---@param bIsExpanded boolean
function IUserListEntry:BP_OnItemExpansionChanged(bIsExpanded) end

---@param bIsSelected boolean
function IUserListEntry:BP_OnItemSelectionChanged(bIsSelected) end

---@param ListItemObject UObject
function IUserObjectListEntry:OnListItemObjectSet(ListItemObject) end

---@param URL FString
function UAsyncTaskDownloadImage:DownloadImage(URL) end

---@param bInApplyAlphaToBlur boolean
function UBackgroundBlur:SetApplyAlphaToBlur(bInApplyAlphaToBlur) end

---@param InBlurRadius int32
function UBackgroundBlur:SetBlurRadius(InBlurRadius) end

---@param InStrength float
function UBackgroundBlur:SetBlurStrength(InStrength) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBackgroundBlur:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InBrush FSlateBrush
function UBackgroundBlur:SetLowQualityFallbackBrush(InBrush) end

---@param InPadding FMargin
function UBackgroundBlur:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UBackgroundBlur:SetVerticalAlignment(InVerticalAlignment) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBackgroundBlurSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UBackgroundBlurSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UBackgroundBlurSlot:SetVerticalAlignment(InVerticalAlignment) end

function UBoolBinding:GetValue() end

function UBorder:GetDynamicMaterial() end

---@param InBrush FSlateBrush
function UBorder:SetBrush(InBrush) end

---@param InBrushColor FLinearColor
function UBorder:SetBrushColor(InBrushColor) end

---@param Asset USlateBrushAsset
function UBorder:SetBrushFromAsset(Asset) end

---@param Material UMaterialInterface
function UBorder:SetBrushFromMaterial(Material) end

---@param Texture UTexture2D
function UBorder:SetBrushFromTexture(Texture) end

---@param InContentColorAndOpacity FLinearColor
function UBorder:SetContentColorAndOpacity(InContentColorAndOpacity) end

---@param InScale FVector2D
function UBorder:SetDesiredSizeScale(InScale) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBorder:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UBorder:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UBorder:SetVerticalAlignment(InVerticalAlignment) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBorderSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UBorderSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UBorderSlot:SetVerticalAlignment(InVerticalAlignment) end

function UBrushBinding:GetValue() end

function UButton:IsPressed() end

---@param InBackgroundColor FLinearColor
function UButton:SetBackgroundColor(InBackgroundColor) end

---@param InClickMethod EButtonClickMethod::Type
function UButton:SetClickMethod(InClickMethod) end

---@param InColorAndOpacity FLinearColor
function UButton:SetColorAndOpacity(InColorAndOpacity) end

---@param InPressMethod EButtonPressMethod::Type
function UButton:SetPressMethod(InPressMethod) end

---@param InStyle FButtonStyle
function UButton:SetStyle(InStyle) end

---@param InTouchMethod EButtonTouchMethod::Type
function UButton:SetTouchMethod(InTouchMethod) end

---@param InHorizontalAlignment EHorizontalAlignment
function UButtonSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UButtonSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UButtonSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param Content UWidget
function UCanvasPanel:AddChildToCanvas(Content) end

function UCanvasPanelSlot:GetAlignment() end

function UCanvasPanelSlot:GetAnchors() end

function UCanvasPanelSlot:GetAutoSize() end

function UCanvasPanelSlot:GetLayout() end

function UCanvasPanelSlot:GetOffsets() end

function UCanvasPanelSlot:GetPosition() end

function UCanvasPanelSlot:GetSize() end

function UCanvasPanelSlot:GetZOrder() end

---@param InAlignment FVector2D
function UCanvasPanelSlot:SetAlignment(InAlignment) end

---@param InAnchors FAnchors
function UCanvasPanelSlot:SetAnchors(InAnchors) end

---@param InbAutoSize boolean
function UCanvasPanelSlot:SetAutoSize(InbAutoSize) end

---@param InLayoutData FAnchorData
function UCanvasPanelSlot:SetLayout(InLayoutData) end

---@param InMaximumAnchors FVector2D
function UCanvasPanelSlot:SetMaximum(InMaximumAnchors) end

---@param InMinimumAnchors FVector2D
function UCanvasPanelSlot:SetMinimum(InMinimumAnchors) end

---@param InOffset FMargin
function UCanvasPanelSlot:SetOffsets(InOffset) end

---@param InPosition FVector2D
function UCanvasPanelSlot:SetPosition(InPosition) end

---@param InSize FVector2D
function UCanvasPanelSlot:SetSize(InSize) end

---@param InZOrder int32
function UCanvasPanelSlot:SetZOrder(InZOrder) end

function UCheckBox:GetCheckedState() end

function UCheckBox:IsChecked() end

function UCheckBox:IsPressed() end

---@param InCheckedState ECheckBoxState
function UCheckBox:SetCheckedState(InCheckedState) end

---@param InClickMethod EButtonClickMethod::Type
function UCheckBox:SetClickMethod(InClickMethod) end

---@param InIsChecked boolean
function UCheckBox:SetIsChecked(InIsChecked) end

---@param InPressMethod EButtonPressMethod::Type
function UCheckBox:SetPressMethod(InPressMethod) end

---@param InTouchMethod EButtonTouchMethod::Type
function UCheckBox:SetTouchMethod(InTouchMethod) end

function UCheckedStateBinding:GetValue() end

---@param InNumberOfPieces int32
function UCircularThrobber:SetNumberOfPieces(InNumberOfPieces) end

---@param InPeriod float
function UCircularThrobber:SetPeriod(InPeriod) end

---@param InRadius float
function UCircularThrobber:SetRadius(InRadius) end

function UColorBinding:GetLinearValue() end

function UColorBinding:GetSlateValue() end

---@param Option FString
function UComboBoxString:AddOption(Option) end

function UComboBoxString:ClearOptions() end

function UComboBoxString:ClearSelection() end

---@param Option FString
function UComboBoxString:FindOptionIndex(Option) end

---@param Index int32
function UComboBoxString:GetOptionAtIndex(Index) end

function UComboBoxString:GetOptionCount() end

function UComboBoxString:GetSelectedIndex() end

function UComboBoxString:GetSelectedOption() end

function UComboBoxString:IsOpen() end

function UComboBoxString:OnOpeningEvent__DelegateSignature() end

---@param SelectedItem FString
---@param SelectionType ESelectInfo::Type
function UComboBoxString:OnSelectionChangedEvent__DelegateSignature(SelectedItem, SelectionType) end

function UComboBoxString:RefreshOptions() end

---@param Option FString
function UComboBoxString:RemoveOption(Option) end

---@param Index int32
function UComboBoxString:SetSelectedIndex(Index) end

---@param Option FString
function UComboBoxString:SetSelectedOption(Option) end

function UContentWidget:GetContent() end

function UContentWidget:GetContentSlot() end

---@param Content UWidget
function UContentWidget:SetContent(Content) end

---@param PointerEvent FPointerEvent
function UDragDropOperation:DragCancelled(PointerEvent) end

---@param PointerEvent FPointerEvent
function UDragDropOperation:Dragged(PointerEvent) end

---@param PointerEvent FPointerEvent
function UDragDropOperation:Drop(PointerEvent) end

function UDynamicEntryBox:BP_CreateEntry() end

---@param EntryClass TSubclassOf<UUserWidget>
function UDynamicEntryBox:BP_CreateEntryOfClass(EntryClass) end

---@param EntryWidget UUserWidget
function UDynamicEntryBox:RemoveEntry(EntryWidget) end

---@param bDeleteWidgets boolean
function UDynamicEntryBox:Reset(bDeleteWidgets) end

function UDynamicEntryBoxBase:GetAllEntries() end

function UDynamicEntryBoxBase:GetNumEntries() end

---@param InEntrySpacing FVector2D
function UDynamicEntryBoxBase:SetEntrySpacing(InEntrySpacing) end

---@param InSettings FRadialBoxSettings
function UDynamicEntryBoxBase:SetRadialSettings(InSettings) end

function UEditableText:GetText() end

---@param Text FText
function UEditableText:OnEditableTextChangedEvent__DelegateSignature(Text) end

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UEditableText:OnEditableTextCommittedEvent__DelegateSignature(Text, CommitMethod) end

---@param InHintText FText
function UEditableText:SetHintText(InHintText) end

---@param InbIsPassword boolean
function UEditableText:SetIsPassword(InbIsPassword) end

---@param InbIsReadyOnly boolean
function UEditableText:SetIsReadOnly(InbIsReadyOnly) end

---@param InJustification ETextJustify::Type
function UEditableText:SetJustification(InJustification) end

---@param InText FText
function UEditableText:SetText(InText) end

function UEditableTextBox:ClearError() end

function UEditableTextBox:GetText() end

function UEditableTextBox:HasError() end

---@param Text FText
function UEditableTextBox:OnEditableTextBoxChangedEvent__DelegateSignature(Text) end

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UEditableTextBox:OnEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end

---@param InError FText
function UEditableTextBox:SetError(InError) end

---@param InText FText
function UEditableTextBox:SetHintText(InText) end

---@param bIsPassword boolean
function UEditableTextBox:SetIsPassword(bIsPassword) end

---@param bReadOnly boolean
function UEditableTextBox:SetIsReadOnly(bReadOnly) end

---@param InJustification ETextJustify::Type
function UEditableTextBox:SetJustification(InJustification) end

---@param InText FText
function UEditableTextBox:SetText(InText) end

function UExpandableArea:GetIsExpanded() end

---@param IsExpanded boolean
function UExpandableArea:SetIsExpanded(IsExpanded) end

---@param IsExpanded boolean
function UExpandableArea:SetIsExpanded_Animated(IsExpanded) end

function UFloatBinding:GetValue() end

---@param Content UWidget
---@param InRow int32
---@param InColumn int32
function UGridPanel:AddChildToGrid(Content, InRow, InColumn) end

---@param ColumnIndex int32
---@param Coefficient float
function UGridPanel:SetColumnFill(ColumnIndex, Coefficient) end

---@param ColumnIndex int32
---@param Coefficient float
function UGridPanel:SetRowFill(ColumnIndex, Coefficient) end

---@param InColumn int32
function UGridSlot:SetColumn(InColumn) end

---@param InColumnSpan int32
function UGridSlot:SetColumnSpan(InColumnSpan) end

---@param InHorizontalAlignment EHorizontalAlignment
function UGridSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InLayer int32
function UGridSlot:SetLayer(InLayer) end

---@param InNudge FVector2D
function UGridSlot:SetNudge(InNudge) end

---@param InPadding FMargin
function UGridSlot:SetPadding(InPadding) end

---@param InRow int32
function UGridSlot:SetRow(InRow) end

---@param InRowSpan int32
function UGridSlot:SetRowSpan(InRowSpan) end

---@param InVerticalAlignment EVerticalAlignment
function UGridSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param Content UWidget
function UHorizontalBox:AddChildToHorizontalBox(Content) end

---@param InHorizontalAlignment EHorizontalAlignment
function UHorizontalBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UHorizontalBoxSlot:SetPadding(InPadding) end

---@param InSize FSlateChildSize
function UHorizontalBoxSlot:SetSize(InSize) end

---@param InVerticalAlignment EVerticalAlignment
function UHorizontalBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

function UImage:GetDynamicMaterial() end

---@param InBrush FSlateBrush
function UImage:SetBrush(InBrush) end

---@param Asset USlateBrushAsset
function UImage:SetBrushFromAsset(Asset) end

---@param AtlasRegion TScriptInterface<ISlateTextureAtlasInterface>
---@param bMatchSize boolean
function UImage:SetBrushFromAtlasInterface(AtlasRegion, bMatchSize) end

---@param Material UMaterialInterface
function UImage:SetBrushFromMaterial(Material) end

---@param SoftMaterial TSoftObjectPtr<UMaterialInterface>
function UImage:SetBrushFromSoftMaterial(SoftMaterial) end

---@param SoftTexture TSoftObjectPtr<UTexture2D>
---@param bMatchSize boolean
function UImage:SetBrushFromSoftTexture(SoftTexture, bMatchSize) end

---@param Texture UTexture2D
---@param bMatchSize boolean
function UImage:SetBrushFromTexture(Texture, bMatchSize) end

---@param Texture UTexture2DDynamic
---@param bMatchSize boolean
function UImage:SetBrushFromTextureDynamic(Texture, bMatchSize) end

---@param ResourceObject UObject
function UImage:SetBrushResourceObject(ResourceObject) end

---@param DesiredSize FVector2D
function UImage:SetBrushSize(DesiredSize) end

---@param TintColor FSlateColor
function UImage:SetBrushTintColor(TintColor) end

---@param InColorAndOpacity FLinearColor
function UImage:SetColorAndOpacity(InColorAndOpacity) end

---@param InOpacity float
function UImage:SetOpacity(InOpacity) end

function UInputKeySelector:GetIsSelectingKey() end

function UInputKeySelector:OnIsSelectingKeyChanged__DelegateSignature() end

---@param SelectedKey FInputChord
function UInputKeySelector:OnKeySelected__DelegateSignature(SelectedKey) end

---@param bInAllowGamepadKeys boolean
function UInputKeySelector:SetAllowGamepadKeys(bInAllowGamepadKeys) end

---@param bInAllowModifierKeys boolean
function UInputKeySelector:SetAllowModifierKeys(bInAllowModifierKeys) end

---@param InKeys TArray<FKey>
function UInputKeySelector:SetEscapeKeys(InKeys) end

---@param InKeySelectionText FText
function UInputKeySelector:SetKeySelectionText(InKeySelectionText) end

---@param InNoKeySpecifiedText FText
function UInputKeySelector:SetNoKeySpecifiedText(InNoKeySpecifiedText) end

---@param InSelectedKey FInputChord
function UInputKeySelector:SetSelectedKey(InSelectedKey) end

---@param InVisibility ESlateVisibility
function UInputKeySelector:SetTextBlockVisibility(InVisibility) end

function UInt32Binding:GetValue() end

function UInvalidationBox:GetCanCache() end

function UInvalidationBox:InvalidateCache() end

---@param CanCache boolean
function UInvalidationBox:SetCanCache(CanCache) end

---@param Item UObject
function UListView:AddItem(Item) end

function UListView:BP_CancelScrollIntoView() end

function UListView:BP_ClearSelection() end

function UListView:BP_GetNumItemsSelected() end

function UListView:BP_GetSelectedItem() end

---@param Items TArray<UObject>
function UListView:BP_GetSelectedItems(Items) end

---@param Item UObject
function UListView:BP_IsItemVisible(Item) end

---@param Item UObject
function UListView:BP_NavigateToItem(Item) end

---@param Item UObject
function UListView:BP_ScrollItemIntoView(Item) end

---@param Item UObject
---@param bSelected boolean
function UListView:BP_SetItemSelection(Item, bSelected) end

---@param InListItems TArray<UObject>
function UListView:BP_SetListItems(InListItems) end

---@param Item UObject
function UListView:BP_SetSelectedItem(Item) end

function UListView:ClearListItems() end

---@param Item UObject
function UListView:GetIndexForItem(Item) end

---@param Index int32
function UListView:GetItemAt(Index) end

function UListView:GetListItems() end

function UListView:GetNumItems() end

function UListView:IsRefreshPending() end

---@param Index int32
function UListView:NavigateToIndex(Index) end

---@param Item UObject
function UListView:RemoveItem(Item) end

---@param Index int32
function UListView:ScrollIndexIntoView(Index) end

---@param Index int32
function UListView:SetSelectedIndex(Index) end

---@param SelectionMode ESelectionMode::Type
function UListView:SetSelectionMode(SelectionMode) end

function UListViewBase:GetDisplayedEntryWidgets() end

function UListViewBase:RegenerateAllEntries() end

function UListViewBase:RequestRefresh() end

---@param bSmooth boolean
function UListViewBase:ScrollToBottom(bSmooth) end

---@param bSmooth boolean
function UListViewBase:ScrollToTop(bSmooth) end

---@param InVisibility ESlateVisibility
function UListViewBase:SetScrollBarVisibility(InVisibility) end

---@param InScrollOffset float
---@param bSmooth boolean
function UListViewBase:SetScrollOffset(InScrollOffset, bSmooth) end

---@param NewWheelScrollMultiplier float
function UListViewBase:SetWheelScrollMultiplier(NewWheelScrollMultiplier) end

function UMenuAnchor:Close() end

---@param bFit boolean
function UMenuAnchor:FitInWindow(bFit) end

function UMenuAnchor:GetMenuPosition() end

function UMenuAnchor:GetUserWidget__DelegateSignature() end

function UMenuAnchor:HasOpenSubMenus() end

function UMenuAnchor:IsOpen() end

---@param bFocusMenu boolean
function UMenuAnchor:Open(bFocusMenu) end

---@param InPlacement EMenuPlacement
function UMenuAnchor:SetPlacement(InPlacement) end

function UMenuAnchor:ShouldOpenDueToClick() end

---@param bFocusOnOpen boolean
function UMenuAnchor:ToggleOpen(bFocusOnOpen) end

function UMouseCursorBinding:GetValue() end

function UMultiLineEditableText:GetHintText() end

function UMultiLineEditableText:GetText() end

---@param Text FText
function UMultiLineEditableText:OnMultiLineEditableTextChangedEvent__DelegateSignature(Text) end

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UMultiLineEditableText:OnMultiLineEditableTextCommittedEvent__DelegateSignature(Text, CommitMethod) end

---@param InHintText FText
function UMultiLineEditableText:SetHintText(InHintText) end

---@param bReadOnly boolean
function UMultiLineEditableText:SetIsReadOnly(bReadOnly) end

---@param InText FText
function UMultiLineEditableText:SetText(InText) end

---@param InWidgetStyle FTextBlockStyle
function UMultiLineEditableText:SetWidgetStyle(InWidgetStyle) end

function UMultiLineEditableTextBox:GetHintText() end

function UMultiLineEditableTextBox:GetText() end

---@param Text FText
function UMultiLineEditableTextBox:OnMultiLineEditableTextBoxChangedEvent__DelegateSignature(Text) end

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UMultiLineEditableTextBox:OnMultiLineEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end

---@param InError FText
function UMultiLineEditableTextBox:SetError(InError) end

---@param InHintText FText
function UMultiLineEditableTextBox:SetHintText(InHintText) end

---@param bReadOnly boolean
function UMultiLineEditableTextBox:SetIsReadOnly(bReadOnly) end

---@param InText FText
function UMultiLineEditableTextBox:SetText(InText) end

---@param InTextStyle FTextBlockStyle
function UMultiLineEditableTextBox:SetTextStyle(InTextStyle) end

---@param Content UWidget
function UOverlay:AddChildToOverlay(Content) end

---@param InHorizontalAlignment EHorizontalAlignment
function UOverlaySlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UOverlaySlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UOverlaySlot:SetVerticalAlignment(InVerticalAlignment) end

---@param Content UWidget
function UPanelWidget:AddChild(Content) end

function UPanelWidget:ClearChildren() end

function UPanelWidget:GetAllChildren() end

---@param Index int32
function UPanelWidget:GetChildAt(Index) end

---@param Content UWidget
function UPanelWidget:GetChildIndex(Content) end

function UPanelWidget:GetChildrenCount() end

function UPanelWidget:HasAnyChildren() end

---@param Content UWidget
function UPanelWidget:HasChild(Content) end

---@param Content UWidget
function UPanelWidget:RemoveChild(Content) end

---@param Index int32
function UPanelWidget:RemoveChildAt(Index) end

---@param InColor FLinearColor
function UProgressBar:SetFillColorAndOpacity(InColor) end

---@param InbIsMarquee boolean
function UProgressBar:SetIsMarquee(InbIsMarquee) end

---@param InPercent float
function UProgressBar:SetPercent(InPercent) end

function URetainerBox:GetEffectMaterial() end

function URetainerBox:RequestRender() end

---@param EffectMaterial UMaterialInterface
function URetainerBox:SetEffectMaterial(EffectMaterial) end

---@param RenderPhase int32
---@param TotalPhases int32
function URetainerBox:SetRenderingPhase(RenderPhase, TotalPhases) end

---@param bInRetainRendering boolean
function URetainerBox:SetRetainRendering(bInRetainRendering) end

---@param TextureParameter FName
function URetainerBox:SetTextureParameter(TextureParameter) end

function URichTextBlock:ClearAllDefaultStyleOverrides() end

---@param DecoratorClass TSubclassOf<URichTextBlockDecorator>
function URichTextBlock:GetDecoratorByClass(DecoratorClass) end

function URichTextBlock:GetText() end

---@param InAutoTextWrap boolean
function URichTextBlock:SetAutoWrapText(InAutoTextWrap) end

---@param InColorAndOpacity FSlateColor
function URichTextBlock:SetDefaultColorAndOpacity(InColorAndOpacity) end

---@param InFontInfo FSlateFontInfo
function URichTextBlock:SetDefaultFont(InFontInfo) end

---@param InShadowColorAndOpacity FLinearColor
function URichTextBlock:SetDefaultShadowColorAndOpacity(InShadowColorAndOpacity) end

---@param InShadowOffset FVector2D
function URichTextBlock:SetDefaultShadowOffset(InShadowOffset) end

---@param InStrikeBrush FSlateBrush
function URichTextBlock:SetDefaultStrikeBrush(InStrikeBrush) end

---@param InDefaultTextStyle FTextBlockStyle
function URichTextBlock:SetDefaultTextStyle(InDefaultTextStyle) end

---@param InMinDesiredWidth float
function URichTextBlock:SetMinDesiredWidth(InMinDesiredWidth) end

---@param InText FText
function URichTextBlock:SetText(InText) end

---@param NewTextStyleSet UDataTable
function URichTextBlock:SetTextStyleSet(NewTextStyleSet) end

---@param InTransformPolicy ETextTransformPolicy
function URichTextBlock:SetTextTransformPolicy(InTransformPolicy) end

---@param InPadLeft boolean
---@param InPadRight boolean
---@param InPadTop boolean
---@param InPadBottom boolean
function USafeZone:SetSidesToPad(InPadLeft, InPadRight, InPadTop, InPadBottom) end

---@param bInIgnoreInheritedScale boolean
function UScaleBox:SetIgnoreInheritedScale(bInIgnoreInheritedScale) end

---@param InStretch EStretch::Type
function UScaleBox:SetStretch(InStretch) end

---@param InStretchDirection EStretchDirection::Type
function UScaleBox:SetStretchDirection(InStretchDirection) end

---@param InUserSpecifiedScale float
function UScaleBox:SetUserSpecifiedScale(InUserSpecifiedScale) end

---@param InHorizontalAlignment EHorizontalAlignment
function UScaleBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UScaleBoxSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UScaleBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param InOffsetFraction float
---@param InThumbSizeFraction float
function UScrollBar:SetState(InOffsetFraction, InThumbSizeFraction) end

function UScrollBox:EndInertialScrolling() end

function UScrollBox:GetScrollOffset() end

function UScrollBox:GetScrollOffsetOfEnd() end

function UScrollBox:GetViewOffsetFraction() end

function UScrollBox:ScrollToEnd() end

function UScrollBox:ScrollToStart() end

---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDestination EDescendantScrollDestination
---@param Padding float
function UScrollBox:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDestination, Padding) end

---@param NewAllowOverscroll boolean
function UScrollBox:SetAllowOverscroll(NewAllowOverscroll) end

---@param NewAlwaysShowScrollbar boolean
function UScrollBox:SetAlwaysShowScrollbar(NewAlwaysShowScrollbar) end

---@param bShouldAnimateWheelScrolling boolean
function UScrollBox:SetAnimateWheelScrolling(bShouldAnimateWheelScrolling) end

---@param NewConsumeMouseWheel EConsumeMouseWheel
function UScrollBox:SetConsumeMouseWheel(NewConsumeMouseWheel) end

---@param NewOrientation EOrientation
function UScrollBox:SetOrientation(NewOrientation) end

---@param NewScrollBarVisibility ESlateVisibility
function UScrollBox:SetScrollBarVisibility(NewScrollBarVisibility) end

---@param NewScrollOffset float
function UScrollBox:SetScrollOffset(NewScrollOffset) end

---@param NewScrollWhenFocusChanges EScrollWhenFocusChanges
function UScrollBox:SetScrollWhenFocusChanges(NewScrollWhenFocusChanges) end

---@param NewScrollbarPadding FMargin
function UScrollBox:SetScrollbarPadding(NewScrollbarPadding) end

---@param NewScrollbarThickness FVector2D
function UScrollBox:SetScrollbarThickness(NewScrollbarThickness) end

---@param NewWheelScrollMultiplier float
function UScrollBox:SetWheelScrollMultiplier(NewWheelScrollMultiplier) end

---@param InHorizontalAlignment EHorizontalAlignment
function UScrollBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UScrollBoxSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UScrollBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

function USizeBox:ClearHeightOverride() end

function USizeBox:ClearMaxAspectRatio() end

function USizeBox:ClearMaxDesiredHeight() end

function USizeBox:ClearMaxDesiredWidth() end

function USizeBox:ClearMinAspectRatio() end

function USizeBox:ClearMinDesiredHeight() end

function USizeBox:ClearMinDesiredWidth() end

function USizeBox:ClearWidthOverride() end

---@param InHeightOverride float
function USizeBox:SetHeightOverride(InHeightOverride) end

---@param InMaxAspectRatio float
function USizeBox:SetMaxAspectRatio(InMaxAspectRatio) end

---@param InMaxDesiredHeight float
function USizeBox:SetMaxDesiredHeight(InMaxDesiredHeight) end

---@param InMaxDesiredWidth float
function USizeBox:SetMaxDesiredWidth(InMaxDesiredWidth) end

---@param InMinAspectRatio float
function USizeBox:SetMinAspectRatio(InMinAspectRatio) end

---@param InMinDesiredHeight float
function USizeBox:SetMinDesiredHeight(InMinDesiredHeight) end

---@param InMinDesiredWidth float
function USizeBox:SetMinDesiredWidth(InMinDesiredWidth) end

---@param InWidthOverride float
function USizeBox:SetWidthOverride(InWidthOverride) end

---@param InHorizontalAlignment EHorizontalAlignment
function USizeBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function USizeBoxSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function USizeBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param Geometry FGeometry
---@param AbsoluteCoordinate FVector2D
function USlateBlueprintLibrary:AbsoluteToLocal(Geometry, AbsoluteCoordinate) end

---@param WorldContextObject UObject
---@param AbsoluteDesktopCoordinate FVector2D
---@param PixelPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:AbsoluteToViewport(WorldContextObject, AbsoluteDesktopCoordinate, PixelPosition, ViewportPosition) end

---@param A FSlateBrush
---@param B FSlateBrush
function USlateBlueprintLibrary:EqualEqual_SlateBrush(A, B) end

---@param Geometry FGeometry
function USlateBlueprintLibrary:GetAbsoluteSize(Geometry) end

---@param Geometry FGeometry
function USlateBlueprintLibrary:GetLocalSize(Geometry) end

---@param Geometry FGeometry
function USlateBlueprintLibrary:GetLocalTopLeft(Geometry) end

---@param Geometry FGeometry
---@param AbsoluteCoordinate FVector2D
function USlateBlueprintLibrary:IsUnderLocation(Geometry, AbsoluteCoordinate) end

---@param Geometry FGeometry
---@param LocalCoordinate FVector2D
function USlateBlueprintLibrary:LocalToAbsolute(Geometry, LocalCoordinate) end

---@param WorldContextObject UObject
---@param Geometry FGeometry
---@param LocalCoordinate FVector2D
---@param PixelPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:LocalToViewport(WorldContextObject, Geometry, LocalCoordinate, PixelPosition, ViewportPosition) end

---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:ScreenToViewport(WorldContextObject, ScreenPosition, ViewportPosition) end

---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param AbsoluteCoordinate FVector2D
---@param bIncludeWindowPosition boolean
function USlateBlueprintLibrary:ScreenToWidgetAbsolute(WorldContextObject, ScreenPosition, AbsoluteCoordinate, bIncludeWindowPosition) end

---@param WorldContextObject UObject
---@param Geometry FGeometry
---@param ScreenPosition FVector2D
---@param LocalCoordinate FVector2D
---@param bIncludeWindowPosition boolean
function USlateBlueprintLibrary:ScreenToWidgetLocal(WorldContextObject, Geometry, ScreenPosition, LocalCoordinate, bIncludeWindowPosition) end

---@param Geometry FGeometry
---@param AbsoluteScalar float
function USlateBlueprintLibrary:TransformScalarAbsoluteToLocal(Geometry, AbsoluteScalar) end

---@param Geometry FGeometry
---@param LocalScalar float
function USlateBlueprintLibrary:TransformScalarLocalToAbsolute(Geometry, LocalScalar) end

---@param Geometry FGeometry
---@param AbsoluteVector FVector2D
function USlateBlueprintLibrary:TransformVectorAbsoluteToLocal(Geometry, AbsoluteVector) end

---@param Geometry FGeometry
---@param LocalVector FVector2D
function USlateBlueprintLibrary:TransformVectorLocalToAbsolute(Geometry, LocalVector) end

function USlider:GetNormalizedValue() end

function USlider:GetValue() end

---@param InValue boolean
function USlider:SetIndentHandle(InValue) end

---@param InValue boolean
function USlider:SetLocked(InValue) end

---@param InValue float
function USlider:SetMaxValue(InValue) end

---@param InValue float
function USlider:SetMinValue(InValue) end

---@param InValue FLinearColor
function USlider:SetSliderBarColor(InValue) end

---@param InValue FLinearColor
function USlider:SetSliderHandleColor(InValue) end

---@param InValue float
function USlider:SetStepSize(InValue) end

---@param InValue float
function USlider:SetValue(InValue) end

---@param InSize FVector2D
function USpacer:SetSize(InSize) end

function USpinBox:ClearMaxSliderValue() end

function USpinBox:ClearMaxValue() end

function USpinBox:ClearMinSliderValue() end

function USpinBox:ClearMinValue() end

function USpinBox:GetAlwaysUsesDeltaSnap() end

function USpinBox:GetDelta() end

function USpinBox:GetMaxFractionalDigits() end

function USpinBox:GetMaxSliderValue() end

function USpinBox:GetMaxValue() end

function USpinBox:GetMinFractionalDigits() end

function USpinBox:GetMinSliderValue() end

function USpinBox:GetMinValue() end

function USpinBox:GetValue() end

function USpinBox:OnSpinBoxBeginSliderMovement__DelegateSignature() end

---@param InValue float
function USpinBox:OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end

---@param InValue float
---@param CommitMethod ETextCommit::Type
function USpinBox:OnSpinBoxValueCommittedEvent__DelegateSignature(InValue, CommitMethod) end

---@param bNewValue boolean
function USpinBox:SetAlwaysUsesDeltaSnap(bNewValue) end

---@param NewValue float
function USpinBox:SetDelta(NewValue) end

---@param InForegroundColor FSlateColor
function USpinBox:SetForegroundColor(InForegroundColor) end

---@param NewValue int32
function USpinBox:SetMaxFractionalDigits(NewValue) end

---@param NewValue float
function USpinBox:SetMaxSliderValue(NewValue) end

---@param NewValue float
function USpinBox:SetMaxValue(NewValue) end

---@param NewValue int32
function USpinBox:SetMinFractionalDigits(NewValue) end

---@param NewValue float
function USpinBox:SetMinSliderValue(NewValue) end

---@param NewValue float
function USpinBox:SetMinValue(NewValue) end

---@param NewValue float
function USpinBox:SetValue(NewValue) end

function UTextBinding:GetStringValue() end

function UTextBinding:GetTextValue() end

function UTextBlock:GetDynamicFontMaterial() end

function UTextBlock:GetDynamicOutlineMaterial() end

function UTextBlock:GetText() end

---@param InAutoTextWrap boolean
function UTextBlock:SetAutoWrapText(InAutoTextWrap) end

---@param InColorAndOpacity FSlateColor
function UTextBlock:SetColorAndOpacity(InColorAndOpacity) end

---@param InFontInfo FSlateFontInfo
function UTextBlock:SetFont(InFontInfo) end

---@param InMinDesiredWidth float
function UTextBlock:SetMinDesiredWidth(InMinDesiredWidth) end

---@param InOpacity float
function UTextBlock:SetOpacity(InOpacity) end

---@param InShadowColorAndOpacity FLinearColor
function UTextBlock:SetShadowColorAndOpacity(InShadowColorAndOpacity) end

---@param InShadowOffset FVector2D
function UTextBlock:SetShadowOffset(InShadowOffset) end

---@param InStrikeBrush FSlateBrush
function UTextBlock:SetStrikeBrush(InStrikeBrush) end

---@param InText FText
function UTextBlock:SetText(InText) end

---@param InTransformPolicy ETextTransformPolicy
function UTextBlock:SetTextTransformPolicy(InTransformPolicy) end

---@param InJustification ETextJustify::Type
function UTextLayoutWidget:SetJustification(InJustification) end

---@param bInAnimateHorizontally boolean
function UThrobber:SetAnimateHorizontally(bInAnimateHorizontally) end

---@param bInAnimateOpacity boolean
function UThrobber:SetAnimateOpacity(bInAnimateOpacity) end

---@param bInAnimateVertically boolean
function UThrobber:SetAnimateVertically(bInAnimateVertically) end

---@param InNumberOfPieces int32
function UThrobber:SetNumberOfPieces(InNumberOfPieces) end

function UTileView:GetEntryHeight() end

function UTileView:GetEntryWidth() end

---@param NewHeight float
function UTileView:SetEntryHeight(NewHeight) end

---@param NewWidth float
function UTileView:SetEntryWidth(NewWidth) end

function UTreeView:CollapseAll() end

function UTreeView:ExpandAll() end

---@param Item UObject
---@param bExpandItem boolean
function UTreeView:SetItemExpansion(Item, bExpandItem) end

function UUMGSequencePlayer:GetUserTag() end

---@param InUserTag FName
function UUMGSequencePlayer:SetUserTag(InUserTag) end

---@param Content UWidget
---@param InRow int32
---@param InColumn int32
function UUniformGridPanel:AddChildToUniformGrid(Content, InRow, InColumn) end

---@param InMinDesiredSlotHeight float
function UUniformGridPanel:SetMinDesiredSlotHeight(InMinDesiredSlotHeight) end

---@param InMinDesiredSlotWidth float
function UUniformGridPanel:SetMinDesiredSlotWidth(InMinDesiredSlotWidth) end

---@param InSlotPadding FMargin
function UUniformGridPanel:SetSlotPadding(InSlotPadding) end

---@param InColumn int32
function UUniformGridSlot:SetColumn(InColumn) end

---@param InHorizontalAlignment EHorizontalAlignment
function UUniformGridSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InRow int32
function UUniformGridSlot:SetRow(InRow) end

---@param InVerticalAlignment EVerticalAlignment
function UUniformGridSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param UserListEntry TScriptInterface<IUserListEntry>
function UUserListEntryLibrary:GetOwningListView(UserListEntry) end

---@param UserListEntry TScriptInterface<IUserListEntry>
function UUserListEntryLibrary:IsListItemExpanded(UserListEntry) end

---@param UserListEntry TScriptInterface<IUserListEntry>
function UUserListEntryLibrary:IsListItemSelected(UserListEntry) end

---@param UserObjectListEntry TScriptInterface<IUserObjectListEntry>
function UUserObjectListEntryLibrary:GetListItemObject(UserObjectListEntry) end

---@param ZOrder int32
function UUserWidget:AddToPlayerScreen(ZOrder) end

---@param ZOrder int32
function UUserWidget:AddToViewport(ZOrder) end

---@param Animation UWidgetAnimation
---@param Delegate FBindToAnimationEventDelegate
---@param AnimationEvent EWidgetAnimationEvent
---@param UserTag FName
function UUserWidget:BindToAnimationEvent(Animation, Delegate, AnimationEvent, UserTag) end

---@param Animation UWidgetAnimation
---@param Delegate FBindToAnimationFinishedDelegate
function UUserWidget:BindToAnimationFinished(Animation, Delegate) end

---@param Animation UWidgetAnimation
---@param Delegate FBindToAnimationStartedDelegate
function UUserWidget:BindToAnimationStarted(Animation, Delegate) end

function UUserWidget:CancelLatentActions() end

function UUserWidget:Construct() end

function UUserWidget:Destruct() end

function UUserWidget:FlushAnimations() end

function UUserWidget:GetAlignmentInViewport() end

function UUserWidget:GetAnchorsInViewport() end

---@param InAnimation UWidgetAnimation
function UUserWidget:GetAnimationCurrentTime(InAnimation) end

function UUserWidget:GetIsVisible() end

function UUserWidget:GetOwningPlayerCameraManager() end

function UUserWidget:GetOwningPlayerPawn() end

---@param InAnimation UWidgetAnimation
function UUserWidget:IsAnimationPlaying(InAnimation) end

---@param InAnimation UWidgetAnimation
function UUserWidget:IsAnimationPlayingForward(InAnimation) end

function UUserWidget:IsAnyAnimationPlaying() end

function UUserWidget:IsInViewport() end

function UUserWidget:IsInteractable() end

---@param ActionName FName
function UUserWidget:IsListeningForInputAction(ActionName) end

function UUserWidget:IsPlayingAnimation() end

---@param ActionName FName
---@param EventType EInputEvent
---@param bConsume boolean
---@param Callback FListenForInputActionCallback
function UUserWidget:ListenForInputAction(ActionName, EventType, bConsume, Callback) end

---@param InFocusEvent FFocusEvent
function UUserWidget:OnAddedToFocusPath(InFocusEvent) end

---@param MyGeometry FGeometry
---@param InAnalogInputEvent FAnalogInputEvent
function UUserWidget:OnAnalogValueChanged(MyGeometry, InAnalogInputEvent) end

---@param Animation UWidgetAnimation
function UUserWidget:OnAnimationFinished(Animation) end

---@param Animation UWidgetAnimation
function UUserWidget:OnAnimationStarted(Animation) end

---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragCancelled(PointerEvent, Operation) end

---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragDetected(MyGeometry, PointerEvent, Operation) end

---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragEnter(MyGeometry, PointerEvent, Operation) end

---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragLeave(PointerEvent, Operation) end

---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragOver(MyGeometry, PointerEvent, Operation) end

---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDrop(MyGeometry, PointerEvent, Operation) end

---@param InFocusEvent FFocusEvent
function UUserWidget:OnFocusLost(InFocusEvent) end

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
function UUserWidget:OnFocusReceived(MyGeometry, InFocusEvent) end

function UUserWidget:OnInitialized() end

---@param MyGeometry FGeometry
---@param InCharacterEvent FCharacterEvent
function UUserWidget:OnKeyChar(MyGeometry, InCharacterEvent) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UUserWidget:OnKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UUserWidget:OnKeyUp(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param InMotionEvent FMotionEvent
function UUserWidget:OnMotionDetected(MyGeometry, InMotionEvent) end

---@param InMyGeometry FGeometry
---@param InMouseEvent FPointerEvent
function UUserWidget:OnMouseButtonDoubleClick(InMyGeometry, InMouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseButtonDown(MyGeometry, MouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseButtonUp(MyGeometry, MouseEvent) end

function UUserWidget:OnMouseCaptureLost() end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseEnter(MyGeometry, MouseEvent) end

---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseLeave(MouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseMove(MyGeometry, MouseEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseWheel(MyGeometry, MouseEvent) end

---@param Context FPaintContext
function UUserWidget:OnPaint(Context) end

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
function UUserWidget:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end

---@param InFocusEvent FFocusEvent
function UUserWidget:OnRemovedFromFocusPath(InFocusEvent) end

---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
function UUserWidget:OnTouchEnded(MyGeometry, InTouchEvent) end

---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
function UUserWidget:OnTouchForceChanged(MyGeometry, InTouchEvent) end

---@param MyGeometry FGeometry
---@param GestureEvent FPointerEvent
function UUserWidget:OnTouchGesture(MyGeometry, GestureEvent) end

---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
function UUserWidget:OnTouchMoved(MyGeometry, InTouchEvent) end

---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
function UUserWidget:OnTouchStarted(MyGeometry, InTouchEvent) end

---@param InAnimation UWidgetAnimation
function UUserWidget:PauseAnimation(InAnimation) end

---@param InAnimation UWidgetAnimation
---@param StartAtTime float
---@param NumLoopsToPlay int32
---@param PlayMode EUMGSequencePlayMode::Type
---@param PlaybackSpeed float
---@param bRestoreState boolean
function UUserWidget:PlayAnimation(InAnimation, StartAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState) end

---@param InAnimation UWidgetAnimation
---@param PlaybackSpeed float
---@param bRestoreState boolean
function UUserWidget:PlayAnimationForward(InAnimation, PlaybackSpeed, bRestoreState) end

---@param InAnimation UWidgetAnimation
---@param PlaybackSpeed float
---@param bRestoreState boolean
function UUserWidget:PlayAnimationReverse(InAnimation, PlaybackSpeed, bRestoreState) end

---@param InAnimation UWidgetAnimation
---@param StartAtTime float
---@param EndAtTime float
---@param NumLoopsToPlay int32
---@param PlayMode EUMGSequencePlayMode::Type
---@param PlaybackSpeed float
---@param bRestoreState boolean
function UUserWidget:PlayAnimationTimeRange(InAnimation, StartAtTime, EndAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState) end

---@param SoundToPlay USoundBase
function UUserWidget:PlaySound(SoundToPlay) end

---@param IsDesignTime boolean
function UUserWidget:PreConstruct(IsDesignTime) end

function UUserWidget:RegisterInputComponent() end

function UUserWidget:RemoveFromViewport() end

---@param InAnimation UWidgetAnimation
function UUserWidget:ReverseAnimation(InAnimation) end

---@param Alignment FVector2D
function UUserWidget:SetAlignmentInViewport(Alignment) end

---@param Anchors FAnchors
function UUserWidget:SetAnchorsInViewport(Anchors) end

---@param InAnimation UWidgetAnimation
---@param InTime float
function UUserWidget:SetAnimationCurrentTime(InAnimation, InTime) end

---@param InColorAndOpacity FLinearColor
function UUserWidget:SetColorAndOpacity(InColorAndOpacity) end

---@param Size FVector2D
function UUserWidget:SetDesiredSizeInViewport(Size) end

---@param InForegroundColor FSlateColor
function UUserWidget:SetForegroundColor(InForegroundColor) end

---@param bShouldBlock boolean
function UUserWidget:SetInputActionBlocking(bShouldBlock) end

---@param NewPriority int32
function UUserWidget:SetInputActionPriority(NewPriority) end

---@param InAnimation UWidgetAnimation
---@param NumLoopsToPlay int32
function UUserWidget:SetNumLoopsToPlay(InAnimation, NumLoopsToPlay) end

---@param LocalPlayerController APlayerController
function UUserWidget:SetOwningPlayer(LocalPlayerController) end

---@param InPadding FMargin
function UUserWidget:SetPadding(InPadding) end

---@param InAnimation UWidgetAnimation
---@param PlaybackSpeed float
function UUserWidget:SetPlaybackSpeed(InAnimation, PlaybackSpeed) end

---@param Position FVector2D
---@param bRemoveDPIScale boolean
function UUserWidget:SetPositionInViewport(Position, bRemoveDPIScale) end

function UUserWidget:StopAllAnimations() end

---@param InAnimation UWidgetAnimation
function UUserWidget:StopAnimation(InAnimation) end

function UUserWidget:StopAnimationsAndLatentActions() end

function UUserWidget:StopListeningForAllInputActions() end

---@param ActionName FName
---@param EventType EInputEvent
function UUserWidget:StopListeningForInputAction(ActionName, EventType) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUserWidget:Tick(MyGeometry, InDeltaTime) end

---@param Animation UWidgetAnimation
function UUserWidget:UnbindAllFromAnimationFinished(Animation) end

---@param Animation UWidgetAnimation
function UUserWidget:UnbindAllFromAnimationStarted(Animation) end

---@param Animation UWidgetAnimation
---@param Delegate FUnbindFromAnimationFinishedDelegate
function UUserWidget:UnbindFromAnimationFinished(Animation, Delegate) end

---@param Animation UWidgetAnimation
---@param Delegate FUnbindFromAnimationStartedDelegate
function UUserWidget:UnbindFromAnimationStarted(Animation, Delegate) end

function UUserWidget:UnregisterInputComponent() end

---@param Content UWidget
function UVerticalBox:AddChildToVerticalBox(Content) end

---@param InHorizontalAlignment EHorizontalAlignment
function UVerticalBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UVerticalBoxSlot:SetPadding(InPadding) end

---@param InSize FSlateChildSize
function UVerticalBoxSlot:SetSize(InSize) end

---@param InVerticalAlignment EVerticalAlignment
function UVerticalBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

function UViewport:GetViewLocation() end

function UViewport:GetViewRotation() end

function UViewport:GetViewportWorld() end

---@param Location FVector
function UViewport:SetViewLocation(Location) end

---@param Rotation FRotator
function UViewport:SetViewRotation(Rotation) end

---@param ActorClass TSubclassOf<AActor>
function UViewport:Spawn(ActorClass) end

function UVisibilityBinding:GetValue() end

function UWidget:ForceLayoutPrepass() end

---@param bForce boolean
function UWidget:ForceVolatile(bForce) end

---@param Item UObject
function UWidget:GenerateWidgetForObject__DelegateSignature(Item) end

---@param Item FString
function UWidget:GenerateWidgetForString__DelegateSignature(Item) end

function UWidget:GetAccessibleSummaryText() end

function UWidget:GetAccessibleText() end

function UWidget:GetBool__DelegateSignature() end

function UWidget:GetCachedGeometry() end

function UWidget:GetCheckBoxState__DelegateSignature() end

function UWidget:GetClipping() end

function UWidget:GetDesiredSize() end

function UWidget:GetFloat__DelegateSignature() end

function UWidget:GetGameInstance() end

function UWidget:GetInt32__DelegateSignature() end

function UWidget:GetIsEnabled() end

function UWidget:GetLinearColor__DelegateSignature() end

function UWidget:GetMouseCursor__DelegateSignature() end

function UWidget:GetOwningLocalPlayer() end

function UWidget:GetOwningPlayer() end

function UWidget:GetPaintSpaceGeometry() end

function UWidget:GetParent() end

function UWidget:GetRenderOpacity() end

function UWidget:GetRenderTransformAngle() end

function UWidget:GetSlateBrush__DelegateSignature() end

function UWidget:GetSlateColor__DelegateSignature() end

function UWidget:GetSlateVisibility__DelegateSignature() end

function UWidget:GetText__DelegateSignature() end

function UWidget:GetTickSpaceGeometry() end

function UWidget:GetVisibility() end

function UWidget:GetWidget__DelegateSignature() end

function UWidget:HasAnyUserFocus() end

function UWidget:HasFocusedDescendants() end

function UWidget:HasKeyboardFocus() end

function UWidget:HasMouseCapture() end

---@param UserIndex int32
---@param PointerIndex int32
function UWidget:HasMouseCaptureByUser(UserIndex, PointerIndex) end

---@param PlayerController APlayerController
function UWidget:HasUserFocus(PlayerController) end

---@param PlayerController APlayerController
function UWidget:HasUserFocusedDescendants(PlayerController) end

function UWidget:InvalidateLayoutAndVolatility() end

function UWidget:IsHovered() end

function UWidget:IsVisible() end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UWidget:OnPointerEvent__DelegateSignature(MyGeometry, MouseEvent) end

function UWidget:OnReply__DelegateSignature() end

function UWidget:RemoveFromParent() end

function UWidget:ResetCursor() end

---@param Rule EUINavigationRule
---@param WidgetToFocus FName
function UWidget:SetAllNavigationRules(Rule, WidgetToFocus) end

---@param InClipping EWidgetClipping
function UWidget:SetClipping(InClipping) end

---@param InCursor EMouseCursor::Type
function UWidget:SetCursor(InCursor) end

function UWidget:SetFocus() end

---@param bInIsEnabled boolean
function UWidget:SetIsEnabled(bInIsEnabled) end

function UWidget:SetKeyboardFocus() end

---@param Direction EUINavigation
---@param Rule EUINavigationRule
---@param WidgetToFocus FName
function UWidget:SetNavigationRule(Direction, Rule, WidgetToFocus) end

---@param Direction EUINavigation
---@param Rule EUINavigationRule
function UWidget:SetNavigationRuleBase(Direction, Rule) end

---@param Direction EUINavigation
---@param InCustomDelegate FSetNavigationRuleCustomInCustomDelegate
function UWidget:SetNavigationRuleCustom(Direction, InCustomDelegate) end

---@param Direction EUINavigation
---@param InCustomDelegate FSetNavigationRuleCustomBoundaryInCustomDelegate
function UWidget:SetNavigationRuleCustomBoundary(Direction, InCustomDelegate) end

---@param Direction EUINavigation
---@param InWidget UWidget
function UWidget:SetNavigationRuleExplicit(Direction, InWidget) end

---@param InOpacity float
function UWidget:SetRenderOpacity(InOpacity) end

---@param Scale FVector2D
function UWidget:SetRenderScale(Scale) end

---@param Shear FVector2D
function UWidget:SetRenderShear(Shear) end

---@param InTransform FWidgetTransform
function UWidget:SetRenderTransform(InTransform) end

---@param Angle float
function UWidget:SetRenderTransformAngle(Angle) end

---@param Pivot FVector2D
function UWidget:SetRenderTransformPivot(Pivot) end

---@param Translation FVector2D
function UWidget:SetRenderTranslation(Translation) end

---@param Widget UWidget
function UWidget:SetToolTip(Widget) end

---@param InToolTipText FText
function UWidget:SetToolTipText(InToolTipText) end

---@param PlayerController APlayerController
function UWidget:SetUserFocus(PlayerController) end

---@param InVisibility ESlateVisibility
function UWidget:SetVisibility(InVisibility) end

---@param Widget UUserWidget
---@param Delegate FBindToAnimationFinishedDelegate
function UWidgetAnimation:BindToAnimationFinished(Widget, Delegate) end

---@param Widget UUserWidget
---@param Delegate FBindToAnimationStartedDelegate
function UWidgetAnimation:BindToAnimationStarted(Widget, Delegate) end

function UWidgetAnimation:GetEndTime() end

function UWidgetAnimation:GetStartTime() end

---@param Widget UUserWidget
function UWidgetAnimation:UnbindAllFromAnimationFinished(Widget) end

---@param Widget UUserWidget
function UWidgetAnimation:UnbindAllFromAnimationStarted(Widget) end

---@param Widget UUserWidget
---@param Delegate FUnbindFromAnimationFinishedDelegate
function UWidgetAnimation:UnbindFromAnimationFinished(Widget, Delegate) end

---@param Widget UUserWidget
---@param Delegate FUnbindFromAnimationStartedDelegate
function UWidgetAnimation:UnbindFromAnimationStarted(Widget, Delegate) end

---@param Result UUMGSequencePlayer
---@param Widget UUserWidget
---@param InAnimation UWidgetAnimation
---@param StartAtTime float
---@param NumLoopsToPlay int32
---@param PlayMode EUMGSequencePlayMode::Type
---@param PlaybackSpeed float
function UWidgetAnimationPlayCallbackProxy:CreatePlayAnimationProxyObject(Result, Widget, InAnimation, StartAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed) end

---@param Result UUMGSequencePlayer
---@param Widget UUserWidget
---@param InAnimation UWidgetAnimation
---@param StartAtTime float
---@param EndAtTime float
---@param NumLoopsToPlay int32
---@param PlayMode EUMGSequencePlayMode::Type
---@param PlaybackSpeed float
function UWidgetAnimationPlayCallbackProxy:CreatePlayAnimationTimeRangeProxyObject(Result, Widget, InAnimation, StartAtTime, EndAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed) end

function UWidgetBinding:GetValue() end

function UWidgetBlueprintLibrary:CancelDragDrop() end

---@param Reply FEventReply
---@param CapturingWidget UWidget
---@param bInAllJoysticks boolean
function UWidgetBlueprintLibrary:CaptureJoystick(Reply, CapturingWidget, bInAllJoysticks) end

---@param Reply FEventReply
---@param CapturingWidget UWidget
function UWidgetBlueprintLibrary:CaptureMouse(Reply, CapturingWidget) end

---@param Reply FEventReply
---@param bInAllUsers boolean
function UWidgetBlueprintLibrary:ClearUserFocus(Reply, bInAllUsers) end

---@param WorldContextObject UObject
---@param WidgetType TSubclassOf<UUserWidget>
---@param OwningPlayer APlayerController
function UWidgetBlueprintLibrary:Create(WorldContextObject, WidgetType, OwningPlayer) end

---@param OperationClass TSubclassOf<UDragDropOperation>
function UWidgetBlueprintLibrary:CreateDragDropOperation(OperationClass) end

---@param Reply FEventReply
---@param WidgetDetectingDrag UWidget
---@param DragKey FKey
function UWidgetBlueprintLibrary:DetectDrag(Reply, WidgetDetectingDrag, DragKey) end

---@param PointerEvent FPointerEvent
---@param WidgetDetectingDrag UWidget
---@param DragKey FKey
function UWidgetBlueprintLibrary:DetectDragIfPressed(PointerEvent, WidgetDetectingDrag, DragKey) end

function UWidgetBlueprintLibrary:DismissAllMenus() end

---@param Context FPaintContext
---@param Position FVector2D
---@param Size FVector2D
---@param Brush USlateBrushAsset
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawBox(Context, Position, Size, Brush, Tint) end

---@param Context FPaintContext
---@param PositionA FVector2D
---@param PositionB FVector2D
---@param Tint FLinearColor
---@param bAntiAlias boolean
---@param Thickness float
function UWidgetBlueprintLibrary:DrawLine(Context, PositionA, PositionB, Tint, bAntiAlias, Thickness) end

---@param Context FPaintContext
---@param Points TArray<FVector2D>
---@param Tint FLinearColor
---@param bAntiAlias boolean
---@param Thickness float
function UWidgetBlueprintLibrary:DrawLines(Context, Points, Tint, bAntiAlias, Thickness) end

---@param Context FPaintContext
---@param inString FString
---@param Position FVector2D
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawText(Context, inString, Position, Tint) end

---@param Context FPaintContext
---@param Text FText
---@param Position FVector2D
---@param Font UFont
---@param FontSize int32
---@param FontTypeFace FName
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawTextFormatted(Context, Text, Position, Font, FontSize, FontTypeFace, Tint) end

---@param Reply FEventReply
function UWidgetBlueprintLibrary:EndDragDrop(Reply) end

---@param WorldContextObject UObject
---@param FoundWidgets TArray<UUserWidget>
---@param WidgetClass TSubclassOf<UUserWidget>
---@param TopLevelOnly boolean
function UWidgetBlueprintLibrary:GetAllWidgetsOfClass(WorldContextObject, FoundWidgets, WidgetClass, TopLevelOnly) end

---@param WorldContextObject UObject
---@param FoundWidgets TArray<UUserWidget>
---@param Interface TSubclassOf<UInterface>
---@param TopLevelOnly boolean
function UWidgetBlueprintLibrary:GetAllWidgetsWithInterface(WorldContextObject, FoundWidgets, Interface, TopLevelOnly) end

---@param Brush FSlateBrush
function UWidgetBlueprintLibrary:GetBrushResource(Brush) end

---@param Brush FSlateBrush
function UWidgetBlueprintLibrary:GetBrushResourceAsMaterial(Brush) end

---@param Brush FSlateBrush
function UWidgetBlueprintLibrary:GetBrushResourceAsTexture2D(Brush) end

function UWidgetBlueprintLibrary:GetDragDroppingContent() end

---@param Brush FSlateBrush
function UWidgetBlueprintLibrary:GetDynamicMaterial(Brush) end

---@param Event FCharacterEvent
function UWidgetBlueprintLibrary:GetInputEventFromCharacterEvent(Event) end

---@param Event FKeyEvent
function UWidgetBlueprintLibrary:GetInputEventFromKeyEvent(Event) end

---@param Event FNavigationEvent
function UWidgetBlueprintLibrary:GetInputEventFromNavigationEvent(Event) end

---@param Event FPointerEvent
function UWidgetBlueprintLibrary:GetInputEventFromPointerEvent(Event) end

---@param Event FAnalogInputEvent
function UWidgetBlueprintLibrary:GetKeyEventFromAnalogInputEvent(Event) end

---@param WorldContextObject UObject
---@param SafePadding FVector4
---@param SafePaddingScale FVector2D
---@param SpillOverPadding FVector4
function UWidgetBlueprintLibrary:GetSafeZonePadding(WorldContextObject, SafePadding, SafePaddingScale, SpillOverPadding) end

function UWidgetBlueprintLibrary:Handled() end

function UWidgetBlueprintLibrary:IsDragDropping() end

---@param Reply FEventReply
---@param CapturingWidget UWidget
function UWidgetBlueprintLibrary:LockMouse(Reply, CapturingWidget) end

---@param BrushAsset USlateBrushAsset
function UWidgetBlueprintLibrary:MakeBrushFromAsset(BrushAsset) end

---@param Material UMaterialInterface
---@param Width int32
---@param Height int32
function UWidgetBlueprintLibrary:MakeBrushFromMaterial(Material, Width, Height) end

---@param Texture UTexture2D
---@param Width int32
---@param Height int32
function UWidgetBlueprintLibrary:MakeBrushFromTexture(Texture, Width, Height) end

function UWidgetBlueprintLibrary:NoResourceBrush() end

function UWidgetBlueprintLibrary:OnGameWindowCloseButtonClickedDelegate__DelegateSignature() end

---@param Reply FEventReply
---@param bInAllJoysticks boolean
function UWidgetBlueprintLibrary:ReleaseJoystickCapture(Reply, bInAllJoysticks) end

---@param Reply FEventReply
function UWidgetBlueprintLibrary:ReleaseMouseCapture(Reply) end

function UWidgetBlueprintLibrary:RestorePreviousWindowTitleBarState() end

---@param Brush FSlateBrush
---@param Material UMaterialInterface
function UWidgetBlueprintLibrary:SetBrushResourceToMaterial(Brush, Material) end

---@param Brush FSlateBrush
---@param Texture UTexture2D
function UWidgetBlueprintLibrary:SetBrushResourceToTexture(Brush, Texture) end

---@param Type EColorVisionDeficiency
---@param Severity float
---@param CorrectDeficiency boolean
---@param ShowCorrectionWithDeficiency boolean
function UWidgetBlueprintLibrary:SetColorVisionDeficiencyType(Type, Severity, CorrectDeficiency, ShowCorrectionWithDeficiency) end

function UWidgetBlueprintLibrary:SetFocusToGameViewport() end

---@param WorldContextObject UObject
---@param CursorShape EMouseCursor::Type
---@param CursorName FName
---@param HotSpot FVector2D
function UWidgetBlueprintLibrary:SetHardwareCursor(WorldContextObject, CursorShape, CursorName, HotSpot) end

---@param Reply FEventReply
---@param CapturingWidget UWidget
function UWidgetBlueprintLibrary:SetHighPrecisionMouseMove(Reply, CapturingWidget) end

---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param bLockMouseToViewport boolean
---@param bHideCursorDuringCapture boolean
function UWidgetBlueprintLibrary:SetInputMode_GameAndUI(Target, InWidgetToFocus, bLockMouseToViewport, bHideCursorDuringCapture) end

---@param PlayerController APlayerController
---@param InWidgetToFocus UWidget
---@param InMouseLockMode EMouseLockMode
---@param bHideCursorDuringCapture boolean
function UWidgetBlueprintLibrary:SetInputMode_GameAndUIEx(PlayerController, InWidgetToFocus, InMouseLockMode, bHideCursorDuringCapture) end

---@param PlayerController APlayerController
function UWidgetBlueprintLibrary:SetInputMode_GameOnly(PlayerController) end

---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param bLockMouseToViewport boolean
function UWidgetBlueprintLibrary:SetInputMode_UIOnly(Target, InWidgetToFocus, bLockMouseToViewport) end

---@param PlayerController APlayerController
---@param InWidgetToFocus UWidget
---@param InMouseLockMode EMouseLockMode
function UWidgetBlueprintLibrary:SetInputMode_UIOnlyEx(PlayerController, InWidgetToFocus, InMouseLockMode) end

---@param Reply FEventReply
---@param NewMousePosition FVector2D
function UWidgetBlueprintLibrary:SetMousePosition(Reply, NewMousePosition) end

---@param Reply FEventReply
---@param FocusWidget UWidget
---@param bInAllUsers boolean
function UWidgetBlueprintLibrary:SetUserFocus(Reply, FocusWidget, bInAllUsers) end

---@param bActive boolean
function UWidgetBlueprintLibrary:SetWindowTitleBarCloseButtonActive(bActive) end

---@param Delegate FSetWindowTitleBarOnCloseClickedDelegateDelegate
function UWidgetBlueprintLibrary:SetWindowTitleBarOnCloseClickedDelegate(Delegate) end

---@param TitleBarContent UWidget
---@param Mode EWindowTitleBarMode
---@param bTitleBarDragEnabled boolean
---@param bWindowButtonsVisible boolean
---@param bTitleBarVisible boolean
function UWidgetBlueprintLibrary:SetWindowTitleBarState(TitleBarContent, Mode, bTitleBarDragEnabled, bWindowButtonsVisible, bTitleBarVisible) end

function UWidgetBlueprintLibrary:Unhandled() end

---@param Reply FEventReply
function UWidgetBlueprintLibrary:UnlockMouse(Reply) end

function UWidgetComponent:GetCurrentDrawSize() end

function UWidgetComponent:GetCylinderArcAngle() end

function UWidgetComponent:GetDrawAtDesiredSize() end

function UWidgetComponent:GetDrawSize() end

function UWidgetComponent:GetGeometryMode() end

function UWidgetComponent:GetManuallyRedraw() end

function UWidgetComponent:GetMaterialInstance() end

function UWidgetComponent:GetOwnerPlayer() end

function UWidgetComponent:GetPivot() end

function UWidgetComponent:GetRedrawTime() end

function UWidgetComponent:GetRenderTarget() end

function UWidgetComponent:GetTickWhenOffscreen() end

function UWidgetComponent:GetTwoSided() end

function UWidgetComponent:GetUserWidgetObject() end

function UWidgetComponent:GetWidget() end

function UWidgetComponent:GetWidgetSpace() end

function UWidgetComponent:GetWindowFocusable() end

function UWidgetComponent:GetWindowVisiblility() end

function UWidgetComponent:IsWidgetVisible() end

function UWidgetComponent:RequestRedraw() end

function UWidgetComponent:RequestRenderUpdate() end

---@param NewBackgroundColor FLinearColor
function UWidgetComponent:SetBackgroundColor(NewBackgroundColor) end

---@param InCylinderArcAngle float
function UWidgetComponent:SetCylinderArcAngle(InCylinderArcAngle) end

---@param bInDrawAtDesiredSize boolean
function UWidgetComponent:SetDrawAtDesiredSize(bInDrawAtDesiredSize) end

---@param Size FVector2D
function UWidgetComponent:SetDrawSize(Size) end

---@param InGeometryMode EWidgetGeometryMode
function UWidgetComponent:SetGeometryMode(InGeometryMode) end

---@param bUseManualRedraw boolean
function UWidgetComponent:SetManuallyRedraw(bUseManualRedraw) end

---@param LocalPlayer ULocalPlayer
function UWidgetComponent:SetOwnerPlayer(LocalPlayer) end

---@param InPivot FVector2D
function UWidgetComponent:SetPivot(InPivot) end

---@param InRedrawTime float
function UWidgetComponent:SetRedrawTime(InRedrawTime) end

---@param InTickMode ETickMode
function UWidgetComponent:SetTickMode(InTickMode) end

---@param bWantTickWhenOffscreen boolean
function UWidgetComponent:SetTickWhenOffscreen(bWantTickWhenOffscreen) end

---@param NewTintColorAndOpacity FLinearColor
function UWidgetComponent:SetTintColorAndOpacity(NewTintColorAndOpacity) end

---@param bWantTwoSided boolean
function UWidgetComponent:SetTwoSided(bWantTwoSided) end

---@param Widget UUserWidget
function UWidgetComponent:SetWidget(Widget) end

---@param NewSpace EWidgetSpace
function UWidgetComponent:SetWidgetSpace(NewSpace) end

---@param bInWindowFocusable boolean
function UWidgetComponent:SetWindowFocusable(bInWindowFocusable) end

---@param InVisibility EWindowVisibility
function UWidgetComponent:SetWindowVisibility(InVisibility) end

function UWidgetInteractionComponent:Get2DHitLocation() end

function UWidgetInteractionComponent:GetHoveredWidgetComponent() end

function UWidgetInteractionComponent:GetLastHitResult() end

function UWidgetInteractionComponent:IsOverFocusableWidget() end

function UWidgetInteractionComponent:IsOverHitTestVisibleWidget() end

function UWidgetInteractionComponent:IsOverInteractableWidget() end

---@param Key FKey
function UWidgetInteractionComponent:PressAndReleaseKey(Key) end

---@param Key FKey
---@param bRepeat boolean
function UWidgetInteractionComponent:PressKey(Key, bRepeat) end

---@param Key FKey
function UWidgetInteractionComponent:PressPointerKey(Key) end

---@param Key FKey
function UWidgetInteractionComponent:ReleaseKey(Key) end

---@param Key FKey
function UWidgetInteractionComponent:ReleasePointerKey(Key) end

---@param ScrollDelta float
function UWidgetInteractionComponent:ScrollWheel(ScrollDelta) end

---@param Characters FString
---@param bRepeat boolean
function UWidgetInteractionComponent:SendKeyChar(Characters, bRepeat) end

---@param HitResult FHitResult
function UWidgetInteractionComponent:SetCustomHitResult(HitResult) end

---@param FocusWidget UWidget
function UWidgetInteractionComponent:SetFocus(FocusWidget) end

function UWidgetLayoutLibrary:GetMousePositionOnPlatform() end

---@param WorldContextObject UObject
function UWidgetLayoutLibrary:GetMousePositionOnViewport(WorldContextObject) end

---@param Player APlayerController
---@param LocationX float
---@param LocationY float
function UWidgetLayoutLibrary:GetMousePositionScaledByDPI(Player, LocationX, LocationY) end

---@param PlayerController APlayerController
function UWidgetLayoutLibrary:GetPlayerScreenWidgetGeometry(PlayerController) end

---@param WorldContextObject UObject
function UWidgetLayoutLibrary:GetViewportScale(WorldContextObject) end

---@param WorldContextObject UObject
function UWidgetLayoutLibrary:GetViewportSize(WorldContextObject) end

---@param WorldContextObject UObject
function UWidgetLayoutLibrary:GetViewportWidgetGeometry(WorldContextObject) end

---@param PlayerController APlayerController
---@param WorldLocation FVector
---@param ScreenPosition FVector2D
---@param bPlayerViewportRelative boolean
function UWidgetLayoutLibrary:ProjectWorldLocationToWidgetPosition(PlayerController, WorldLocation, ScreenPosition, bPlayerViewportRelative) end

---@param WorldContextObject UObject
function UWidgetLayoutLibrary:RemoveAllWidgets(WorldContextObject) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsBorderSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsCanvasSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsGridSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsHorizontalBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsOverlaySlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsSafeBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsScaleBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsScrollBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsSizeBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsUniformGridSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsVerticalBoxSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsWidgetSwitcherSlot(Widget) end

---@param Widget UWidget
function UWidgetLayoutLibrary:SlotAsWrapBoxSlot(Widget) end

function UWidgetSwitcher:GetActiveWidget() end

function UWidgetSwitcher:GetActiveWidgetIndex() end

function UWidgetSwitcher:GetNumWidgets() end

---@param Index int32
function UWidgetSwitcher:GetWidgetAtIndex(Index) end

---@param Widget UWidget
function UWidgetSwitcher:SetActiveWidget(Widget) end

---@param Index int32
function UWidgetSwitcher:SetActiveWidgetIndex(Index) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWidgetSwitcherSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UWidgetSwitcherSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UWidgetSwitcherSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWindowTitleBarArea:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UWindowTitleBarArea:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UWindowTitleBarArea:SetVerticalAlignment(InVerticalAlignment) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWindowTitleBarAreaSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UWindowTitleBarAreaSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UWindowTitleBarAreaSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param Content UWidget
function UWrapBox:AddChildToWrapBox(Content) end

---@param InPadding FVector2D
function UWrapBox:SetInnerSlotPadding(InPadding) end

---@param InbFillEmptySpace boolean
function UWrapBoxSlot:SetFillEmptySpace(InbFillEmptySpace) end

---@param InFillSpanWhenLessThan float
function UWrapBoxSlot:SetFillSpanWhenLessThan(InFillSpanWhenLessThan) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWrapBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InPadding FMargin
function UWrapBoxSlot:SetPadding(InPadding) end

---@param InVerticalAlignment EVerticalAlignment
function UWrapBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
