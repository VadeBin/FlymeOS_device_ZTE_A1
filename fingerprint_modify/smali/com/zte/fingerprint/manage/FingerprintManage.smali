.class public abstract Lcom/zte/fingerprint/manage/FingerprintManage;
.super Ljava/lang/Object;
.source "FingerprintManage.java"


# instance fields
.field protected mActivity:Lcom/zte/mifavor/widget/ActivityZTE;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/widget/ActivityZTE;)V
    .locals 0
    .param p1, "activity"    # Lcom/zte/mifavor/widget/ActivityZTE;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    .line 20
    return-void
.end method


# virtual methods
.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ActivityZTE;->finish()V

    .line 36
    return-void
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ActivityZTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ActivityZTE;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method protected setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FingerprintManage;->mActivity:Lcom/zte/mifavor/widget/ActivityZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(I)V

    .line 32
    return-void
.end method
