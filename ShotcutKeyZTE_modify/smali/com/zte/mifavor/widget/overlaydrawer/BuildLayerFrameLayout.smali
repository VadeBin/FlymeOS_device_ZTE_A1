.class Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BuildLayerFrameLayout.java"


# instance fields
.field private mAttached:Z

.field private mChanged:Z

.field private mFirst:Z

.field private mHardwareLayersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mAttached:Z

    return v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mChanged:Z

    if-eqz v0, :cond_0

    .line 98
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mAttached:Z

    .line 52
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mAttached:Z

    .line 58
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 73
    return-void
.end method

.method setHardwareLayersEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 46
    return-void
.end method
