.class public Lcom/android/shotcutkey/MyActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "MyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/MyActivity;->setTheme(I)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/MyActivity;->setRequestedOrientation(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/shotcutkey/MyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 34
    const/16 v1, 0xd

    .line 36
    const/16 v2, 0xf

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/shotcutkey/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/MyActivity;->setIndicatorColor(I)V

    .line 47
    return-void
.end method
