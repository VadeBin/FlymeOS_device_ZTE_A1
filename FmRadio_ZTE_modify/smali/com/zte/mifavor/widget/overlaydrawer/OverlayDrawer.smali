.class public Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
.super Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;
.source "OverlayDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayDrawer"


# instance fields
.field private mPeekSize:I

.field private mRevealRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    .line 23
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    .prologue
    .line 12
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    return v0
.end method

.method private isContentTouch(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "contentTouch":Z
    sget-object v3, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 371
    :goto_0
    return v0

    .line 355
    :pswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_0

    move v0, v1

    .line 356
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 355
    goto :goto_1

    .line 359
    :pswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_1

    move v0, v1

    .line 360
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 359
    goto :goto_2

    .line 363
    :pswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_2

    move v0, v1

    .line 364
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 363
    goto :goto_3

    .line 367
    :pswitch_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 780
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 781
    .local v1, "pointerId":I
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 782
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 783
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 784
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 785
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 786
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 789
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 782
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SetDrawerDisable(Z)V
    .locals 1
    .param p1, "isDisable"    # Z

    .prologue
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDisable:Ljava/lang/Boolean;

    .line 22
    return-void
.end method

.method protected checkTouchSlop(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 524
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 521
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 524
    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public closeMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    .line 121
    return-void
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v3

    .line 74
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 75
    .local v0, "height":I
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 76
    .local v1, "offsetPixels":I
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 78
    .local v2, "openRatio":F
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x43390000    # 185.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void

    .line 80
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v3, v1

    invoke-virtual {v4, v6, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v1

    invoke-virtual {v4, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 196
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 199
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 202
    :pswitch_3
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    .line 69
    return-void
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v1, 0x0

    .line 170
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 179
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    .line 180
    .local v3, "dx":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    .line 184
    :goto_0
    return-void

    .line 173
    .end local v3    # "dx":I
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    neg-int v3, v0

    .line 174
    .restart local v3    # "dx":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDownAllowDrag(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return v3

    .line 377
    :pswitch_0
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v2

    .line 382
    .local v2, "width":I
    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    float-to-int v1, v5

    .line 384
    .local v1, "initialMotionX":I
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v2, v5

    if-ge v1, v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 388
    .end local v1    # "initialMotionX":I
    .end local v2    # "width":I
    :pswitch_2
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_5

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_6
    move v3, v4

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 393
    .local v0, "height":I
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    int-to-float v6, v0

    iget v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 537
    .local v0, "action":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3

    .line 538
    :cond_0
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 539
    const/4 v9, -0x1

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 540
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 541
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 542
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 543
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 546
    :cond_1
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 547
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->openMenu()V

    .line 552
    :goto_0
    const/4 v9, 0x0

    .line 665
    :goto_1
    return v9

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 555
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->isCloseEnough()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 556
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setOffsetPixels(F)V

    .line 557
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->stopAnimation()V

    .line 558
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 559
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerState(I)V

    .line 560
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 564
    :cond_4
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_6

    .line 565
    const/4 v5, 0x0

    .line 566
    .local v5, "index":I
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 567
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 568
    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    const/4 v5, 0x0

    .line 571
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v7, v9

    .line 572
    .local v7, "x":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v8, v9

    .line 573
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->isContentTouch(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 574
    const/4 v9, 0x1

    goto :goto_1

    .line 578
    .end local v5    # "index":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_6
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v9, :cond_7

    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchMode:I

    if-nez v9, :cond_7

    .line 579
    const/4 v9, 0x0

    goto :goto_1

    .line 582
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v9, :cond_8

    .line 583
    const/4 v9, 0x1

    goto :goto_1

    .line 586
    :cond_8
    sparse-switch v0, :sswitch_data_0

    .line 662
    :cond_9
    :goto_2
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 663
    :cond_a
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 665
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    goto :goto_1

    .line 588
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 590
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onDownAllowDrag(II)Z

    move-result v2

    .line 591
    .local v2, "allowDrag":Z
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 593
    if-eqz v2, :cond_9

    .line 594
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_c

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerState(I)V

    .line 595
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->stopAnimation()V

    .line 596
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 598
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v9, :cond_b

    .line 599
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa0

    invoke-virtual {p0, v9, v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    goto :goto_2

    .line 594
    :cond_c
    const/4 v9, 0x0

    goto :goto_3

    .line 608
    .end local v2    # "allowDrag":Z
    :sswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 609
    .local v1, "activePointerId":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_9

    .line 614
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 615
    .local v6, "pointerIndex":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_d

    .line 616
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 617
    const/4 v9, -0x1

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 618
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endDrag()V

    .line 619
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu(Z)V

    .line 620
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 623
    :cond_d
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 624
    .local v7, "x":F
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v3, v7, v9

    .line 625
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 626
    .local v8, "y":F
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v4, v8, v9

    .line 628
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gez v9, :cond_e

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_f

    .line 629
    :cond_e
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 633
    :cond_f
    invoke-virtual {p0, v3, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->checkTouchSlop(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 634
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    if-eqz v9, :cond_11

    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_10

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_11

    :cond_10
    float-to-int v9, v3

    float-to-int v10, v4

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->canChildrenScroll(IIII)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 636
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endDrag()V

    .line 637
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->requestDisallowInterceptTouchEvent(Z)V

    .line 638
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 641
    :cond_11
    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {p0, v9, v10, v3, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v2

    .line 643
    .restart local v2    # "allowDrag":Z
    if-eqz v2, :cond_9

    .line 644
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 645
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->stopAnimation()V

    .line 646
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerState(I)V

    .line 647
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 648
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 649
    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 656
    .end local v1    # "activePointerId":I
    .end local v2    # "allowDrag":Z
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 657
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 658
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 263
    sub-int v3, p4, p2

    .line 264
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 266
    .local v0, "height":I
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v4, v7, v7, v3, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 288
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v2, v4

    .line 289
    .local v2, "offsetPixels":I
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    .line 291
    .local v1, "menuSize":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    neg-int v5, v1

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v7, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    add-int v5, v3, v2

    add-int v6, v3, v1

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v7, v6, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    neg-int v5, v1

    add-int/2addr v5, v2

    invoke-virtual {v4, v7, v5, v3, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    add-int v5, v0, v2

    add-int v6, v0, v1

    add-int/2addr v6, v2

    invoke-virtual {v4, v7, v5, v3, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 314
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 320
    .local v3, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 321
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 323
    .local v2, "height":I
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->openMenu(Z)V

    .line 327
    :cond_0
    sget-object v8, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v9}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 336
    :pswitch_0
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    invoke-static {p1, v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 337
    .local v5, "menuWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 339
    .local v4, "menuHeightMeasureSpec":I
    :goto_0
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v5, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->measure(II)V

    .line 341
    invoke-static {p1, v10, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v1

    .line 342
    .local v1, "contentWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v0

    .line 343
    .local v0, "contentHeightMeasureSpec":I
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->measure(II)V

    .line 345
    invoke-virtual {p0, v6, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setMeasuredDimension(II)V

    .line 347
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->updateTouchAreaSize()V

    .line 348
    return-void

    .line 330
    .end local v0    # "contentHeightMeasureSpec":I
    .end local v1    # "contentWidthMeasureSpec":I
    .end local v4    # "menuHeightMeasureSpec":I
    .end local v5    # "menuWidthMeasureSpec":I
    :pswitch_1
    invoke-static {p1, v10, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 331
    .restart local v5    # "menuWidthMeasureSpec":I
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    invoke-static {p2, v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 332
    .restart local v4    # "menuHeightMeasureSpec":I
    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMoveAllowDrag(IIFF)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 405
    :cond_1
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 412
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v1

    .line 413
    .local v1, "width":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    cmpg-float v4, p3, v6

    if-ltz v4, :cond_4

    :cond_2
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_3

    int-to-float v4, p1

    int-to-float v5, v1

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 407
    .end local v1    # "width":I
    :pswitch_1
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    cmpl-float v4, p3, v6

    if-gtz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_6

    int-to-float v4, p1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_7

    :cond_6
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    .line 418
    :pswitch_2
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    cmpl-float v4, p4, v6

    if-gtz v4, :cond_a

    :cond_8
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_9

    int-to-float v4, p1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_a

    :cond_9
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_a
    move v2, v3

    goto/16 :goto_0

    .line 423
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 424
    .local v0, "height":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_b

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    cmpg-float v4, p4, v6

    if-ltz v4, :cond_d

    :cond_b
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_c

    int-to-float v4, p1

    int-to-float v5, v0

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_d

    :cond_c
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_d
    move v2, v3

    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveEvent(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 434
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 440
    :pswitch_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 448
    :pswitch_3
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 3
    .param p1, "offsetPixels"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDisable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->invalidate()V

    goto :goto_0

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getBottom()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->onSizeChanged(IIII)V

    .line 189
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onOffsetPixelsChanged(I)V

    .line 190
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 670
    iget-boolean v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v10, :cond_0

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mTouchMode:I

    if-nez v10, :cond_0

    .line 775
    :goto_0
    return v8

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 675
    .local v0, "action":I
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 676
    :cond_1
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 678
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 775
    goto :goto_0

    .line 680
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 682
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onDownAllowDrag(II)Z

    move-result v1

    .line 684
    .local v1, "allowDrag":Z
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 686
    if-eqz v1, :cond_2

    .line 687
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->stopAnimation()V

    .line 688
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 690
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v8, :cond_3

    .line 691
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa0

    invoke-virtual {p0, v8, v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->startLayerTranslation()V

    goto :goto_1

    .line 700
    .end local v1    # "allowDrag":Z
    :pswitch_2
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 701
    .local v5, "pointerIndex":I
    if-ne v5, v11, :cond_4

    .line 702
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 703
    iput v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 704
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endDrag()V

    .line 705
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu(Z)V

    goto :goto_0

    .line 709
    :cond_4
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v8, :cond_5

    .line 710
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 711
    .local v6, "x":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 712
    .local v2, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 713
    .local v7, "y":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 715
    .local v3, "dy":F
    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->checkTouchSlop(FF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 716
    float-to-int v8, v6

    float-to-int v10, v7

    invoke-virtual {p0, v8, v10, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v1

    .line 718
    .restart local v1    # "allowDrag":Z
    if-eqz v1, :cond_6

    .line 719
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->endPeek()V

    .line 720
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->stopAnimation()V

    .line 721
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerState(I)V

    .line 722
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    .line 723
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 724
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 732
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_5
    :goto_2
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v8, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->startLayerTranslation()V

    .line 735
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 736
    .restart local v6    # "x":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 737
    .restart local v2    # "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 738
    .restart local v7    # "y":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 740
    .restart local v3    # "dy":F
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 741
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 742
    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onMoveEvent(FF)V

    goto/16 :goto_1

    .line 726
    .restart local v1    # "allowDrag":Z
    :cond_6
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionX:F

    .line 727
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mInitialMotionY:F

    goto :goto_2

    .line 749
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_3
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 750
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 751
    .local v4, "index":I
    if-ne v4, v11, :cond_7

    move v4, v8

    .line 752
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 753
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 754
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onUpEvent(II)V

    .line 755
    iput v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    .line 756
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    goto/16 :goto_1

    .line 761
    .end local v4    # "index":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const v10, 0xff00

    and-int/2addr v8, v10

    shr-int/lit8 v4, v8, 0x8

    .line 763
    .restart local v4    # "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 764
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 765
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    goto/16 :goto_1

    .line 769
    .end local v4    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 770
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 771
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onUpEvent(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 454
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 456
    .local v1, "offsetPixels":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 459
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 460
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 461
    .local v0, "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 462
    if-lez v0, :cond_1

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    :cond_1
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 465
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 473
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 474
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 475
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 476
    if-lez v0, :cond_3

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    :cond_3
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 479
    .end local v0    # "initialVelocity":I
    :cond_4
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 486
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v2

    .line 488
    .local v2, "width":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_6

    .line 489
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 490
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 491
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionX:F

    .line 492
    if-lez v0, :cond_5

    :goto_1
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    neg-int v3, v3

    goto :goto_1

    .line 495
    .end local v0    # "initialVelocity":I
    :cond_6
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 502
    .end local v2    # "width":I
    :pswitch_3
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_8

    .line 503
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 504
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 505
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLastMotionY:F

    .line 506
    if-gez v0, :cond_7

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    neg-int v3, v3

    :cond_7
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto/16 :goto_0

    .line 509
    .end local v0    # "initialVelocity":I
    :cond_8
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->closeMenu()V

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "animateTo":I
    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    .line 116
    return-void

    .line 106
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    .line 107
    goto :goto_0

    .line 111
    :pswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    neg-int v0, v1

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected startLayerTranslation()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->stopAnimation()V

    .line 531
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method protected stopLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLayerTypeHardware:Z

    if-eqz v0, :cond_0

    .line 256
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mLayerTypeHardware:Z

    .line 257
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected updateDropShadowRect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 212
    .local v1, "openRatio":F
    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 214
    .local v0, "dropShadowSize":I
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 217
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 218
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 219
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 224
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 225
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 226
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 232
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 233
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 238
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 239
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 240
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
