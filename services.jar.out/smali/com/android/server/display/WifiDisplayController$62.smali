.class Lcom/android/server/display/WifiDisplayController$62;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 4632
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGroupInfoAvailable(), mSinkState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$11900(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v4, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4682
    :cond_0
    :goto_0
    return-void

    .line 4640
    :cond_1
    if-nez p1, :cond_2

    .line 4641
    const-string v3, "WifiDisplayController"

    const-string v4, "Error: group is null !!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4646
    :cond_2
    const/4 v1, 0x0

    .line 4649
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$4300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4650
    const-string v3, "WifiDisplayController"

    const-string v4, "group owner is my self !"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4654
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->access$12000(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4658
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4659
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v4

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkPort:I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12202(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4660
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found ! Sink name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mac address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$12100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkPort:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$12200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    const/4 v1, 0x1

    .line 4677
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    .line 4678
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v4, 0x32

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12302(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4679
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v4, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12400(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4680
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$12500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4668
    :cond_5
    const-string v3, "WifiDisplayController"

    const-string v4, "group owner is not my self ! So I am GC."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4670
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v4

    # setter for: Lcom/android/server/display/WifiDisplayController;->mSinkPort:I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$12202(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4672
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sink name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mac address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$12100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkPort:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$12200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    const/4 v1, 0x1

    goto/16 :goto_1
.end method
