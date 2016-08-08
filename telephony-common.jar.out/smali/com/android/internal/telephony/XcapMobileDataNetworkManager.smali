.class public Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
.super Ljava/lang/Object;
.source "XcapMobileDataNetworkManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XcapMobileDataNetworkManager"

.field private static final NETWORK_ACQUIRE_TIMEOUT_MILLIS:I = 0x2710

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x1f40


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mXcapMobileDataNetworkRequestCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 73
    iput-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private inAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private newRequest(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/16 v7, 0x9

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 164
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 165
    .local v3, "subId":I
    new-instance v4, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;-><init>(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    iput-object v4, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 202
    const-string v4, "XcapMobileDataNetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newRequest, subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 211
    .local v1, "networkBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 217
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v5, 0x1f40

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 219
    return-void

    .line 213
    .end local v2    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isImsPdnOperator(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 229
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 231
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 238
    iput-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 240
    return-void
.end method


# virtual methods
.method public acquireNetwork(I)Landroid/net/Network;
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    const-string v6, "XcapMobileDataNetworkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireNetwork(): phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->inAirplaneMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isImsPdnOperator(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    :cond_2
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: acquireNetwork start"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 108
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_3

    .line 110
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v6, "XcapMobileDataNetworkManager: already available"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 113
    :cond_3
    :try_start_1
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: start new network request"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->newRequest(I)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 118
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0x2710

    .line 119
    .local v4, "waitTime":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 121
    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_4

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: acquire network wait interrupted"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_1

    .line 134
    :cond_5
    const-string v6, "XcapMobileDataNetworkManager"

    const-string v7, "XcapMobileDataNetworkManager: timed out"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v6, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    .line 137
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseNetwork()V
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    if-lez v0, :cond_0

    .line 148
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 149
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XcapMobileDataNetworkManager: release, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V

    .line 156
    :cond_0
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useAcquiredNetwork(Landroid/net/Network;Ljava/lang/String;I)V
    .locals 11
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "xcapRootUri"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    .local v7, "xcapSrvHostName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 251
    const-string v8, "http://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 252
    const/4 v8, 0x7

    const-string v9, "/"

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 260
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 261
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 262
    .local v6, "portStartIndex":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 263
    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 267
    .end local v6    # "portStartIndex":I
    :cond_1
    const-string v8, "XcapMobileDataNetworkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "useAcquiredNetwork(): xcapRootUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", xcapSrvHostName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v7, :cond_2

    .line 271
    const/16 v5, 0x28

    .line 276
    .local v5, "networkType":I
    :try_start_0
    invoke-virtual {p1, v7}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 277
    .local v0, "address":Ljava/net/InetAddress;
    invoke-direct {p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 279
    const-string v8, "XcapMobileDataNetworkManager"

    const-string v9, "useAcquiredNetwork(): requestRouteToHostAddress() failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "networkType":I
    :cond_2
    :goto_2
    return-void

    .line 253
    :cond_3
    const-string v8, "https://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    const/16 v8, 0x8

    const-string v9, "/"

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 256
    :cond_4
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 276
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "networkType":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 284
    .local v2, "ex":Ljava/net/UnknownHostException;
    const-string v8, "XcapMobileDataNetworkManager"

    const-string v9, "useAcquiredNetwork(): UnknownHostException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
