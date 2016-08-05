.class public Lcom/android/bluetooth/map/BluetoothMapMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMapMasInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapMasInstance$1;,
        Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final SDP_MAP_MSG_TYPE_EMAIL:I = 0x1

.field private static final SDP_MAP_MSG_TYPE_MMS:I = 0x8

.field private static final SDP_MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field private static final SDP_MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapMasInstance"

.field private static final V:Z


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBaseEmailUri:Ljava/lang/String;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContext:Landroid/content/Context;

.field private mEnableSmsMms:Z

.field private volatile mInterrupted:Z

.field private mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mMasInstanceId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;IZ)V
    .locals 1
    .param p1, "mapService"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "account"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .param p4, "masId"    # I
    .param p5, "enableSmsMms"    # Z

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    .line 50
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 53
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 56
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 58
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 65
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 69
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseEmailUri:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 86
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 87
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 88
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 90
    if-eqz p3, :cond_0

    .line 91
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseEmailUri:Ljava/lang/String;

    .line 93
    :cond_0
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 94
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 95
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->init()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Lcom/android/bluetooth/map/BluetoothMapService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    return-object v0
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeConnectionSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 385
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 389
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 389
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeServerSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 372
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 367
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 376
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    return-void
.end method

.method private final initSocket()Z
    .locals 14

    .prologue
    .line 202
    const-string v10, "[MAP]BluetoothMapMasInstance"

    const-string v11, "MAS initSocket()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "initSocketOK":Z
    const/16 v0, 0xa

    .line 208
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v10, 0xa

    if-ge v2, v10, :cond_2

    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mInterrupted:Z

    if-nez v10, :cond_2

    .line 209
    const/4 v3, 0x1

    .line 213
    :try_start_0
    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "masId":Ljava/lang/String;
    const-string v5, ""

    .line 215
    .local v5, "masName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 216
    .local v6, "messageTypeFlags":I
    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v10, :cond_0

    .line 217
    const-string v5, "SMS/MMS"

    .line 218
    or-int/lit8 v6, v6, 0xe

    .line 222
    :cond_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseEmailUri:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 223
    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v10, :cond_4

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/EMAIL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    :goto_1
    or-int/lit8 v6, v6, 0x1

    .line 230
    :cond_1
    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    and-int/lit16 v13, v6, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "msgTypes":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "sdpString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v4    # "masId":Ljava/lang/String;
    .end local v5    # "masName":Ljava/lang/String;
    .end local v6    # "messageTypeFlags":I
    .end local v7    # "msgTypes":Ljava/lang/String;
    .end local v8    # "sdpString":Ljava/lang/String;
    :goto_2
    if-nez v3, :cond_2

    .line 245
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v10, :cond_5

    .line 262
    :cond_2
    :goto_3
    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mInterrupted:Z

    if-eqz v10, :cond_3

    .line 263
    const/4 v3, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeServerSocket()V

    .line 268
    :cond_3
    if-eqz v3, :cond_7

    .line 274
    :goto_4
    return v3

    .line 226
    .restart local v4    # "masId":Ljava/lang/String;
    .restart local v5    # "masName":Ljava/lang/String;
    .restart local v6    # "messageTypeFlags":I
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 239
    .end local v4    # "masId":Ljava/lang/String;
    .end local v5    # "masName":Ljava/lang/String;
    .end local v6    # "messageTypeFlags":I
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "[MAP]BluetoothMapMasInstance"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error create RfcommServerSocket "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v3, 0x0

    goto :goto_2

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 247
    .local v9, "state":I
    const/16 v10, 0xb

    if-eq v9, v10, :cond_6

    const/16 v10, 0xc

    if-eq v9, v10, :cond_6

    .line 249
    const-string v10, "[MAP]BluetoothMapMasInstance"

    const-string v11, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 254
    :cond_6
    const-wide/16 v10, 0x12c

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v10, "[MAP]BluetoothMapMasInstance"

    const-string v11, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 272
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "state":I
    :cond_7
    const-string v10, "[MAP]BluetoothMapMasInstance"

    const-string v11, "Error to create listening socket after 10 try"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public getMasId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    return v0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartObexServerSession()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "[MAP]BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Service restartObexServerSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 362
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    .line 363
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string v0, "[MAP]BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Service shutdown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 333
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 337
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 339
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mInterrupted:Z

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->shutdown()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    .line 349
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    .locals 9
    .param p1, "mnsClient"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 281
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map Service startObexServerSession masid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    move v1, v8

    .line 310
    :goto_0
    return v1

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 290
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    .line 296
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;ILcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;Z)V

    .line 303
    .local v0, "mapServer":Lcom/android/bluetooth/map/BluetoothMapObexServer;
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v7, v1}, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 304
    .local v7, "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    new-instance v1, Ljavax/obex/ServerSession;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 305
    const-string v1, "[MAP]BluetoothMapMasInstance"

    const-string v2, "    ServerSession started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 307
    goto :goto_0

    .line 309
    .end local v0    # "mapServer":Lcom/android/bluetooth/map/BluetoothMapObexServer;
    .end local v7    # "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    :cond_1
    const-string v1, "[MAP]BluetoothMapMasInstance"

    const-string v2, "    No connection for this instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRfcommSocketListener()V
    .locals 3

    .prologue
    .line 191
    const-string v0, "[MAP]BluetoothMapMasInstance"

    const-string v1, "Map Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mInterrupted:Z

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapMasInstance$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapAcceptThread masId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->start()V

    .line 199
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MasId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseEmailUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SMS/MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
