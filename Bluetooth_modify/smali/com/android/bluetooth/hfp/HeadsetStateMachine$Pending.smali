.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 568
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processConnectionEvent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 746
    :pswitch_0
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed in Pending state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 582
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v5, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 585
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 586
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 587
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 589
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processWBSEvent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v5, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    .line 591
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectHfpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 596
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 597
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 598
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 599
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 580
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 587
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 603
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 604
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 610
    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 608
    :cond_2
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->processMultiHFConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 612
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 616
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 617
    :try_start_7
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 618
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 619
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 625
    :goto_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 622
    :cond_4
    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    .line 626
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 627
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 630
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 631
    :try_start_9
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 632
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 633
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 638
    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1

    .line 636
    :cond_6
    :try_start_a
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    .line 640
    :cond_7
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown device Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 644
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 646
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v7, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 648
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 649
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 653
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 654
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 655
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 656
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    .line 657
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 659
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 660
    :try_start_c
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 661
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is added in Pending state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 665
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 666
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 667
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 669
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 666
    :catchall_7
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v1

    .line 670
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 672
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 673
    :try_start_e
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 674
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    const-string v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is added in Pending state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 678
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 679
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 680
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v7, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 682
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 679
    :catchall_8
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v1

    .line 684
    :cond_b
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Some other incoming HF connected in Pending state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 686
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Incoming Hf accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v7, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 689
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 690
    :try_start_10
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 691
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    const-string v1, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is added in Pending state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 695
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 694
    :catchall_9
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v1

    .line 698
    :cond_c
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming Hf rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bondState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    .line 703
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 704
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0, p2, v7}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 712
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 713
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "current device tries to connect back"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 720
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "Stack and target device are connecting"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_e
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 724
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Another connecting event on the incoming device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    :cond_f
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "Incoming connection while pending, ignore"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "stack is disconnecting mCurrentDevice"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 738
    const-string v1, "HeadsetStateMachine"

    const-string v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 739
    :cond_11
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 740
    const-string v1, "HeadsetStateMachine"

    const-string v2, "IncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    :cond_12
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting unknow device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private processMultiHFConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "Pending state: processMultiHFConnected"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 757
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 758
    .local v0, "deviceSize":I
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 765
    .end local v0    # "deviceSize":I
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMultiHFConnected , the latest mCurrentDevice is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "Pending state: processMultiHFConnected ,fake broadcasting for mCurrentDevice"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 771
    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "Exit Pending"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/internal/util/IState;

    .line 564
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0xc9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 498
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pending process message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 501
    const/4 v3, 0x1

    .line 502
    .local v3, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 554
    :goto_0
    return v6

    .line 505
    :sswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    :goto_1
    move v6, v3

    .line 554
    goto :goto_0

    .line 508
    :sswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->onConnectionStateChanged(I[B)V
    invoke-static {v4, v6, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I[B)V

    goto :goto_1

    .line 512
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 513
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v6, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 518
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v5

    .line 519
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v6, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 520
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 526
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 529
    :sswitch_4
    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/hfp/HeadsetCallState;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_1

    :goto_2
    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v7, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_2

    .line 533
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 535
    .local v2, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 537
    iget v4, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 547
    const-string v4, "HeadsetStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 539
    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 540
    .local v1, "device1":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_2

    iget-object v4, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    const-string v4, "HeadsetStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove connect timeout for device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V
    invoke-static {v4, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 544
    :cond_2
    iget v4, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0x65 -> :sswitch_5
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
