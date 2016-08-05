.class public abstract Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.super Landroid/view/ViewGroup;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DELAY:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x258

.field private static final DEFAULT_DRAG_BEZEL_DP:I = 0x18

.field private static final DEFAULT_DROP_SHADOW_DP:I = 0x6

.field static final INDICATOR_ANIM_DURATION:I = 0x320

.field protected static final INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MENU_DRAG_CONTENT:I = 0x0

.field public static final MENU_DRAG_WINDOW:I = 0x1

.field protected static final SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_CLOSING:I = 0x1

.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_OPEN:I = 0x8

.field public static final STATE_OPENING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuDrawer"

.field public static final TOUCH_MODE_BEZEL:I = 0x1

.field public static final TOUCH_MODE_FULLSCREEN:I = 0x2

.field public static final TOUCH_MODE_NONE:I

.field static final USE_TRANSLATIONS:Z


# instance fields
.field private final ACTIONBAR_HEIGHT:I

.field private final INDICATOR_HEIGHT:I

.field private final SPLIT_ACTIONBAR_COLOR:I

.field private final SPLIT_ACTIONBAR_HEIGHT:I

.field private mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

.field protected mActiveIndicator:Landroid/graphics/Bitmap;

.field protected mActivePosition:I

.field protected final mActiveRect:Landroid/graphics/Rect;

.field protected mActiveView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIndicatorAnimation:Z

.field protected mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

.field private mCurrentUpContentDesc:I

.field protected mDragMode:I

.field protected mDrawOverlay:Z

.field private mDrawerClosedContentDesc:I

.field protected mDrawerIndicatorEnabled:Z

.field private mDrawerOpenContentDesc:I

.field protected mDrawerState:I

.field protected mDropShadowColor:I

.field protected mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropShadowEnabled:Z

.field protected final mDropShadowRect:Landroid/graphics/Rect;

.field protected mDropShadowSize:I

.field protected mHardwareLayersEnabled:Z

.field protected mIndicatorAnimating:Z

.field private final mIndicatorClipRect:Landroid/graphics/Rect;

.field protected mIndicatorOffset:F

.field private mIndicatorRunnable:Ljava/lang/Runnable;

.field private mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

.field protected mIndicatorStartPos:I

.field protected mIsStatic:Z

.field protected mMaxAnimationDuration:I

.field protected mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

.field protected mMenuOverlay:Landroid/graphics/drawable/Drawable;

.field public mMenuSize:I

.field private mMenuView:Landroid/view/View;

.field protected mMenuVisible:Z

.field protected mOffsetPixels:F

.field private mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

.field private mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

.field protected mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

.field protected mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field private mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

.field private mSplitActionbarHeight:I

.field protected mState:Landroid/os/Bundle;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

.field protected mTouchBezelSize:I

.field protected mTouchMode:I

.field protected mTouchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 196
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 608
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    .line 609
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 610
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 614
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 617
    sget v0, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 621
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    .line 282
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 293
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 316
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    .line 321
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mHardwareLayersEnabled:Z

    .line 336
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    .line 366
    const/16 v0, 0x258

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    .line 396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    .line 407
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_HEIGHT:I

    .line 408
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->ACTIONBAR_HEIGHT:I

    .line 409
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 410
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 411
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    .line 412
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 413
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_COLOR:I

    .line 1045
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 622
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private animateIndicatorInvalidate()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->getCurr()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1108
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1110
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1117
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    goto :goto_0
.end method

