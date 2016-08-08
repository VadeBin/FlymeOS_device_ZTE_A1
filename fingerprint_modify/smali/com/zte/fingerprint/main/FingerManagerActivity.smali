.class public Lcom/zte/fingerprint/main/FingerManagerActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "FingerManagerActivity.java"


# instance fields
.field private mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    if-ne v0, v1, :cond_1

    .line 34
    new-instance v0, Lcom/zte/fingerprint/manage/FPCManage;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/manage/FPCManage;-><init>(Lcom/zte/mifavor/widget/ActivityZTE;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/manage/FingerprintManage;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :goto_1
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/zte/fingerprint/manage/GoodixManage;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/manage/GoodixManage;-><init>(Lcom/zte/mifavor/widget/ActivityZTE;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;

    invoke-virtual {v0}, Lcom/zte/fingerprint/manage/FingerprintManage;->onDestroy()V

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 50
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->finish()V

    .line 52
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
