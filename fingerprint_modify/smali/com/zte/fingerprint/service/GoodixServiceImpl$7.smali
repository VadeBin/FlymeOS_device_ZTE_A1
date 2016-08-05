.class Lcom/zte/fingerprint/service/GoodixServiceImpl$7;
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
    .line 425
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v5, 0x1

    # setter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z
    invoke-static {v3, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1402(Lcom/zte/fingerprint/service/GoodixServiceImpl;Z)Z

    .line 432
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const-string v5, "finger down"

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->UpLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 434
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->down:Z
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1400(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z

    move-result v3

    if-ne v3, v8, :cond_0

    .line 435
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->getActiveCallback()Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1500(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    .line 436
    .local v0, "cb":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    if-eqz v0, :cond_0

    .line 437
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finger down pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

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

    .line 438
    iget-object v3, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerDown(I)V

    .line 441
    .end local v0    # "cb":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_0
    monitor-exit v4

    .line 449
    :goto_0
    return-void

    .line 441
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 447
    .local v2, "ne":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$7;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFingerDown but callback unregistered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
