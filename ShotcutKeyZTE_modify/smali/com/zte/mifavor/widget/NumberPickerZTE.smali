.class public Lcom/zte/mifavor/widget/NumberPickerZTE;
.super Landroid/widget/LinearLayout;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$CustomEditText;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;,
        Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;


# instance fields
.field private INPUT_DISABLE_FLAG:I

.field private displayYear:I

.field private mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputSize:F

.field private final mInputText:Landroid/widget/EditText;

.field private mInputTextColor:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

.field private mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

.field private final mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedSize:F

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWhellPaintColor:I

.field private mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mdividerWith:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/zte/extres/R$layout;->number_picker:I

    sput v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 203
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    .line 2235
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 584
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 597
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    const/4 v11, 0x0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    .line 156
    const v11, -0x666667

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    .line 157
    const v11, -0xcc6601

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 256
    const/4 v11, 0x0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    .line 311
    const-wide/16 v11, 0x12c

    iput-wide v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    .line 316
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 321
    const/4 v11, 0x3

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 341
    const/high16 v11, -0x80000000

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 442
    const/4 v11, 0x0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    .line 493
    const/4 v11, -0x1

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    .line 604
    sget v6, Lcom/zte/extres/R$layout;->number_picker:I

    .line 606
    .local v6, "layoutResId":I
    const-string v11, "ro.sf.lcd_density"

    const/16 v12, 0x1e0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 622
    .local v7, "n":I
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    .line 626
    const/4 v11, 0x0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSolidColor:I

    .line 630
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/zte/extres/R$drawable;->numberpicker_selection_divider_light:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 632
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v4, v11

    .line 639
    .local v4, "defSelectionDividerHeight":I
    const/4 v11, 0x2

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    .line 641
    const/4 v11, 0x1

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v3, v11

    .line 648
    .local v3, "defSelectionDividerDistance":I
    mul-int/lit8 v11, v7, 0x45

    div-int/lit16 v11, v11, 0xa0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    .line 655
    const/4 v11, -0x1

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    .line 657
    mul-int/lit16 v11, v7, 0xcf

    div-int/lit16 v11, v11, 0xa0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    .line 658
    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    iget v12, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    if-le v11, v12, :cond_0

    .line 660
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "minHeight > maxHeight"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 668
    :cond_0
    mul-int/lit8 v11, v7, 0x50

    div-int/lit16 v11, v11, 0xa0

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    .line 670
    const/4 v11, -0x1

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    .line 672
    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    iget v12, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-le v11, v12, :cond_1

    .line 674
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "minWidth > maxWidth"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 677
    :cond_1
    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    .line 681
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 685
    new-instance v11, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-direct {v11, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    .line 692
    iget-boolean v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWillNotDraw(Z)V

    .line 694
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 696
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x1

    invoke-virtual {v5, v6, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 698
    new-instance v8, Lcom/zte/mifavor/widget/NumberPickerZTE$1;

    invoke-direct {v8, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$1;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 710
    .local v8, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v9, Lcom/zte/mifavor/widget/NumberPickerZTE$2;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$2;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 724
    .local v9, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    iget-boolean v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v11, :cond_5

    .line 725
    sget v11, Lcom/zte/extres/R$id;->increment:I

    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    .line 726
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 733
    :goto_2
    iget-boolean v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v11, :cond_6

    .line 734
    sget v11, Lcom/zte/extres/R$id;->decrement:I

    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    .line 735
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 742
    :goto_3
    sget v11, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 743
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    new-instance v12, Lcom/zte/mifavor/widget/NumberPickerZTE$3;

    invoke-direct {v12, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$3;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 753
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    new-instance v14, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;

    invoke-direct {v14, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$InputTextFilter;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 755
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 756
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 759
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 760
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    .line 761
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v11

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    .line 762
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v11

    div-int/lit8 v11, v11, 0x8

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    .line 764
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTextSize()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    .line 767
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 768
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 769
    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 770
    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 771
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 772
    iget-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 773
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v11, Lcom/zte/mifavor/widget/NumberPickerZTE;->ENABLED_STATE_SET:[I

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 774
    .local v0, "color":I
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    iput-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 778
    new-instance v11, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 779
    new-instance v11, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x40200000    # 2.5f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v11, v12, v13}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 782
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 785
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getImportantForAccessibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 786
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setImportantForAccessibility(I)V

    .line 788
    :cond_2
    return-void

    .line 677
    .end local v0    # "color":I
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    .end local v2    # "configuration":Landroid/view/ViewConfiguration;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v9    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v10    # "paint":Landroid/graphics/Paint;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 692
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 729
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v9    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_2

    .line 738
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/NumberPickerZTE;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/zte/mifavor/widget/NumberPickerZTE;)J
    .locals 2
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2802(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/NumberPickerZTE;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$3400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$3600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I

    return v0
.end method

.method static synthetic access$3700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$4100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$4200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$4600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$4700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$5100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$5200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I

    return v0
.end method

.method static synthetic access$5400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$6000(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    return v0
.end method

.method static synthetic access$6900(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    return v0
.end method

.method static synthetic access$7200(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1851
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1853
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1856
    :cond_0
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1857
    if-eqz p1, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1864
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 1872
    :goto_1
    return-void

    .line 1861
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1866
    :cond_2
    if-eqz p1, :cond_3

    .line 1867
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_1

    .line 1869
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1992
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1993
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1992
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1995
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1996
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1997
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    .line 1999
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 2000
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 2001
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2009
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2010
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2024
    :goto_0
    return-void

    .line 2013
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2014
    :cond_1
    const-string v2, ""

    .line 2023
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2016
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2017
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int v1, p1, v3

    .line 2018
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 2019
    goto :goto_1

    .line 2020
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2323
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2324
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2325
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 2326
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2327
    if-lez v4, :cond_2

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2330
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2332
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 2333
    const/4 v1, 0x1

    .line 2335
    :cond_1
    return v1

    .line 2327
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1944
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1946
    if-lez p1, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1954
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 1955
    return-void

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2977
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2188
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2190
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2214
    :goto_0
    return v1

    .line 2195
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2197
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2198
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2199
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2208
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2191
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2214
    :goto_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    goto :goto_0

    .line 2209
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->sTwoDigitFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1961
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1962
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1968
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1964
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1965
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1301
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1303
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1306
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1310
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1976
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1977
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1979
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1980
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1981
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    .line 1983
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1984
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 1985
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1907
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVerticalFadingEdgeEnabled(Z)V

    .line 1908
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFadingEdgeLength(I)V

    .line 1909
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 8

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1876
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1877
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    mul-int v4, v5, v6

    .line 1878
    .local v4, "totalTextHeight":I
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    iget v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1879
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1881
    .local v2, "textGapCount":F
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalTextHeight()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectorIndices.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTextSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBottom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalTextGapHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "textGapCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    .line 1891
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTextSize:I

    iget v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    .line 1893
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelectorTextGapHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const-string v5, "guojingdong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelectorElementHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1900
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 1902
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1903
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1904
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1801
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1802
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1803
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 1804
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1805
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1806
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1807
    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1809
    :cond_0
    aput v2, v3, v1

    .line 1810
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 1804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1812
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1755
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1767
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1758
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1759
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1760
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1769
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1764
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1767
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1760
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 861
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 862
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 863
    .local v0, "amountToScroll":I
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 865
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 866
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 867
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 868
    if-lez v2, :cond_1

    .line 869
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 874
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 875
    invoke-virtual {p0, v4, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    .line 878
    :goto_1
    return v3

    .line 871
    :cond_1
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 878
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;->onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    .line 2117
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1931
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1938
    :cond_0
    :goto_0
    return-void

    .line 1934
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    .line 1935
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;->onScrollStateChange(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1916
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1919
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 1925
    :cond_1
    :goto_0
    return-void

    .line 1921
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1922
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2151
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    .line 2155
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2157
    return-void

    .line 2153
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2128
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    .line 2132
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2133
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2134
    return-void

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2223
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    .line 2227
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->access$602(Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;I)I

    .line 2228
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;->access$702(Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;I)I

    .line 2229
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->post(Ljava/lang/Runnable;)Z

    .line 2230
    return-void

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSetSelectionCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2178
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2179
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 2182
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2166
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2143
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1788
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1789
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1790
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndState(III)I

    move-result p2

    .line 1792
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1823
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1841
    :goto_0
    return-void

    .line 1827
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1828
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1833
    :goto_1
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1834
    .local v0, "previous":I
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1835
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1836
    if-eqz p2, :cond_1

    .line 1837
    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->notifyChange(II)V

    .line 1839
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1840
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1830
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1831
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1286
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1288
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1289
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1293
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1295
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1316
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    const/4 v4, 0x0

    .line 1320
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1321
    const/4 v3, 0x0

    .line 1322
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1323
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1325
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1326
    move v3, v1

    .line 1322
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1329
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1330
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    .line 1331
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1332
    add-int/lit8 v5, v5, 0x1

    .line 1333
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1335
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1346
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1348
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1349
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1350
    iput v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    .line 1354
    :goto_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1337
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1338
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1339
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1341
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1342
    float-to-int v4, v6

    .line 1338
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1352
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    iput v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2093
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-le v2, v3, :cond_0

    .line 2094
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2106
    :goto_0
    return v1

    .line 2098
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, "text":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2102
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2098
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v0, v2, v3

    goto :goto_1

    .line 2106
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2032
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2033
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2035
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 2041
    :goto_0
    return-void

    .line 2038
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2039
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 1129
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1131
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1136
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1137
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1138
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1140
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    .line 1141
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1142
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1143
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1145
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1073
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1074
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1123
    :goto_0
    return v4

    .line 1076
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1079
    .local v1, "eventY":I
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1080
    const/4 v2, 0x3

    .line 1086
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1087
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    .line 1088
    .local v3, "provider":Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1123
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1081
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1082
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1084
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1090
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1093
    iput v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 1094
    invoke-virtual {v3, v2, v6, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1099
    :pswitch_2
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1101
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1104
    invoke-virtual {v3, v2, v7}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1107
    iput v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 1108
    invoke-virtual {v3, v2, v6, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1115
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1118
    iput v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 1023
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1024
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1056
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 1027
    :sswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 1031
    :sswitch_1
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1036
    :pswitch_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1039
    :goto_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestFocus()Z

    .line 1040
    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    .line 1041
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 1042
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    goto :goto_1

    .line 1036
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 1043
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1049
    :pswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1050
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 1024
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1012
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1018
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1015
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1062
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1068
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1065
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1736
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1737
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1742
    :goto_0
    return-object v0

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1740
    new-instance v0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;-><init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1558
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1481
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1442
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1553
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 1418
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1420
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMaxValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMinValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1367
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return v0
.end method

.method public getYearValue()I
    .locals 3

    .prologue
    .line 1428
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1430
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMaxValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMinValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return -1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v0, 0x0

    .line 1434
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 1564
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1568
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v12, :cond_1

    .line 1569
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1573
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1576
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez v12, :cond_3

    .line 1578
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_2

    .line 1579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Lcom/zte/mifavor/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1584
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_3

    .line 1585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Lcom/zte/mifavor/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1593
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1595
    .local v6, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    if-nez v12, :cond_7

    .line 1596
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v6

    if-ge v3, v12, :cond_8

    .line 1597
    aget v5, v6, v3

    .line 1598
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1606
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v3, v12, :cond_6

    .line 1607
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1609
    if-lez v3, :cond_5

    const/high16 v12, 0x41f00000    # 30.0f

    sub-float v12, v11, v12

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1617
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v12, v11

    .line 1609
    goto :goto_2

    .line 1611
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_4

    .line 1612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1620
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_7
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ondraw disable mvalue-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-le v12, v13, :cond_9

    .line 1623
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ondraw mvalue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " displayYear= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1626
    .local v9, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1629
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1632
    const-string v12, "--"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1633
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1634
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1636
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1637
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1704
    .end local v9    # "txt":Ljava/lang/String;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1706
    move-object/from16 v0, p0

    iget v8, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 1707
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    add-int v2, v8, v12

    .line 1708
    .local v2, "bottomOfTopDivider":I
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDivider="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mRight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v8, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1716
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    .line 1717
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int v7, v1, v12

    .line 1719
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v7, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1638
    .end local v1    # "bottomOfBottomDivider":I
    .end local v2    # "bottomOfTopDivider":I
    .end local v7    # "topOfBottomDivider":I
    .end local v8    # "topOfTopDivider":I
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    if-ne v12, v13, :cond_a

    .line 1639
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1640
    .restart local v9    # "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1643
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1644
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1648
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1651
    const-string v12, "--"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1653
    .end local v9    # "txt":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ne v12, v13, :cond_b

    .line 1654
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1656
    const-string v12, "--"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1657
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1658
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1659
    .restart local v9    # "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1662
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1663
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1664
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1669
    .end local v9    # "txt":Ljava/lang/String;
    :cond_b
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ondraw disable input normal mvalue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v12, v6

    if-ge v3, v12, :cond_8

    .line 1672
    aget v5, v6, v3

    .line 1673
    .restart local v5    # "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1684
    .restart local v4    # "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v3, v12, :cond_e

    .line 1685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1687
    if-lez v3, :cond_d

    const/high16 v12, 0x41f00000    # 30.0f

    sub-float v12, v11, v12

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1695
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1671
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    move v12, v11

    .line 1687
    goto :goto_6

    .line 1689
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_c

    .line 1690
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1727
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1728
    const-class v0, Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1729
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1730
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1731
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1732
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 883
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 931
    :goto_0
    return v1

    .line 886
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 887
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 931
    goto :goto_0

    .line 889
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 890
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventTime:J

    .line 893
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    .line 894
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 896
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 897
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez v3, :cond_2

    .line 898
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    .line 908
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 909
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 910
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 911
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 912
    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_0

    .line 901
    :cond_3
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 902
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    if-nez v3, :cond_2

    .line 903
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 913
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 914
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 915
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 916
    :cond_5
    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 917
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V

    .line 918
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 920
    :cond_6
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 921
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V

    .line 922
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 925
    :cond_7
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 926
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 793
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 794
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result v7

    .line 798
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result v6

    .line 799
    .local v6, "msrdHght":I
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msrdWdth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msrdHght="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 804
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 805
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 806
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 807
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 808
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 809
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 811
    if-eqz p1, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheel()V

    .line 814
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHeight()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSelectionDividersDistance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTopSelectionDividerTop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v8, "guojingdong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBottomSelectionDividerBottom="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeFadingEdges()V

    .line 822
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 824
    iget v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 831
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 832
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 848
    :goto_0
    return-void

    .line 836
    :cond_0
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v2

    .line 838
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v1

    .line 840
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 843
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinWidth:I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 845
    .local v3, "widthSize":I
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinHeight:I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 847
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 937
    :cond_0
    const/4 v10, 0x0

    .line 1006
    :goto_0
    return v10

    .line 939
    :cond_1
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 940
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 942
    :cond_2
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 944
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1006
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 946
    :pswitch_0
    iget-boolean v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    if-nez v10, :cond_3

    .line 949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 950
    .local v1, "currentMoveY":F
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 951
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 952
    .local v2, "deltaDownY":I
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 953
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 954
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 961
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 957
    :cond_5
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 958
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->scrollBy(II)V

    .line 959
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_2

    .line 965
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeBeginSoftInputCommand()V

    .line 966
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeChangeCurrentByOneFromLongPress()V

    .line 967
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v10}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 968
    iget-object v9, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 969
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 970
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 971
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 972
    invoke-direct {p0, v7}, Lcom/zte/mifavor/widget/NumberPickerZTE;->fling(I)V

    .line 973
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 1001
    :goto_3
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1002
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 975
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 976
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 977
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 978
    .local v4, "deltaTime":J
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 980
    iget-boolean v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_8

    .line 981
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 982
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V

    .line 999
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_3

    .line 984
    :cond_8
    iget v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 986
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 987
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 988
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 990
    :cond_9
    if-gez v8, :cond_7

    .line 991
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 992
    iget-object v10, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mPressedStateHelper:Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 997
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1163
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1164
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1166
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1171
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1174
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1175
    :cond_3
    :goto_1
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1176
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1177
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->decrementSelectorIndices([I)V

    .line 1178
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1179
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1181
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1184
    :cond_4
    :goto_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1185
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1186
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->incrementSelectorIndices([I)V

    .line 1187
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1188
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1190
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setColor(II)V
    .locals 1
    .param p1, "color1"    # I
    .param p2, "color2"    # I

    .prologue
    .line 2063
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWhellPaintColor:I

    .line 2064
    iput p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputTextColor:I

    .line 2065
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2066
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2067
    return-void
.end method

.method public setDisableInput(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 2054
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    .line 2056
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->displayYear:I

    .line 2057
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 2058
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    .line 2059
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 2060
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1549
    :goto_0
    return-void

    .line 1538
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1546
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1547
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1548
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 2070
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mdividerWith:I

    .line 2071
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1152
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1155
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1159
    return-void
.end method

.method public setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    if-ne p1, v0, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1237
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mFormatter:Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    .line 1238
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1239
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setInputSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2075
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputSize:F

    .line 2076
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1496
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1499
    :cond_0
    if-gez p1, :cond_1

    .line 1500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    .line 1503
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1504
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1506
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1507
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1508
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1509
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1510
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1511
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1506
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1457
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1473
    :goto_0
    return-void

    .line 1460
    :cond_0
    if-gez p1, :cond_1

    .line 1461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1463
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    .line 1464
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    if-le v1, v2, :cond_2

    .line 1465
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I

    .line 1467
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1468
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1469
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1470
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1471
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1472
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1467
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1408
    iput-wide p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    .line 1409
    return-void
.end method

.method public setOnScrollListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnScrollListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnScrollListener;

    .line 1219
    return-void
.end method

.method public setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mOnValueChangeListener:Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;

    .line 1209
    return-void
.end method

.method public setSelectorSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 2079
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2080
    .local v0, "temp":Landroid/widget/EditText;
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2081
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectedSize:F

    .line 2082
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2083
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 1272
    if-nez p1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1274
    const-string v0, "numberpickerZTE"

    const-string v1, "SETVALUE -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    invoke-direct {p0, v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1280
    :goto_0
    return-void

    .line 1279
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_0
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1389
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1390
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1392
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    .line 1394
    :cond_1
    return-void

    .line 1389
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
