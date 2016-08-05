.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiChangeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEOUT:Ljava/lang/String; = "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

.field private static final MAX_APS_TO_TRACK:I = 0x3

.field private static final MOVING_SCAN_PERIOD_MS:I = 0x2710

.field private static final MOVING_STATE_TIMEOUT_MS:I = 0x7530

.field private static final SCAN_COMMAND_ID:I = 0x1

.field private static final STATIONARY_SCAN_PERIOD_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiChangeStateMachine"

.field private static final WIFI_CHANGE_CMD_CHANGE_DETECTED:I = 0x1

.field private static final WIFI_CHANGE_CMD_CHANGE_TIMEOUT:I = 0x2

.field private static final WIFI_CHANGE_CMD_CONFIGURE:I = 0x5

.field private static final WIFI_CHANGE_CMD_DISABLE:I = 0x4

.field private static final WIFI_CHANGE_CMD_ENABLE:I = 0x3

.field private static final WIFI_CHANGE_CMD_NEW_SCAN_RESULTS:I


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

.field mCurrentBssids:[Landroid/net/wifi/ScanResult;

.field mDefaultState:Lcom/android/internal/util/State;

.field mMovingState:Lcom/android/internal/util/State;

.field mStationaryState:Lcom/android/internal/util/State;

.field mTimeoutIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 1197
    const-string v0, "SignificantChangeStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1186
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 1187
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    .line 1188
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    .line 1535
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1199
    iget-object v0, p1, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1203
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1206
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method


# virtual methods
.method addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1539
    const-string v1, "WifiChangeStateMachine"

    const-string v2, "Starting scans"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1541
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x27002

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1542
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1543
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1544
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1545
    return-void
.end method

.method public configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1234
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1235
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(I)V

    .line 1231
    return-void
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1209
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 1214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1215
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1217
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1226
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(I)V

    .line 1227
    return-void
.end method

.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 1532
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1533
    return-void
.end method

.method reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1478
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 1479
    const-string v7, "WifiChangeStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "too few APs ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") available to track wifi change"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :goto_0
    return-void

    .line 1484
    :cond_0
    const-string v7, "WifiChangeStateMachine"

    const-string v8, "Setting configuration specified by app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    new-array v7, v7, [Landroid/net/wifi/ScanResult;

    iput-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    .line 1487
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1489
    .local v1, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 1490
    new-instance v5, Landroid/net/wifi/ScanResult;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 1491
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    iput-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1492
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    aput-object v5, v7, v2

    .line 1493
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1489
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1497
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    .line 1500
    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v6}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1501
    .local v6, "settings2":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v7, 0x0

    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1502
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1503
    const/4 v2, 0x0

    .line 1504
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1505
    .local v0, "channel":Ljava/lang/Integer;
    iget-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    new-instance v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v8, v7, v2

    move v2, v3

    .line 1506
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 1508
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_2
    iget v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1509
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    goto :goto_0
.end method

.method reconfigureScan([Landroid/net/wifi/ScanResult;I)V
    .locals 22
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;
    .param p2, "period"    # I

    .prologue
    .line 1390
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1391
    const-string v19, "WifiChangeStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "too few APs ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") available to track wifi change"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :goto_0
    return-void

    .line 1395
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    .line 1398
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1399
    .local v5, "bssidToScanResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[Landroid/net/wifi/ScanResult;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_3

    aget-object v13, v3, v9

    .line 1400
    .local v13, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 1401
    .local v15, "saved":Landroid/net/wifi/ScanResult;
    if-nez v15, :cond_2

    .line 1402
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1403
    :cond_2
    iget v0, v15, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 1404
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1409
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    .end local v15    # "saved":Landroid/net/wifi/ScanResult;
    :cond_3
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v4, v0, [Landroid/net/wifi/ScanResult;

    .line 1410
    .local v4, "brightest":[Landroid/net/wifi/ScanResult;
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    .line 1411
    .local v14, "results2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 1412
    .restart local v13    # "result":Landroid/net/wifi/ScanResult;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    .line 1413
    aget-object v19, v4, v10

    if-eqz v19, :cond_5

    aget-object v19, v4, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 1415
    :cond_5
    array-length v11, v4

    .local v11, "k":I
    :goto_5
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_6

    .line 1416
    add-int/lit8 v19, v11, -0x1

    add-int/lit8 v20, v11, -0x2

    aget-object v20, v4, v20

    aput-object v20, v4, v19

    .line 1415
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 1418
    :cond_6
    aput-object v13, v4, v10

    goto :goto_3

    .line 1412
    .end local v11    # "k":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1425
    .end local v10    # "j":I
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v6, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_c

    .line 1427
    const/4 v7, 0x0

    .line 1428
    .local v7, "found":Z
    add-int/lit8 v10, v8, 0x1

    .restart local v10    # "j":I
    :goto_7
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_a

    .line 1430
    aget-object v19, v4, v10

    if-eqz v19, :cond_9

    aget-object v19, v4, v8

    if-eqz v19, :cond_9

    aget-object v19, v4, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    aget-object v20, v4, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1432
    const/4 v7, 0x1

    .line 1428
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1435
    :cond_a
    if-nez v7, :cond_b

    .line 1436
    aget-object v19, v4, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1440
    .end local v7    # "found":Z
    .end local v10    # "j":I
    :cond_c
    const-string v19, "WifiChangeStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " channels"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    new-instance v16, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct/range {v16 .. v16}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 1444
    .local v16, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 1445
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1446
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_d

    .line 1447
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v21, v20, v8

    .line 1446
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1450
    :cond_d
    move/from16 v0, p2

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1451
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1453
    new-instance v17, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .line 1454
    .local v17, "settings2":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    .line 1455
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    .line 1456
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    .line 1457
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    .line 1458
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$BssidInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1460
    const/4 v8, 0x0

    :goto_9
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_e

    .line 1461
    new-instance v2, Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    .line 1462
    .local v2, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    aget-object v19, v4, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    .line 1463
    aget-object v19, v4, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x64

    div-int/lit8 v19, v19, 0x20

    add-int/lit8 v18, v19, 0x2

    .line 1464
    .local v18, "threshold":I
    aget-object v19, v4, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    sub-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    .line 1465
    aget-object v19, v4, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    .line 1466
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    move-object/from16 v19, v0

    aput-object v2, v19, v8

    .line 1468
    const-string v19, "WifiChangeStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Setting bssid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "low="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", high="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 1472
    .end local v2    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v18    # "threshold":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 1473
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    goto/16 :goto_0
.end method

.method removeScanRequest()V
    .locals 3

    .prologue
    .line 1548
    const-string v1, "WifiChangeStateMachine"

    const-string v2, "Stopping scans"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1550
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x27003

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1551
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1552
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1553
    return-void
.end method

.method trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1556
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChange()V

    .line 1557
    invoke-static {p1, p0}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z

    .line 1558
    return-void
.end method

.method untrackSignificantWifiChange()V
    .locals 0

    .prologue
    .line 1561
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChange()V

    .line 1562
    return-void
.end method
