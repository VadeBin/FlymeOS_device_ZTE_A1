.class public Lcom/zte/fingerprint/main/AbstractActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "AbstractActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_sb"

    const v3, -0x959455

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v0, 4287734701

    .line 25
    .local v0, "bg":I
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->initActionBar()V

    .line 26
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/AbstractActivity;->setIndicatorColor(I)V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 41
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->finish()V

    .line 43
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
