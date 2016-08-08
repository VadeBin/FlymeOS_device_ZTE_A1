.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;
.super Landroid/content/BroadcastReceiver;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/gatt/ScanManager$ScanNative;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

.field final synthetic val$this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->val$this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    const-string v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awakened up at time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object v1, v1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object v1, v1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0
.end method
