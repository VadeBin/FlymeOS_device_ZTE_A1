.class Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
.super Landroid/os/Handler;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    return-void
.end method

.method private isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 260
    :cond_1
    :goto_0
    return v1

    .line 259
    :cond_2
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 260
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v1, 0x1

    .line 265
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 269
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z
    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 192
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 204
    const-string v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received an unkown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v1, "handling starting scan"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "BtGatt.ScanManager"

    const-string v1, "Scan settings not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :cond_1
    const-string v0, "BtGatt.ScanManager"

    const-string v1, "Scan already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    goto :goto_0
.end method

.method handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 234
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 241
    :goto_1
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app died, unregister client - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_1
.end method
