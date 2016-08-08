.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 287
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore HF DISCONNECTED event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v2, "Incoming A2DP accepted"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v2, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 245
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 247
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 248
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v2, "Incoming A2DP rejected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    .line 254
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 255
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 262
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v2, "A2DP Connected from Disconnected state"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v2, "Incoming A2DP accepted"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 267
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v2

    .line 268
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 269
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 270
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v2, "Incoming A2DP rejected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    .line 276
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 277
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore HF DISCONNECTING event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v5, "ERROR: current, target, or mIncomingDevice not null in Disconnected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    move v2, v3

    .line 226
    :goto_0
    :sswitch_0
    return v2

    .line 185
    :cond_1
    const/4 v2, 0x1

    .line 186
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 224
    goto :goto_0

    .line 188
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v7, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 192
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->connectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v4

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 200
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 201
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/16 v4, 0xc9

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 210
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 211
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 219
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
