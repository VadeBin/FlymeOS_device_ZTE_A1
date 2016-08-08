.class Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Lcom/zte/mifavor/widget/overlaydrawer/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerArrowDrawableToggle"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 190
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    .line 191
    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/zte/mifavor/widget/overlaydrawer/DrawerArrowDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method isLayoutRtl()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/DrawerArrowDrawable;->setProgress(F)V

    .line 200
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    goto :goto_0
.end method
