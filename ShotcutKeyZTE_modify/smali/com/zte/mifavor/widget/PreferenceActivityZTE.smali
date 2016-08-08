.class public abstract Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "PreferenceActivityZTE.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->getWindow()Landroid/view/Window;

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
    .line 130
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->setIndicatorColor(I)V

    .line 131
    return-void
.end method
