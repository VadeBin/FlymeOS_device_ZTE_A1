.class Lcom/android/bluetooth/gatt/AdvertiseManager;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AdvertiseManager$1;,
        Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;,
        Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_START_ADVERTISING:I = 0x0

.field private static final MSG_STOP_ADVERTISING:I = 0x1

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BtGatt.AdvertiseManager"


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mAdvertiseClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/AdvertiseClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

.field private mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/gatt/GattService;
    .param p2, "adapterService"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "advertise manager created"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 80
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Lcom/android/bluetooth/gatt/AdvertiseManager$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/AdvertiseManager;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    .line 163
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    if-ne v2, p1, :cond_0

    .line 167
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 527
    const-string v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    return-void
.end method

.method private postCallback(II)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;

    move-result-object v0

    .line 153
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 154
    .local v3, "settings":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_0
    const/4 v2, 0x1

    .line 155
    .local v2, "isStart":Z
    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 159
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    .end local v2    # "isStart":Z
    .end local v3    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_1
    return-void

    .line 153
    .restart local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "failed onMultipleAdvertiseCallback"

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method callbackDone(II)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    .line 140
    if-nez p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "advertise clients cleared"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "advertise HandlerThread quit"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 103
    :cond_0
    return-void
.end method

.method start()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothAdvertiseManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    .line 92
    return-void
.end method

.method startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 128
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
