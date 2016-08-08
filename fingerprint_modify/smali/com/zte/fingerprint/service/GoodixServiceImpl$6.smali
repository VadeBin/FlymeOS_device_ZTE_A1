.class Lcom/zte/fingerprint/service/GoodixServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 308
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 311
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->isFingerprintUnlockEnabled()Z
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$800(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.zte.fingerprints.EnrolActivityFinished"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->isFingerprintEnabled()Z
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$900(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->pm:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "existSystemUI":Z
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .line 317
    .local v1, "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    iget-object v4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    iget v5, v1, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->isSystemUI(I)Z
    invoke-static {v4, v5}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1100(Lcom/zte/fingerprint/service/GoodixServiceImpl;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    .end local v1    # "p":Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    invoke-static {v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$1200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const-string v4, "no system ui registered,register"

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->logI(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$400(Lcom/zte/fingerprint/service/GoodixServiceImpl;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-virtual {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->openFingerprint()V

    .line 326
    .end local v0    # "existSystemUI":Z
    :cond_3
    monitor-exit v3

    .line 334
    :cond_4
    :goto_0
    return-void

    .line 326
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->isFingerprintUnlockEnabled()Z
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$800(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 329
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 330
    :try_start_1
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iget-object v5, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;-><init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$6;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->checkStop()V
    invoke-static {v2}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$600(Lcom/zte/fingerprint/service/GoodixServiceImpl;)V

    goto :goto_0

    .line 331
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
