.class public Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SlideDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mOffset:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 77
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 37
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mOffset:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->invalidateSelf()V

    .line 161
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 117
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 166
    invoke-virtual {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 168
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 42
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 67
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 52
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 57
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mOffset:F

    .line 23
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->invalidateSelf()V

    .line 24
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    return-void
.end method
