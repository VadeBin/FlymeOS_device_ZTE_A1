.class public Lcom/android/bluetooth/gatt/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanManager$ScanNative;,
        Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;,
        Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

.field private static final DBG:Z = true

.field private static final MSG_FLUSH_BATCH_RESULTS:I = 0x2

.field private static final MSG_START_BLE_SCAN:I = 0x0

.field private static final MSG_STOP_BLE_SCAN:I = 0x1

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field static final SCAN_RESULT_TYPE_BOTH:I = 0x3

.field static final SCAN_RESULT_TYPE_FULL:I = 0x2

.field static final SCAN_RESULT_TYPE_TRUNCATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BtGatt.ScanManager"


# instance fields
.field private mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBatchAlarmReceiverRegistered:Z

.field private mBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

.field private mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

.field private mLastConfiguredScanSetting:I

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mRegularScanClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 96
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/ScanManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return p1
.end method

.method private isFilteringSupported()Z
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 179
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 955
    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 171
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 172
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 173
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method


# virtual methods
.method callbackDone(II)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "status"    # I

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback done for clientIf - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 168
    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "scanManager HandlerThread cleanup"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->cleanup()V

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "scanManager HandlerThread quit"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 119
    :cond_0
    return-void
.end method

.method flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 160
    return-void
.end method

.method getBatchScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object v0
.end method

.method getFullBatchScanQueue()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "fullBatchClients":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/bluetooth/gatt/ScanClient;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 143
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-object v1
.end method

.method getRegularScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object v0
.end method

.method start()V
    .locals 3

    .prologue
    .line 101
    const-string v1, "scanManager HandlerThread start"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v1, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    .line 105
    return-void
.end method

.method startScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 152
    return-void
.end method

.method stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 156
    return-void
.end method
