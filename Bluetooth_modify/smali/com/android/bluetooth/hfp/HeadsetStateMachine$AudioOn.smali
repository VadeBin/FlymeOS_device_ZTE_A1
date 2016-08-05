.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v2, 0xa

    .line 1581
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio changed on disconnected device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_0
    :pswitch_0
    return-void

    .line 1586
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1602
    :pswitch_1
    const-string v0, "HeadsetStateMachine"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1588
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 1590
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$9200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1591
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xc

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$9300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1594
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$11100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1503
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

    .line 1505
    packed-switch p1, :pswitch_data_0

    .line 1574
    :pswitch_0
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1507
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1508
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 1511
    invoke-direct {p0, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1515
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1517
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
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

    const-string v4, " is removed in AudioOn state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1523
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processWBSEvent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    .line 1524
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1525
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$11000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 1530
    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1528
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processMultiHFConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1532
    :cond_3
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from unknown device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1536
    :pswitch_2
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processSlcConnected()V

    goto/16 :goto_0

    .line 1539
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1540
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1541
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 1544
    :cond_4
    const-string v1, "HeadsetStateMachine"

    const-string v2, "HFP to be Connected in AudioOn state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1547
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Incoming Hf accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1550
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 1551
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1552
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1553
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
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

    const-string v4, " is added in AudioOn state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1558
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1557
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1561
    :cond_6
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming Hf rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

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

    .line 1564
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    .line 1566
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1567
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0, p2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1620
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1621
    .local v0, "volumeValue":I
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getSpeakerVolume()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setSpeakerVolume(I)V

    .line 1623
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setVolumeNative(II[B)Z
    invoke-static {v1, v3, v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$11200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II[B)Z

    .line 1626
    :cond_0
    return-void
.end method

.method private processMultiHFConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "AudioOn state: processMultiHFConnected"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1632
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    .local v0, "deviceSize":I
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1636
    .end local v0    # "deviceSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 1637
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$11300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 1639
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMultiHFConnected , the latest mCurrentDevice is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1641
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v2, "AudioOn state: processMultiHFConnected ,fake broadcasting for mCurrentDevice"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1643
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1645
    return-void
.end method

.method private processSlcConnected()V
    .locals 3

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1610
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->queryPhoneState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :goto_0
    return-void

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for query phone state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter AudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$9800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "Exit AudioOn"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/internal/util/IState;

    .line 1499
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioOn process message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v3, "ERROR: mConnectedDevicesList is empty in AudioOn"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1227
    const/16 v17, 0x0

    .line 1489
    :cond_0
    :goto_0
    return v17

    .line 1231
    :cond_1
    const/16 v17, 0x1

    .line 1232
    .local v17, "retValue":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1487
    const/16 v17, 0x0

    goto :goto_0

    .line 1235
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1236
    .local v13, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v13, :cond_0

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$9900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1248
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting SCO audio for device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1250
    :cond_2
    const-string v2, "HeadsetStateMachine"

    const-string v3, "disconnectAudioNative failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1255
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 1256
    const/4 v12, 0x0

    .line 1257
    .local v12, "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v11

    .line 1258
    .local v11, "CurrentAudioState":Lcom/android/internal/util/IState;
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Reach to max size, disconnect one of them first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1262
    .restart local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1266
    .restart local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v12}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1274
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x3

    const/4 v4, 0x2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v12, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v3

    .line 1280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v12}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 1283
    const/4 v12, 0x0

    .line 1284
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    .end local v11    # "CurrentAudioState":Lcom/android/internal/util/IState;
    .end local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1300
    .local v16, "m":Landroid/os/Message;
    move-object/from16 v0, v16

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v4, 0x7530

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 1284
    .end local v16    # "m":Landroid/os/Message;
    .restart local v11    # "CurrentAudioState":Lcom/android/internal/util/IState;
    .restart local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1285
    .end local v11    # "CurrentAudioState":Lcom/android/internal/util/IState;
    .end local v12    # "DisconnectConnectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectHfpNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1293
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v3

    .line 1294
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 1297
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1305
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->onConnectionStateChanged(I[B)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I[B)V

    goto/16 :goto_0

    .line 1310
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1311
    .restart local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1316
    const-string v2, "HeadsetStateMachine"

    const-string v3, "AudioOn, the disconnected deviceis active SCO device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v3, "Disconnecting SCO audio"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1324
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1329
    :cond_a
    const-string v2, "HeadsetStateMachine"

    const-string v3, "AudioOn, the disconnected deviceis not active SCO device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x3

    const/4 v4, 0x2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1335
    const-string v2, "HeadsetStateMachine"

    const-string v3, "AudioOn, disconnect device failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x2

    const/4 v4, 0x3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1342
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1350
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting SCO audio for device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1355
    :cond_c
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectAudioNative failedfor device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1361
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x1

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_0

    .line 1364
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_0

    .line 1367
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1370
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetCallState;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    const/4 v3, 0x1

    :goto_2
    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v4, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    .line 1373
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1376
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    goto/16 :goto_0

    .line 1379
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    goto/16 :goto_0

    .line 1383
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1384
    .restart local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v10, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v10

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z
    invoke-static/range {v2 .. v10}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IIIIZLjava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 1388
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendVendorSpecificResultCode(Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V

    goto/16 :goto_0

    .line 1393
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->initiateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_0

    .line 1396
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_0

    .line 1401
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1402
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1403
    .restart local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 1411
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1413
    .restart local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 1414
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Timeout waiting for voice recognitionto start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v13}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 1422
    .end local v13    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 1424
    .local v15, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1426
    iget v2, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1482
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown stack event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1428
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xc9

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    .line 1429
    .local v14, "device1":Landroid/bluetooth/BluetoothDevice;
    if-eqz v14, :cond_e

    iget-object v2, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1430
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove connect timeout for device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xc9

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$10800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1433
    :cond_e
    iget v2, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1436
    .end local v14    # "device1":Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    iget v2, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1439
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVrEvent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1442
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAnswerCall(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1445
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processHangupCall(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1448
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    iget-object v5, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVolumeEvent(IILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1452
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDialCall(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1455
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendDtmf(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1458
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processNoiceReductionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1461
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtChld(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1464
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSubscriberNumberRequest(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1467
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCind(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1470
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCops(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1473
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtClcc(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1476
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1479
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, v15, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processKeyPressed(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$8700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x65 -> :sswitch_11
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
        0x68 -> :sswitch_b
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 1426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
