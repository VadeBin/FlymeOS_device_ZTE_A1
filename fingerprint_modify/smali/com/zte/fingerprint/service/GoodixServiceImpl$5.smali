.class Lcom/zte/fingerprint/service/GoodixServiceImpl$5;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;
.source "GoodixServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/GoodixServiceImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method public exposeFallback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 0
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const-string v1, "on no match screen off receiver"

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->vb:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$700(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 296
    return-void
.end method

.method public unlock(I)V
    .locals 7
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const-string v1, "on identified screen off receiver"

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const-wide/16 v2, 0x1388

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->wakeupLock(J)V
    invoke-static {v0, v2, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$500(Lcom/zte/fingerprint/service/GoodixServiceImpl;J)V

    .line 281
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$5;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->checkStop()V
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$600(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
