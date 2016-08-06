.class public Lcom/zte/mifavor/widget/TabActivityZTE;
.super Landroid/app/TabActivity;
.source "TabActivityZTE.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TabActivityZTE;->setIndicatorColor(I)V

    .line 100
    return-void
.end method
