.class Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$1;,
        Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->setColor(I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v1, v1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 139
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 133
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 129
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 131
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .prologue
    .line 108
    shr-int/lit8 v3, p1, 0x7

    add-int/2addr p1, v3

    .line 109
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v3, v3, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v3, 0x18

    .line 110
    .local v0, "baseAlpha":I
    mul-int v3, v0, p1

    shr-int/lit8 v2, v3, 0x8

    .line 111
    .local v2, "useAlpha":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v1, v3, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    .line 112
    .local v1, "oldUseColor":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v4, v4, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v4, v4, 0x8

    ushr-int/lit8 v4, v4, 0x8

    shl-int/lit8 v5, v2, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    .line 113
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v3, v3, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    if-eq v1, v3, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->invalidateSelf()V

    .line 116
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->invalidateSelf()V

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;->mState:Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    iput p1, v1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    .line 91
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 124
    return-void
.end method
