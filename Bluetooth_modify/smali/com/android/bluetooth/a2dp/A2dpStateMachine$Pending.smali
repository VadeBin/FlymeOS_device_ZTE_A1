.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

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

    .line 344
    packed-switch p1, :pswitch_data_0

    .line 471
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 350
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectA2dpNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 359
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 362
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 352
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 366
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 368
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 374
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 375
    :try_start_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 377
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 382
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 383
    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 385
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 395
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 399
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 400
    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 401
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 402
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 404
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 406
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 407
    :try_start_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 408
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 410
    monitor-exit v1

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    .line 411
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 412
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 414
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 415
    :try_start_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 416
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 417
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 418
    monitor-exit v1

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    .line 420
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last  device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 428
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v5, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 430
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 431
    :try_start_9
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

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
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 440
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "current device tries to connect back"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "Stack and target device are connecting"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "Another connecting event on the incoming device"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "Incoming connection while pending, ignore"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 460
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "stack is disconnecting mCurrentDevice"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 463
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "TargetDevice is getting disconnected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v1, "IncomingDevice is getting disconnected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting unknow device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$5900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
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
    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

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

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x1

    .line 302
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 339
    .end local v2    # "retValue":Z
    :goto_0
    return v2

    .line 304
    .restart local v2    # "retValue":Z
    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 307
    :sswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->onConnectionStateChanged(I[B)V
    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    goto :goto_0

    .line 311
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 312
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v5, 0x1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 317
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 319
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 321
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 325
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 326
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 332
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v4, 0xc9

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 329
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x6f -> :sswitch_3
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
