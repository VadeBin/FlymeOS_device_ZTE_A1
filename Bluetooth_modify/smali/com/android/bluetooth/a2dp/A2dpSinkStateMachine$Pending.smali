.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 471
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$6000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 356
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->connectA2dpNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 365
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 366
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 368
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 358
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 372
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 374
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 381
    :try_start_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 383
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 388
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 389
    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 390
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 391
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 401
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 402
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 405
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 406
    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 408
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    .line 409
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 412
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 413
    :try_start_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 416
    monitor-exit v1

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    .line 417
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 418
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 420
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 421
    :try_start_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$4900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 424
    monitor-exit v1

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v5, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 430
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v1

    .line 431
    :try_start_9
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    .line 435
    monitor-exit v1

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v0

    .line 439
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 440
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "current device tries to connect back"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "Stack and target device are connecting"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "Another connecting event on the incoming device"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "Incoming connection while pending, ignore"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 460
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "stack is disconnecting mCurrentDevice"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 463
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "TargetDevice is getting disconnected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const-string v1, "IncomingDevice is getting disconnected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$5900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    .line 303
    const/4 v2, 0x1

    .line 304
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 344
    .end local v2    # "retValue":Z
    :goto_0
    return v2

    .line 306
    .restart local v2    # "retValue":Z
    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 309
    :sswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->onConnectionStateChanged(I[B)V
    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I[B)V

    goto :goto_0

    .line 313
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 314
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v5, 0x1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 319
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    monitor-enter v4

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 321
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 327
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    .line 328
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 337
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

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
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    const/16 v4, 0xc9

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$3800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    .line 331
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
