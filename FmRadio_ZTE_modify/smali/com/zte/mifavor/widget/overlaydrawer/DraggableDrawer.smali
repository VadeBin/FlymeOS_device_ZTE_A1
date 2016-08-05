.class public abstract Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;
.super Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.source "DraggableDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$5;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x3

.field private static final DEFAULT_PEEK_DELAY:J = 0x2710L

.field private static final DEFAULT_PEEK_START_DELAY:J = 0x1388L

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_MENU_OVERLAY_ALPHA:I = 0xb9

.field protected static final PEEK_DURATION:I = 0x1388

.field private static final PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STATE_MENU_VISIBLE:Ljava/lang/String; = "net.simonvt.menudrawer.MenuDrawer.menuVisible"


# instance fields
.field protected mActivePointerId:I

.field protected mCloseEnough:I

.field public mDisable:Ljava/lang/Boolean;

.field private final mDragRunnable:Ljava/lang/Runnable;

.field protected mInitialMotionX:F

.field protected mInitialMotionY:F

.field protected mIsDragging:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLayerTypeHardware:Z

.field protected mMaxVelocity:I

.field protected mOffsetMenu:Z

.field protected mPeekDelay:J

.field protected final mPeekRunnable:Ljava/lang/Runnable;

.field protected mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

.field private mPeekStartRunnable:Ljava/lang/Runnable;

.field private mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

.field protected mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/app/Activity;I)V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDisable:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    .line 107
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionX:F

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionY:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 164
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDisable:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    .line 107
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionX:F

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionY:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDisable:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    .line 107
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionX:F

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionY:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDisable:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    .line 107
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionX:F

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLastMotionY:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawerInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postAnimationInvalidate()V

    return-void
.end method

.method private completeAnimation()V
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->abortAnimation()V

    .line 366
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->getFinalX()I

    move-result v0

    .line 367
    .local v0, "finalX":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 368
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setDrawerState(I)V

    .line 369
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 370
    return-void

    .line 368
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private completePeek()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->abortAnimation()V

    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setDrawerState(I)V

    .line 501
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 502
    return-void
.end method

.method private peekDrawerInvalidate()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 471
    .local v0, "oldX":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->getCurrX()I

    move-result v1

    .line 472
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 490
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 478
    .restart local v0    # "oldX":I
    .restart local v1    # "x":I
    :cond_1
    iget-wide v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 479
    new-instance v2, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$4;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$4;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 485
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekDelay:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :cond_2
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->completePeek()V

    goto :goto_0
.end method

.method private postAnimationInvalidate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 440
    .local v0, "oldX":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->getCurrX()I

    move-result v1

    .line 442
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->getFinalX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 450
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->completeAnimation()V

    goto :goto_0
.end method

