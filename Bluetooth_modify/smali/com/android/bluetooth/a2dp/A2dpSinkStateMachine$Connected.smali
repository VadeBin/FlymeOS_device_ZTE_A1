.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v2, 0xb

    const/16 v1, 0xa

    .line 579
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is different from ConnectedDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$7200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 584
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 595
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$7300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_0

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$7100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 565
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 567
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 568
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 485
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 489
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 491
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v5, "ERROR: mCurrentDevice is null in Connected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    move v2, v3

    .line 554
    :cond_0
    :goto_0
    return v2

    .line 495
    :cond_1
    const/4 v2, 0x1

    .line 496
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 552
    goto :goto_0

    .line 499
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 500
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v7, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 506
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v7}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v4

    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 514
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 515
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 520
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 521
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v5, 0x3

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v5, v8}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 526
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 527
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v8, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 531
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 535
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 536
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 547
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

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
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_0
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 541
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 544
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
