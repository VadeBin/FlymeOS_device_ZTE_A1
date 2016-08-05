.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;
.super Ljava/lang/Object;
.source "BluetoothTetheringNetworkFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 87
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v2, "attempted to reverse tether without interface name"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dhcpThread(+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    new-instance v9, Landroid/net/DhcpResults;

    invoke-direct {v9}, Landroid/net/DhcpResults;-><init>()V

    .line 101
    .local v9, "dhcpResults":Landroid/net/DhcpResults;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "BluetoothTetheringNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHCP request error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v1

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 105
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    .end local v9    # "dhcpResults":Landroid/net/DhcpResults;
    .end local v10    # "linkProperties":Landroid/net/LinkProperties;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 109
    .restart local v9    # "dhcpResults":Landroid/net/DhcpResults;
    .restart local v10    # "linkProperties":Landroid/net/LinkProperties;
    :cond_1
    iget-object v11, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v11

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/net/DhcpResults;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v1

    # setter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0, v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$002(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v12, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$400(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Bluetooth Tethering"

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$500(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    # getter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v7

    const/16 v8, 0x45

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    # setter for: Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v12, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$302(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 122
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
