.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6406
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6410
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6411
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13300()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6412
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "DriverStartedState enter"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6414
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$13402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6415
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$13502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6416
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13608(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6417
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6423
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 6425
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6427
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6429
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6432
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 6435
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6436
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 6441
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6443
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6445
    const-string v5, "wifi.dbg.bscan"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    .line 6446
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "wifi.dbg.bscan =true"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6447
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->DEBUG_PARSE:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$14302(Z)Z

    .line 6450
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-eq v5, v4, :cond_8

    .line 6451
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6452
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6453
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 6454
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6456
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6479
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_9

    .line 6480
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 6482
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v5, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    .line 6489
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 6491
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6492
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 6493
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x20083

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6501
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "wifi_scan_available"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6502
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6503
    const-string v3, "scan_enabled"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6504
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6506
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13300()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6507
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Driverstarted State enter done"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6509
    :cond_6
    return-void

    .line 6438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_0

    .line 6464
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v2

    .line 6465
    .local v2, "status":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6466
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsSupplicantFirstScan:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$14602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6469
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6472
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6473
    const-string v5, "WifiStateMachine"

    const-string v6, "disconnect due to isTemporarilyDontReconnectWifi"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6474
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 6486
    .end local v2    # "status":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6694
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6695
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$13402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6696
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6697
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16602(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 6699
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6702
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6703
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6704
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6705
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6706
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 6708
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$15402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6709
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 6513
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v8, p1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6515
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 6690
    :goto_0
    return v5

    .line 6517
    :sswitch_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v8, v9, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    :cond_0
    :goto_1
    move v5, v9

    .line 6690
    goto :goto_0

    .line 6520
    :sswitch_1
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v10, v11, v12, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6522
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 6523
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 6525
    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 6530
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 6531
    .local v1, "country":Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v9, :cond_2

    move v5, v9

    .line 6532
    .local v5, "persist":Z
    :cond_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 6533
    .local v7, "sequence":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 6534
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "set country code ignored due to sequnce num"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 6537
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set country code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6538
    :cond_4
    if-eqz v5, :cond_5

    .line 6539
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6540
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "wifi_country_code"

    invoke-static {v8, v10, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6544
    :cond_5
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 6545
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 6547
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6548
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6553
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v10, 0x23010

    invoke-virtual {v8, v10, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6550
    :cond_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set country code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 6556
    .end local v1    # "country":Ljava/lang/String;
    .end local v5    # "persist":Z
    .end local v7    # "sequence":I
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6557
    .local v0, "band":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6558
    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6560
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13300()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "did set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6562
    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6564
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 6566
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, -0x7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;I)Z
    invoke-static {v8, v9, v13, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$15600(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;I)Z

    .line 6569
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13300()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6572
    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6576
    .end local v0    # "band":I
    :sswitch_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_c

    move v5, v9

    :cond_c
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6578
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 6581
    :sswitch_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 6584
    .local v4, "mode":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 6585
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Already in delayed stop"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6589
    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6590
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 6591
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6594
    :cond_e
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$13502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6595
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13608(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6596
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delayed stop message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6599
    :cond_f
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v2, v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6600
    .local v2, "driverStopIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6601
    const-string v8, "DelayedStopCounter"

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6602
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x8000000

    invoke-static {v10, v5, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$15702(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 6606
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v5, v10, v11, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 6610
    .end local v2    # "driverStopIntent":Landroid/content/Intent;
    .end local v4    # "mode":I
    :sswitch_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6611
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6612
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13608(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6613
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6614
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Delayed stop ignored due to start"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6615
    :cond_10
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 6616
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 6621
    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delayed stop "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6622
    :cond_11
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    if-ne v8, v10, :cond_0

    .line 6623
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    if-eq v8, v10, :cond_12

    .line 6624
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6625
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6627
    :cond_12
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6628
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    .line 6629
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6630
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 6631
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6633
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6637
    :sswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_14

    .line 6638
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6639
    :cond_14
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_15

    .line 6640
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6642
    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Illegal arugments to CMD_START_PACKET_FILTERING"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6646
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_16

    .line 6647
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6648
    :cond_16
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_17

    .line 6649
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6651
    :cond_17
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6655
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_18

    .line 6656
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v12, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 6657
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 6659
    :cond_18
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v12, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6663
    :sswitch_b
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_19

    .line 6664
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v11, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6666
    :cond_19
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v11, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6670
    :sswitch_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v9, :cond_1a

    move v5, v9

    :cond_1a
    invoke-virtual {v8, v5}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    .line 6673
    :sswitch_d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 6674
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 6675
    .local v6, "remoteAddress":Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_1b

    move v3, v9

    .line 6676
    .local v3, "enable":Z
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v6, v3}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v3    # "enable":Z
    :cond_1b
    move v3, v5

    .line 6675
    goto :goto_3

    .line 6680
    .end local v6    # "remoteAddress":Ljava/lang/String;
    :sswitch_e
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWfdConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 6682
    :cond_1c
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6684
    :cond_1d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6515
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_d
        0x20087 -> :sswitch_1
        0x200ad -> :sswitch_e
        0x200b6 -> :sswitch_c
    .end sparse-switch
.end method
