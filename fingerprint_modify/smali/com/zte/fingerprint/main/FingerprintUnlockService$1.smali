.class Lcom/zte/fingerprint/main/FingerprintUnlockService$1;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;
.source "FingerprintUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 58
    :cond_0
    return-void
.end method

.method public registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V

    .line 71
    :cond_0
    return-void
.end method

.method public declared-synchronized startUi(Landroid/os/IBinder;IIII)V
    .locals 0
    .param p1, "containingWindowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 48
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopUi()V
    .locals 0

    .prologue
    .line 52
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 64
    :cond_0
    return-void
.end method

.method public unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget-object v0, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->fingerprintServiceInterface:Lcom/zte/fingerprint/service/FingerprintServiceInterface;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V

    .line 79
    :cond_0
    return-void
.end method