.method public static attach(Landroid/app/Activity;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 422
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .prologue
    .line 433
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;I)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;I)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .param p3, "dragMode"    # I

    .prologue
    .line 470
    invoke-static {p0, p3, p2, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    .line 471
    .local v0, "menuDrawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    sget v1, Lcom/zte/extres/R$id;->md__drawer:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setId(I)V

    .line 473
    packed-switch p3, :pswitch_data_0

    .line 483
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown menu mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :pswitch_0
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToContent(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    .line 486
    :goto_0
    return-object v0

    .line 479
    :pswitch_1
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .prologue
    .line 444
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-static {p0, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method private static attachToContent(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    const/4 v2, -0x1

    .line 532
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 554
    invoke-virtual {v0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 557
    return-void
.end method

.method private static attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    const/4 v3, -0x1

    .line 596
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 597
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 599
    .local v0, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 600
    invoke-virtual {v1, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 602
    iget-object v2, p1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    return-void
.end method

.method private completeAnimatingIndicator()V
    .locals 1

    .prologue
    .line 1123
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1125
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1126
    return-void
.end method

.method private static createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .param p3, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .prologue
    .line 498
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;-><init>(Landroid/app/Activity;I)V

    .line 500
    .local v0, "drawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    .line 501
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 503
    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;

    invoke-direct {v1, v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;Landroid/app/Activity;)V

    .line 516
    .local v1, "drawerarrwer":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;
    iput p1, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDragMode:I

    .line 517
    iput-object p2, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 520
    return-object v0
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 767
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateDropShadowRect()V

    .line 771
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 772
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 773
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 809
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    sget v5, Lcom/zte/extres/R$id;->mdActiveViewPosition:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 810
    .local v3, "position":Ljava/lang/Integer;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 811
    .local v2, "pos":I
    :goto_0
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    if-ne v2, v4, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateIndicatorClipRect()V

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "drawLeft":I
    const/4 v1, 0x0

    .line 818
    .local v1, "drawTop":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 836
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 839
    .end local v0    # "drawLeft":I
    .end local v1    # "drawTop":I
    :cond_0
    return-void

    .line 810
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 821
    .restart local v0    # "drawLeft":I
    .restart local v1    # "drawTop":I
    .restart local v2    # "pos":I
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 822
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 823
    goto :goto_1

    .line 826
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 827
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 828
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 829
    goto :goto_1

    .line 832
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 833
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1

    .line 818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIndicatorStartPos()I
    .locals 2

    .prologue
    .line 1076
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1084
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    .line 1078
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1080
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1082
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldDrawIndicator()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimatingIndicator()V
    .locals 4

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 1064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1065
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->startScroll(FFI)V

    .line 1067
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    .line 1068
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->closeMenu(Z)V

    .line 959
    return-void
.end method

.method public abstract closeMenu(Z)V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 745
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 746
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    float-to-int v0, v1

    .line 748
    .local v0, "offsetPixels":I
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 751
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v1, :cond_1

    .line 754
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->shouldDrawIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 755
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 757
    :cond_2
    return-void
.end method

.method protected dispatchOnDrawerSlide(FI)V
    .locals 1
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1598
    :cond_1
    return-void
.end method

.method protected dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected abstract drawOverlay(Landroid/graphics/Canvas;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 1584
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setPadding(IIII)V

    .line 1587
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1415
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 1418
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawOverlay()Z
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 1184
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1195
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 1186
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1189
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1192
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    return v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v10, -0x1000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 626
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setWillNotDraw(Z)V

    .line 627
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setFocusable(Z)V

    .line 629
    sget-object v5, Lcom/zte/extres/R$styleable;->MenuDrawer:[I

    sget v6, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    sget v7, Lcom/zte/extres/R$style;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 632
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdContentBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 633
    .local v1, "contentBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 635
    .local v3, "menuBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuSize:I

    const/16 v6, 0xf0

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    .line 637
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdActiveIndicator:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 638
    .local v2, "indicatorResId":I
    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    .line 642
    :cond_0
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowEnabled:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 644
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadow:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 647
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowColor:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    .line 650
    :cond_1
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowSize:I

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 653
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdTouchBezelSize:I

    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    .line 656
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 658
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMaxAnimationDuration:I

    const/16 v6, 0x258

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 666
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerOpenUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 667
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerClosedUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    .line 669
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawOverlay:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 671
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdPosition:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 672
    .local v4, "position":I
    invoke-static {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->fromValue(I)Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 674
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 676
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 677
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__menu:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 680
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 681
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__content:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 684
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v5, v10}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    .line 686
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    sget-object v6, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    .line 687
    return-void
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public abstract isMenuVisible()Z
.end method

.method protected isViewDescendant(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 716
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 717
    if-ne v0, p0, :cond_0

    .line 718
    const/4 v1, 0x1

    .line 724
    :goto_1
    return v1

    .line 721
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logDrawerState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1521
    packed-switch p1, :pswitch_data_0

    .line 1543
    :pswitch_0
    const-string v0, "MenuDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DrawerState] Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_0
    return-void

    .line 1523
    :pswitch_1
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1527
    :pswitch_2
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1531
    :pswitch_3
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_DRAGGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    :pswitch_4
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    :pswitch_5
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 730
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 731
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 736
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 737
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 691
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 692
    sget v2, Lcom/zte/extres/R$id;->mdMenu:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 693
    .local v1, "menu":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 695
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 698
    :cond_0
    sget v2, Lcom/zte/extres/R$id;->mdContent:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 701
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 705
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1638
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    .line 1639
    .local v0, "savedState":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1641
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    .line 1642
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1626
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1627
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1629
    .local v0, "state":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1630
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1632
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    .line 1633
    return-object v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->openMenu(Z)V

    .line 945
    return-void
.end method

.method public abstract openMenu(Z)V
.end method

.method public abstract peekDrawer()V
.end method

.method public abstract peekDrawer(J)V
.end method

.method public abstract peekDrawer(JJ)V
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1576
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1580
    :goto_0
    return-void

    .line 1578
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    .line 1621
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "in":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1622
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1608
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    return-object v0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1613
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    .line 999
    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1011
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1012
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    .line 1014
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->startAnimatingIndicator()V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1019
    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eq p1, v0, :cond_0

    .line 1028
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 1029
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    .line 1031
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1469
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1479
    :goto_0
    return-void

    .line 1471
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1472
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 1476
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1487
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1497
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1507
    :goto_0
    return-void

    .line 1499
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1500
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1504
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawOverlay(Z)V
    .locals 0
    .param p1, "drawOverlay"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 1297
    return-void
.end method

.method public setDrawerIndicator(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1381
    if-eqz p1, :cond_0

    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1389
    :goto_0
    return-void

    .line 1385
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupUpIndicator(Activity) has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    .line 1372
    if-eqz p1, :cond_2

    .line 1373
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1378
    :goto_1
    return-void

    .line 1373
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method protected setDrawerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1510
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    if-eq p1, v1, :cond_1

    .line 1511
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1512
    .local v0, "oldState":I
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1513
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1514
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1518
    .end local v0    # "oldState":I
    :cond_1
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1223
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1224
    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    .line 1207
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    const v2, 0xffffff

    and-int v0, p1, v2

    .line 1208
    .local v0, "endColor":I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1213
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1214
    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1178
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 1179
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1180
    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1248
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 1249
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1250
    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setIndicatorColor(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 572
    return-void
.end method

.method public setIndicatorColor(Landroid/app/Activity;ZZI)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fillActionBar"    # Z
    .param p3, "fillSplitAactionBar"    # Z
    .param p4, "color"    # I

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x0

    .line 575
    if-eqz p2, :cond_0

    .line 576
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 581
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 583
    if-eqz p3, :cond_1

    .line 584
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 589
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setIndicatorColor(Landroid/app/Activity;I)V

    .line 590
    return-void

    .line 578
    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    goto :goto_0

    .line 586
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1287
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 1288
    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1429
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1430
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;)V

    .line 1431
    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1439
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1450
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1451
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOnDrawerStateChangeArrowListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1162
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1158
    return-void
.end method

.method public setOnInterceptMoveEventListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .line 1170
    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 1322
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1323
    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1331
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    .line 1333
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1336
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1341
    :cond_0
    return-void

    .line 1337
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    .line 1351
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1353
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1358
    :cond_0
    return-void

    .line 1354
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->toggleMenu(Z)V

    .line 927
    return-void
.end method

.method public abstract toggleMenu(Z)V
.end method

.method protected updateDropShadowRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 806
    :goto_0
    return-void

    .line 779
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 780
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 781
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 782
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 787
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 788
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 789
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 793
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 794
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 795
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 796
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 800
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 801
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 802
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 803
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected updateIndicatorClipRect()V
    .locals 17

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 848
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v14, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 850
    .local v10, "openRatio":F
    :goto_0
    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v15, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v10

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    sub-float v7, v14, v15

    .line 852
    .local v7, "interpolatedRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 853
    .local v5, "indicatorWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 855
    .local v4, "indicatorHeight":I
    int-to-float v14, v5

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 856
    .local v8, "interpolatedWidth":I
    int-to-float v14, v4

    mul-float/2addr v14, v7

    float-to-int v6, v14

    .line 858
    .local v6, "interpolatedHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 860
    .local v12, "startPos":I
    const/4 v9, 0x0

    .line 861
    .local v9, "left":I
    const/4 v13, 0x0

    .line 862
    .local v13, "top":I
    const/4 v11, 0x0

    .line 863
    .local v11, "right":I
    const/4 v1, 0x0

    .line 864
    .local v1, "bottom":I
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 888
    :goto_1
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 914
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v9, v14, Landroid/graphics/Rect;->left:I

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->top:I

    .line 917
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->right:I

    .line 918
    const-string v14, "guojingdong"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mIndicatorClipRect.right="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 920
    return-void

    .line 848
    .end local v1    # "bottom":I
    .end local v4    # "indicatorHeight":I
    .end local v5    # "indicatorWidth":I
    .end local v6    # "interpolatedHeight":I
    .end local v7    # "interpolatedRatio":F
    .end local v8    # "interpolatedWidth":I
    .end local v9    # "left":I
    .end local v10    # "openRatio":F
    .end local v11    # "right":I
    .end local v12    # "startPos":I
    .end local v13    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    int-to-float v15, v15

    div-float v10, v14, v15

    goto/16 :goto_0

    .line 867
    .restart local v1    # "bottom":I
    .restart local v4    # "indicatorHeight":I
    .restart local v5    # "indicatorWidth":I
    .restart local v6    # "interpolatedHeight":I
    .restart local v7    # "interpolatedRatio":F
    .restart local v8    # "interpolatedWidth":I
    .restart local v9    # "left":I
    .restart local v10    # "openRatio":F
    .restart local v11    # "right":I
    .restart local v12    # "startPos":I
    .restart local v13    # "top":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int/2addr v15, v4

    div-int/lit8 v15, v15, 0x2

    add-int v3, v14, v15

    .line 868
    .local v3, "finalTop":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_1

    .line 869
    int-to-float v14, v12

    sub-int v15, v3, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 873
    :goto_3
    add-int v1, v13, v4

    .line 874
    goto/16 :goto_1

    .line 871
    :cond_1
    move v13, v3

    goto :goto_3

    .line 878
    .end local v3    # "finalTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v15, v15, 0x2

    add-int v2, v14, v15

    .line 879
    .local v2, "finalLeft":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_2

    .line 880
    int-to-float v14, v12

    sub-int v15, v2, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 884
    :goto_4
    add-int v11, v9, v5

    goto/16 :goto_1

    .line 882
    :cond_2
    move v9, v2

    goto :goto_4

    .line 890
    .end local v2    # "finalLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v11

    .line 891
    sub-int v9, v11, v8

    .line 892
    goto/16 :goto_2

    .line 896
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    .line 897
    sub-int v13, v1, v6

    .line 898
    goto/16 :goto_2

    .line 902
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v9

    .line 903
    add-int v11, v9, v8

    .line 904
    goto/16 :goto_2

    .line 908
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v13

    .line 909
    add-int v1, v13, v6

    goto/16 :goto_2

    .line 864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 888
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateTouchAreaSize()V
    .locals 2

    .prologue
    .line 1092
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    .line 1099
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1095
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0

    .line 1097
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0
.end method

.method protected updateUpContentDescription()V
    .locals 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 1310
    .local v0, "upContentDesc":I
    :goto_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    if-eq v0, v1, :cond_0

    .line 1311
    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    .line 1312
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarDescription(I)V

    .line 1314
    :cond_0
    return-void

    .line 1309
    .end local v0    # "upContentDesc":I
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method