.method private supportGetTranslationX(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportGetTranslationY(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 632
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected animateOffsetTo(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 417
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v1, v0

    .line 418
    .local v1, "startX":I
    sub-int v3, p1, v1

    .line 420
    .local v3, "dx":I
    if-lez v3, :cond_0

    .line 421
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setDrawerState(I)V

    .line 422
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    .line 428
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->startLayerTranslation()V

    .line 430
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postAnimationInvalidate()V

    .line 431
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setDrawerState(I)V

    .line 425
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method protected animateOffsetTo(IIZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->endDrag()V

    .line 392
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->endPeek()V

    .line 394
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v2, v3

    .line 395
    .local v2, "startX":I
    sub-int v1, p1, v2

    .line 396
    .local v1, "dx":I
    if-eqz v1, :cond_0

    if-nez p3, :cond_2

    .line 397
    :cond_0
    int-to-float v3, p1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 398
    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setDrawerState(I)V

    .line 399
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 414
    :goto_1
    return-void

    .line 398
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    .line 405
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 406
    if-lez p2, :cond_3

    .line 407
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v0, v3, 0x4

    .line 412
    .local v0, "duration":I
    :goto_2
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMaxAnimationDuration:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 413
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->animateOffsetTo(II)V

    goto :goto_1

    .line 409
    .end local v0    # "duration":I
    :cond_3
    const/high16 v3, 0x44160000    # 600.0f

    int-to-float v4, v1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .restart local v0    # "duration":I
    goto :goto_2
.end method

.method protected canChildScrollHorizontally(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 557
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 558
    check-cast v15, Landroid/view/ViewGroup;

    .line 560
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 562
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 563
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 565
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 566
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 567
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 568
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 570
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    const/4 v4, 0x1

    .line 577
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 562
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 577
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected canChildScrollVertically(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 591
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 592
    check-cast v15, Landroid/view/ViewGroup;

    .line 594
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 596
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 597
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 599
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 600
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 601
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 602
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 604
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    const/4 v4, 0x1

    .line 611
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 596
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 611
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected canChildrenScroll(IIII)Z
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 518
    const/4 v6, 0x0

    .line 520
    .local v6, "canScroll":Z
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$5;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    return v6

    .line 523
    :pswitch_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v6

    .line 530
    goto :goto_0

    .line 534
    :pswitch_1
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuVisible:Z

    if-nez v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected cancelContentTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 374
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 375
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->getChildCount()I

    move-result v9

    .line 376
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 377
    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 376
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v2, v8}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 380
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    return-void
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mIsDragging:Z

    .line 346
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 350
    :cond_0
    return-void
.end method

.method protected endPeek()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 509
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 511
    return-void
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchBezelSize:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchMode:I

    return v0
.end method

.method protected getXVelocity(Landroid/view/VelocityTracker;)F
    .locals 2
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 616
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 619
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method protected getYVelocity(Landroid/view/VelocityTracker;)F
    .locals 2
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 624
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 627
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 180
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchSlop:I

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMaxVelocity:I

    .line 183
    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    .line 184
    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    .line 186
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mCloseEnough:I

    .line 187
    return-void
.end method

.method protected abstract initPeekScroller()V
.end method

.method protected isCloseEnough()Z
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mCloseEnough:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuVisible:Z

    return v0
.end method

.method protected abstract onOffsetPixelsChanged(I)V
.end method

.method public peekDrawer()V
    .locals 4

    .prologue
    .line 223
    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 224
    return-void
.end method

.method public peekDrawer(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 227
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 228
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "delay"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 231
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startDelay must be zero or larger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay must be zero or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    iput-wide p3, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekDelay:J

    .line 242
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$3;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 248
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 655
    check-cast v1, Landroid/os/Bundle;

    .line 656
    .local v1, "state":Landroid/os/Bundle;
    const-string v3, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 657
    .local v0, "menuOpen":Z
    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->openMenu(Z)V

    .line 662
    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    .line 663
    return-void

    .line 660
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 649
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 650
    .local v0, "menuVisible":Z
    :goto_0
    const-string v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    return-void

    .line 649
    .end local v0    # "menuVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    if-eq p1, v0, :cond_0

    .line 253
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    .line 254
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 258
    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuSize:I

    .line 203
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->requestLayout()V

    .line 207
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->invalidate()V

    .line 208
    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1
    .param p1, "offsetMenu"    # Z

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    if-eq p1, v0, :cond_0

    .line 212
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 213
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->requestLayout()V

    .line 214
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->invalidate()V

    .line 216
    :cond_0
    return-void
.end method

.method protected setOffsetPixels(F)V
    .locals 6
    .param p1, "offsetPixels"    # F

    .prologue
    .line 285
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDisable:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v2, v4

    .line 288
    .local v2, "oldOffset":I
    float-to-int v0, p1

    .line 290
    .local v0, "newOffset":I
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    .line 292
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    if-eqz v4, :cond_2

    .line 293
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 294
    .local v1, "offset":F
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {v4, v1}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->setOffset(F)V

    .line 295
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->updateUpContentDescription()V

    .line 298
    .end local v1    # "offset":F
    :cond_2
    if-eq v0, v2, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->onOffsetPixelsChanged(I)V

    .line 300
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuVisible:Z

    .line 303
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 304
    .local v3, "openRatio":F
    invoke-virtual {p0, v3, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->dispatchOnDrawerSlide(FI)V

    goto :goto_0

    .line 300
    .end local v3    # "openRatio":F
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setTouchBezelSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchBezelSize:I

    .line 273
    return-void
.end method

.method public setTouchMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchMode:I

    if-eq v0, p1, :cond_0

    .line 266
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mTouchMode:I

    .line 267
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->updateTouchAreaSize()V

    .line 269
    :cond_0
    return-void
.end method

.method protected startLayerTranslation()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 325
    return-void
.end method

.method protected startPeek()V
    .locals 0

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->initPeekScroller()V

    .line 458
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->startLayerTranslation()V

    .line 459
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawerInvalidate()V

    .line 460
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->abortAnimation()V

    .line 358
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 359
    return-void
.end method

.method protected stopLayerTranslation()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 333
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLayerTypeHardware:Z

    if-eqz v0, :cond_0

    .line 334
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mLayerTypeHardware:Z

    .line 335
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 338
    :cond_0
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 190
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->closeMenu(Z)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 193
    :cond_3
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->openMenu(Z)V

    goto :goto_0
.end method
