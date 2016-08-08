.class public Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;
.super Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayDrawer"


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method private isContentTouch(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "contentTouch":Z
    sget-object v3, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 324
    :goto_0
    return v0

    .line 308
    :pswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_0

    move v0, v1

    .line 309
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 308
    goto :goto_1

    .line 312
    :pswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_1

    move v0, v1

    .line 313
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 312
    goto :goto_2

    .line 316
    :pswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_2

    move v0, v1

    .line 317
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 316
    goto :goto_3

    .line 320
    :pswitch_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private offsetMenu(I)V
    .locals 13
    .param p1, "offsetPixels"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 184
    iget-boolean v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetMenu:Z

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    if-nez v10, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getWidth()I

    move-result v7

    .line 189
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getHeight()I

    move-result v0

    .line 191
    .local v0, "height":I
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    .line 192
    .local v1, "menuSize":I
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    iget v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 193
    .local v6, "sign":I
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    int-to-float v11, v1

    div-float v5, v10, v11

    .line 194
    .local v5, "openRatio":F
    const/high16 v10, -0x41800000    # -0.25f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    int-to-float v12, v1

    mul-float/2addr v11, v12

    mul-float/2addr v10, v11

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 196
    .local v2, "offset":I
    sget-object v10, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v11}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v11}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v11

    sub-int v11, v2, v11

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 207
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    .line 221
    :pswitch_1
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v10}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getRight()I

    move-result v10

    sub-int v4, v10, v7

    .line 222
    .local v4, "oldOffset":I
    sub-int v3, v2, v4

    .line 223
    .local v3, "offsetBy":I
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v10, v3}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 224
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v8, v9

    goto :goto_2

    .line 238
    .end local v3    # "offsetBy":I
    .end local v4    # "oldOffset":I
    :pswitch_2
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v11}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getTop()I

    move-result v11

    sub-int v11, v2, v11

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 239
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_3

    .line 253
    :pswitch_3
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v10}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getBottom()I

    move-result v10

    sub-int v4, v10, v0

    .line 254
    .restart local v4    # "oldOffset":I
    sub-int v3, v2, v4

    .line 255
    .restart local v3    # "offsetBy":I
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v10, v3}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 256
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_5

    :goto_4
    invoke-virtual {v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v8, v9

    goto :goto_4

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 697
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 698
    .local v1, "pointerId":I
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 699
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 700
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 702
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 706
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkTouchSlop(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 462
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 468
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSlop:I

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

    .line 465
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSlop:I

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

    .line 468
    goto :goto_0

    .line 462
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

    .line 57
    invoke-virtual {p0, v0, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    .line 58
    return-void
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getWidth()I

    move-result v3

    .line 117
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getHeight()I

    move-result v0

    .line 118
    .local v0, "height":I
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 119
    .local v1, "offsetPixels":I
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 121
    .local v2, "openRatio":F
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 139
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x43390000    # 185.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-void

    .line 123
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v3, v1

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v1

    invoke-virtual {v4, v6, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    return-void
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v1, 0x0

    .line 92
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 101
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    div-int/lit8 v3, v0, 0x3

    .line 102
    .local v3, "dx":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    .line 106
    :goto_0
    return-void

    .line 95
    .end local v3    # "dx":I
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v0, v0

    div-int/lit8 v3, v0, 0x3

    .line 96
    .restart local v3    # "dx":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPeekScroller:Lcom/zte/mifavor/widget/overlaydrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/overlaydrawer/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x3
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

    .line 328
    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    return v3

    .line 330
    :pswitch_0
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getWidth()I

    move-result v2

    .line 335
    .local v2, "width":I
    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    float-to-int v1, v5

    .line 337
    .local v1, "initialMotionX":I
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    sub-int v5, v2, v5

    if-ge v1, v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 341
    .end local v1    # "initialMotionX":I
    .end local v2    # "width":I
    :pswitch_2
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v5, :cond_5

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_6
    move v3, v4

    goto :goto_0

    .line 345
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getHeight()I

    move-result v0

    .line 346
    .local v0, "height":I
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    int-to-float v6, v0

    iget v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 475
    .local v0, "action":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3

    .line 476
    :cond_0
    const/4 v9, -0x1

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 477
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 478
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 479
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 480
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 483
    :cond_1
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->openMenu()V

    .line 489
    :goto_0
    const/4 v9, 0x0

    .line 590
    :goto_1
    return v9

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu()V

    goto :goto_0

    .line 492
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->isCloseEnough()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 493
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setOffsetPixels(F)V

    .line 494
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->stopAnimation()V

    .line 495
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endPeek()V

    .line 496
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setDrawerState(I)V

    .line 497
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 501
    :cond_4
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_6

    .line 502
    const/4 v5, 0x0

    .line 503
    .local v5, "index":I
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 504
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 505
    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    const/4 v5, 0x0

    .line 508
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v7, v9

    .line 509
    .local v7, "x":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v8, v9

    .line 510
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->isContentTouch(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 511
    const/4 v9, 0x1

    goto :goto_1

    .line 515
    .end local v5    # "index":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_6
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-nez v9, :cond_7

    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchMode:I

    if-nez v9, :cond_7

    .line 516
    const/4 v9, 0x0

    goto :goto_1

    .line 519
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v9, :cond_8

    .line 520
    const/4 v9, 0x1

    goto :goto_1

    .line 523
    :cond_8
    sparse-switch v0, :sswitch_data_0

    .line 587
    :cond_9
    :goto_2
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 588
    :cond_a
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 590
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    goto :goto_1

    .line 525
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 527
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onDownAllowDrag(II)Z

    move-result v2

    .line 528
    .local v2, "allowDrag":Z
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 530
    if-eqz v2, :cond_9

    .line 531
    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_b

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setDrawerState(I)V

    .line 532
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->stopAnimation()V

    .line 533
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endPeek()V

    .line 534
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    goto :goto_2

    .line 531
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 540
    .end local v2    # "allowDrag":Z
    :sswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 541
    .local v1, "activePointerId":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_9

    .line 546
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 547
    .local v6, "pointerIndex":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_c

    .line 548
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 549
    const/4 v9, -0x1

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 550
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endDrag()V

    .line 551
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu(Z)V

    .line 552
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 555
    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 556
    .local v7, "x":F
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    sub-float v3, v7, v9

    .line 557
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 558
    .local v8, "y":F
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    sub-float v4, v8, v9

    .line 560
    .local v4, "dy":F
    invoke-virtual {p0, v3, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->checkTouchSlop(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 561
    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    iget-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_e

    :cond_d
    float-to-int v9, v3

    float-to-int v10, v4

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->canChildrenScroll(IIII)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 563
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endDrag()V

    .line 564
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->requestDisallowInterceptTouchEvent(Z)V

    .line 565
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 568
    :cond_e
    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {p0, v9, v10, v3, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v2

    .line 570
    .restart local v2    # "allowDrag":Z
    if-eqz v2, :cond_9

    .line 571
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setDrawerState(I)V

    .line 572
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 573
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 574
    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 581
    .end local v1    # "activePointerId":I
    .end local v2    # "allowDrag":Z
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 582
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 583
    iget v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 145
    sub-int v2, p4, p2

    .line 146
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 151
    .local v0, "height":I
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    float-to-int v1, v3

    .line 152
    .local v1, "offsetPixels":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->RIGHT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    if-ne v3, v4, :cond_1

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    add-int v4, v2, v1

    invoke-virtual {v3, v1, v5, v4, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 159
    :goto_0
    sget-object v3, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 176
    :goto_1
    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    add-int v4, v0, v1

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    invoke-virtual {v3, v5, v5, v4, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    invoke-virtual {v3, v5, v5, v2, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 266
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 267
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 269
    .local v3, "heightMode":I
    if-ne v7, v8, :cond_0

    if-eq v3, v8, :cond_1

    .line 270
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must measure with an exact size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 273
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 274
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 276
    .local v2, "height":I
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->openMenu(Z)V

    .line 280
    :cond_2
    sget-object v8, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v9}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 289
    :pswitch_0
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    invoke-static {p1, v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 290
    .local v5, "menuWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 292
    .local v4, "menuHeightMeasureSpec":I
    :goto_0
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v5, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->measure(II)V

    .line 294
    invoke-static {p1, v10, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v1

    .line 295
    .local v1, "contentWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v0

    .line 296
    .local v0, "contentHeightMeasureSpec":I
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->measure(II)V

    .line 298
    invoke-virtual {p0, v6, v2}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setMeasuredDimension(II)V

    .line 300
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->updateTouchAreaSize()V

    .line 301
    return-void

    .line 283
    .end local v0    # "contentHeightMeasureSpec":I
    .end local v1    # "contentWidthMeasureSpec":I
    .end local v4    # "menuHeightMeasureSpec":I
    .end local v5    # "menuWidthMeasureSpec":I
    :pswitch_1
    invoke-static {p1, v10, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 284
    .restart local v5    # "menuWidthMeasureSpec":I
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    invoke-static {p2, v10, v8}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 285
    .restart local v4    # "menuHeightMeasureSpec":I
    goto :goto_0

    .line 280
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
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 354
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return v2

    .line 356
    :pswitch_0
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    cmpl-float v4, p3, v6

    if-gtz v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    int-to-float v4, p1

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getWidth()I

    move-result v1

    .line 361
    .local v1, "width":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    cmpg-float v4, p3, v6

    if-ltz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    int-to-float v4, p1

    int-to-float v5, v1

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 365
    .end local v1    # "width":I
    :pswitch_2
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    cmpl-float v4, p4, v6

    if-gtz v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    int-to-float v4, p2

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    .line 369
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getHeight()I

    move-result v0

    .line 370
    .local v0, "height":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v4, :cond_7

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchSize:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    cmpg-float v4, p4, v6

    if-ltz v4, :cond_8

    :cond_7
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    int-to-float v4, p2

    int-to-float v5, v0

    iget v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    :cond_8
    move v2, v3

    goto/16 :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMoveEvent(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 378
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 392
    :pswitch_3
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 2
    .param p1, "offsetPixels"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 86
    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->offsetMenu(I)V

    .line 87
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->invalidate()V

    .line 88
    return-void

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->onSizeChanged(IIII)V

    .line 111
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onOffsetPixelsChanged(I)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 595
    iget-boolean v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-nez v10, :cond_0

    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mTouchMode:I

    if-nez v10, :cond_0

    .line 692
    :goto_0
    return v8

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 600
    .local v0, "action":I
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 601
    :cond_1
    iget-object v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 603
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 692
    goto :goto_0

    .line 605
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    iput v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 607
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onDownAllowDrag(II)Z

    move-result v1

    .line 609
    .local v1, "allowDrag":Z
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 611
    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->stopAnimation()V

    .line 613
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endPeek()V

    .line 614
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->startLayerTranslation()V

    goto :goto_1

    .line 620
    .end local v1    # "allowDrag":Z
    :pswitch_2
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 621
    .local v5, "pointerIndex":I
    if-ne v5, v11, :cond_3

    .line 622
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 623
    iput v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 624
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->endDrag()V

    .line 625
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu(Z)V

    goto :goto_0

    .line 629
    :cond_3
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-nez v8, :cond_4

    .line 630
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 631
    .local v6, "x":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 632
    .local v2, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 633
    .local v7, "y":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 635
    .local v3, "dy":F
    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->checkTouchSlop(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 636
    float-to-int v8, v6

    float-to-int v10, v7

    invoke-virtual {p0, v8, v10, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v1

    .line 638
    .restart local v1    # "allowDrag":Z
    if-eqz v1, :cond_5

    .line 639
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->setDrawerState(I)V

    .line 640
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    .line 641
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 642
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 650
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_4
    :goto_2
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v8, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->startLayerTranslation()V

    .line 653
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 654
    .restart local v6    # "x":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 655
    .restart local v2    # "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 656
    .restart local v7    # "y":F
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 658
    .restart local v3    # "dy":F
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 659
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 660
    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onMoveEvent(FF)V

    goto/16 :goto_1

    .line 644
    .restart local v1    # "allowDrag":Z
    :cond_5
    iput v6, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionX:F

    .line 645
    iput v7, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mInitialMotionY:F

    goto :goto_2

    .line 667
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_3
    iget v10, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 668
    .local v4, "index":I
    if-ne v4, v11, :cond_6

    move v4, v8

    .line 669
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 670
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 671
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onUpEvent(II)V

    .line 672
    iput v11, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    .line 673
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    goto/16 :goto_1

    .line 678
    .end local v4    # "index":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const v10, 0xff00

    and-int/2addr v8, v10

    shr-int/lit8 v4, v8, 0x8

    .line 680
    .restart local v4    # "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 681
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 682
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    goto/16 :goto_1

    .line 686
    .end local v4    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 687
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 688
    iget v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 603
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

    .line 398
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 400
    .local v1, "offsetPixels":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 403
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 404
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 405
    .local v0, "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 406
    if-lez v0, :cond_1

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    :cond_1
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 409
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    if-le p1, v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu()V

    goto :goto_0

    .line 416
    :pswitch_1
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 417
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 418
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 419
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 420
    if-lez v0, :cond_3

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    :cond_3
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 423
    .end local v0    # "initialVelocity":I
    :cond_4
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    if-le p2, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu()V

    goto :goto_0

    .line 430
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getWidth()I

    move-result v2

    .line 432
    .local v2, "width":I
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v4, :cond_6

    .line 433
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 434
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 435
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionX:F

    .line 436
    if-lez v0, :cond_5

    :goto_1
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v3, v3

    goto :goto_1

    .line 439
    .end local v0    # "initialVelocity":I
    :cond_6
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    add-int v3, v2, v1

    if-ge p1, v3, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu()V

    goto :goto_0

    .line 446
    .end local v2    # "width":I
    :pswitch_3
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mIsDragging:Z

    if-eqz v4, :cond_8

    .line 447
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 448
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 449
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mLastMotionY:F

    .line 450
    if-gez v0, :cond_7

    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v3, v3

    :cond_7
    invoke-virtual {p0, v3, v0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "initialVelocity":I
    :cond_8
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->closeMenu()V

    goto/16 :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public openMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "animateTo":I
    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer$1;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->animateOffsetTo(IIZ)V

    .line 53
    return-void

    .line 43
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    .line 44
    goto :goto_0

    .line 48
    :pswitch_1
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlidingDrawer;->mMenuSize:I

    neg-int v0, v1

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
