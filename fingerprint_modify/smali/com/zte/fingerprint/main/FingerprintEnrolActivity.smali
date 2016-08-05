.class public Lcom/zte/fingerprint/main/FingerprintEnrolActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "FingerprintEnrolActivity.java"


# instance fields
.field private mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    if-ne v0, v1, :cond_1

    .line 25
    new-instance v0, Lcom/zte/fingerprint/enroll/FPCEnrol;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :goto_1
    return-void

    .line 26
    :cond_1
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lcom/zte/fingerprint/enroll/GoodixEnroll;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onDestroy()V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onPause()V

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onPause()V

    .line 56
    return-void
.end method
