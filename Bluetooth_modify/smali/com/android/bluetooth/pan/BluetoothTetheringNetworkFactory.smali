.class public Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "BluetoothTetheringNetworkFactory.java"


# static fields
.field private static final NETWORK_SCORE:I = 0x45

.field private static final NETWORK_TYPE:Ljava/lang/String; = "Bluetooth Tethering"

.field private static final TAG:Ljava/lang/String; = "BluetoothTetheringNetworkFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mPanService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "panService"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 64
    const-string v0, "Bluetooth Tethering"

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    .line 69
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const-string v3, "Bluetooth Tethering"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 70
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 71
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->initNetworkCapabilities()V

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    return-void
.end method

.method private initNetworkCapabilities()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc0

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 191
    return-void
.end method

.method private declared-synchronized onCancelRequest()V
    .locals 6

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 141
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 147
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 149
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected startNetwork()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public startReverseTether(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v1, "attempted to reverse tether with empty interface"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_1
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v1, "attempted to reverse tether while already in process"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit p0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_2
    :try_start_1
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->register()V

    .line 167
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 168
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected stopNetwork()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public declared-synchronized stopReverseTether()V
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v1, "attempted to stop reverse tether with nothing tethered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->unregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
