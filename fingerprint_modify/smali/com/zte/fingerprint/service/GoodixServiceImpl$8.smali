.class Lcom/zte/fingerprint/service/GoodixServiceImpl$8;
.super Ljava/lang/Object;
.source "GoodixServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/GoodixServiceImpl;->onStatus(II)V
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
    .line 453
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 457
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1500(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    .line 459
    .local v0, "cb":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify up pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    iget v7, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$100(Lcom/zte/fingerprint/service/GoodixServiceImpl;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 461
    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerUp(I)V

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v5, 0x0

    # setter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z
    invoke-static {v3, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1402(Lcom/zte/fingerprint/service/GoodixServiceImpl;Z)Z

    .line 464
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 465
    monitor-exit v4

    .line 471
    .end local v0    # "cb":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :goto_0
    return-void

    .line 465
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 469
    .local v2, "ne":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$8;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFingerUp but callback unregistered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
