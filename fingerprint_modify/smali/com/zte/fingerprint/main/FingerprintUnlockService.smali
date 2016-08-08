.class public Lcom/zte/fingerprint/main/FingerprintUnlockService;
.super Landroid/app/Service;
.source "FingerprintUnlockService.java"


# instance fields
.field fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

.field private mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    if-ne v0, v1, :cond_2

    .line 25
    new-instance v0, Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/service/FPCServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->onCreate()V

    .line 33
    :cond_1
    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->onDestroy()V

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
