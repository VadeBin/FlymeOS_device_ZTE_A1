.class public Lcom/zte/fingerprint/drawable/TabStateDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "TabStateDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabActive"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mBounds:Landroid/graphics/Rect;

.field private mDensity:F

.field private mGradient:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPressed:Z

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mSelected:Z

    .line 26
    iput-boolean v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPressed:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mDensity:F

    .line 33
    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 34
    .local v0, "color":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    .line 35
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mDensity:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBackground:Landroid/graphics/Paint;

    .line 39
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBackground:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBackground:Landroid/graphics/Paint;

    const v3, 0x106000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mGradient:Landroid/graphics/Paint;

    .line 42
    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mGradient:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 68
    iget-boolean v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPressed:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mGradient:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mSelected:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "TabActive"

    const-string v1, "not enough space to draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    .line 91
    iget-object v12, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mGradient:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const v5, 0x30ffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    .line 95
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 96
    .local v9, "step":I
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v1, v9, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 97
    .local v8, "margins":I
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 98
    .local v10, "x":I
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mBounds:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .local v11, "y":I
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v1, v10

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    add-int/2addr v10, v8

    int-to-float v1, v10

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    add-int/2addr v10, v9

    int-to-float v1, v10

    div-int/lit8 v2, v9, 0x2

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    add-int/2addr v10, v9

    int-to-float v1, v10

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    add-int/2addr v10, v8

    int-to-float v1, v10

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    .end local v8    # "margins":I
    .end local v9    # "step":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 109
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPath:Landroid/graphics/Path;

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "selected":Z
    const/4 v2, 0x0

    .line 49
    .local v2, "pressed":Z
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget v1, p1, v5

    .line 50
    .local v1, "i":I
    const v7, 0x10100a1

    if-ne v1, v7, :cond_1

    .line 51
    const/4 v3, 0x1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const v7, 0x10100a7

    if-ne v1, v7, :cond_0

    .line 53
    const/4 v2, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "i":I
    :cond_2
    iget-boolean v5, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mSelected:Z

    if-ne v5, v3, :cond_3

    iget-boolean v5, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPressed:Z

    if-eq v5, v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 57
    .local v0, "changed":Z
    :goto_2
    iput-boolean v3, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mSelected:Z

    .line 58
    iput-boolean v2, p0, Lcom/zte/fingerprint/drawable/TabStateDrawable;->mPressed:Z

    .line 59
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/zte/fingerprint/drawable/TabStateDrawable;->invalidateSelf()V

    .line 62
    :cond_4
    return v4

    .end local v0    # "changed":Z
    :cond_5
    move v0, v4

    .line 56
    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 115
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 121
    return-void
.end method
