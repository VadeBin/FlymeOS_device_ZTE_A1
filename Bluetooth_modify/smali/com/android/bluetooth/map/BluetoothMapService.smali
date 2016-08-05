.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final ACTION_SHOW_MAPS_EMAIL_SETTINGS:Ljava/lang/String; = "android.btmap.intent.action.SHOW_MAPS_EMAIL_SETTINGS"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field private static final DISCONNECT_MAP:I = 0x3

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final MAS_ID_SMS_MMS:I = 0x0

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_MAS_CONNECT:I = 0x138b

.field public static final MSG_MAS_CONNECT_CANCEL:I = 0x138c

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final SHUTDOWN:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapService"

.field private static final UPDATE_MAS_INSTANCES:I = 0x5

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_ADDED:I = 0x0

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_DISCONNECT:I = 0x3

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED:I = 0x1

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED:I = 0x2

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x61a8

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAccountChanged:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mEnabledAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingAuthorization:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mMasInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mMasInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mPermission:I

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoveTimeoutMsg:Z

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 124
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 137
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    .line 146
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 152
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    .line 153
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 155
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 157
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 158
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 319
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 882
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 171
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstancesHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListeners()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnectHandler(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 839
    const-string v3, "[MAP]BluetoothMapService"

    const-string v4, "cancelUserTimeOutAlarm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 842
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 843
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 844
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 845
    return-void
.end method

.method private final closeService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 176
    const-string v2, "[MAP]BluetoothMapService"

    const-string v3, "MAP Service closeService in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 180
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 183
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 188
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    :cond_2
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 193
    iput v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 194
    invoke-direct {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 196
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    :cond_3
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 204
    return-void
.end method

.method private createMasInstances()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 718
    const/4 v4, 0x0

    .line 721
    .local v4, "masId":I
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;IZ)V

    .line 727
    .local v0, "smsMmsInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 728
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 732
    .local v8, "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    add-int/lit8 v4, v4, 0x1

    .line 733
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;IZ)V

    .line 739
    .local v5, "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 740
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 742
    .end local v5    # "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .end local v8    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    return-void
.end method

.method private getNextMasId()I
    .locals 6

    .prologue
    const/16 v4, 0xff

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "largestMasId":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 700
    .local v3, "masId":I
    if-le v3, v2, :cond_0

    .line 701
    move v2, v3

    .line 698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v3    # "masId":I
    :cond_1
    if-ge v2, v4, :cond_3

    .line 705
    add-int/lit8 v4, v2, 0x1

    .line 714
    :cond_2
    :goto_1
    return v4

    .line 709
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v4, :cond_2

    .line 710
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move v4, v1

    .line 711
    goto :goto_1

    .line 709
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private onConnectHandler(I)V
    .locals 6
    .param p1, "masId"    # I

    .prologue
    const/4 v5, 0x1

    .line 399
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 404
    .local v1, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    const-string v2, "[MAP]BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPermission = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v2, v5, :cond_0

    .line 407
    :try_start_0
    const-string v2, "[MAP]BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incoming connection accepted from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " automatically as trusted device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 410
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "[MAP]BluetoothMapService"

    const-string v3, "catch IOException starting obex server session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 412
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSessions()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 416
    :catch_1
    move-exception v0

    .line 417
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "[MAP]BluetoothMapService"

    const-string v3, "catch RemoteException starting obex server session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendConnectCancelMessage()V
    .locals 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 863
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 865
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendConnectMessage(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 852
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 3

    .prologue
    .line 854
    const-string v1, "[MAP]BluetoothMapService"

    const-string v2, "sendConnectTimeoutMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 3

    .prologue
    .line 870
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    if-eqz v1, :cond_0

    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, "timeoutIntent":Landroid/content/Intent;
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 874
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 875
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    .line 877
    .end local v0    # "timeoutIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 879
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 880
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 430
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 431
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 435
    const-string v3, "[MAP]BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] Map state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 438
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 443
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 445
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x9

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setUserTimeoutAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 827
    const-string v2, "[MAP]BluetoothMapService"

    const-string v3, "SetUserTimeOutAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_0

    .line 829
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 831
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 832
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v1, "timeoutIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 835
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 836
    return-void
.end method

.method private final startObexServerSessions()V
    .locals 10

    .prologue
    const/16 v9, 0x138e

    const/4 v8, 0x1

    .line 220
    const-string v5, "[MAP]BluetoothMapService"

    const-string v6, "[startObexServerSession] Map Service START ObexServerSessions()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_0

    .line 224
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 225
    .local v4, "pm":Landroid/os/PowerManager;
    const-string v5, "StartingObexMapTransaction"

    invoke-virtual {v4, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 228
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 232
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v5, :cond_1

    .line 233
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 236
    :cond_1
    const/4 v1, 0x0

    .line 237
    .local v1, "connected":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 239
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ne v5, v8, :cond_2

    .line 241
    const/4 v1, 0x1

    .line 237
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "[MAP]BluetoothMapService"

    const-string v6, "IOException occured while starting an obexServerSession restarting the listener"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "[MAP]BluetoothMapService"

    const-string v6, "RemoteException occured while starting an obexServerSession restarting the listener"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    .line 251
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v1, :cond_4

    .line 252
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 255
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    return-void
.end method

.method private final startRfcommSocketListeners()V
    .locals 3

    .prologue
    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method private stopObexServerSessions(I)V
    .locals 9
    .param p1, "masId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 273
    const-string v4, "[MAP]BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAP Service STOP ObexServerSessions() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, 0x1

    .line 277
    .local v2, "lastMasInst":Z
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 279
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 280
    .local v3, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v3    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 288
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 289
    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 292
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 293
    .restart local v3    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v3, :cond_6

    .line 294
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 301
    :cond_3
    if-eqz v2, :cond_4

    .line 302
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 303
    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 304
    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 305
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    if-eqz v4, :cond_4

    .line 306
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 311
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 312
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v5, 0x138d

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v5, 0x138e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 317
    :cond_5
    return-void

    .line 296
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .restart local v0    # "c":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 297
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateMasInstancesHandler()Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 621
    const-string v1, "[MAP]BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMasInstancesHandler() state = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v6, 0x0

    .line 624
    .local v6, "changed":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    if-nez v1, :cond_6

    .line 625
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v9

    .line 626
    .local v9, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    const/4 v10, 0x0

    .line 627
    .local v10, "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    const/4 v11, 0x0

    .line 628
    .local v11, "removedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .restart local v10    # "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 630
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 631
    .local v3, "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_1
    if-eqz v11, :cond_3

    .line 638
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 639
    .restart local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 640
    .local v8, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    const-string v1, "[MAP]BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Removing account: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " masInst = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz v8, :cond_2

    .line 642
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 643
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 644
    const/4 v6, 0x1

    goto :goto_1

    .line 649
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v8    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    :cond_3
    if-eqz v10, :cond_5

    .line 651
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 652
    .restart local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    const-string v1, "[MAP]BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Adding account: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getNextMasId()I

    move-result v4

    .line 654
    .local v4, "masId":I
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;IZ)V

    .line 660
    .local v0, "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const/4 v6, 0x1

    .line 664
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    goto :goto_2

    .line 669
    .end local v0    # "newInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .end local v3    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v4    # "masId":I
    :cond_5
    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 681
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 685
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v10    # "newAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v11    # "removedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    :goto_3
    return v6

    .line 683
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    goto :goto_3
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    .prologue
    .line 760
    const-string v0, "[MAP]BluetoothMapService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    .line 764
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "result":Z
    const-string v2, "[MAP]BluetoothMapService"

    const-string v3, "[disconnectMap] enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 467
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    if-eqz v2, :cond_1

    .line 468
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, "timeoutIntent":Landroid/content/Intent;
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 472
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    .line 474
    .end local v1    # "timeoutIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 475
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    .line 476
    const-string v2, "[MAP]BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[disconnectMap] mas size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->createMasInstances()V

    .line 481
    :cond_2
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    .line 482
    const/4 v0, 0x1

    .line 483
    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1107
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRemoteDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sRemoteDeviceName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAppObserver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsWaitingAuthorization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRemoveTimeoutMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAccountChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetoothMnsObexClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1117
    const-string v3, "mMasInstanceMap:"

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 1119
    .local v2, "key":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    .end local v2    # "key":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    const-string v3, "mEnabledAccounts:"

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1122
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 1123
    .local v0, "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1125
    .end local v0    # "account":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_1
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 494
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    monitor-exit p0

    .line 498
    return-object v0

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x2

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    monitor-exit p0

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 505
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 506
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 507
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 508
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 512
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 513
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 514
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 518
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    :cond_2
    monitor-exit p0

    .line 519
    return-object v3

    .line 518
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 544
    .local v0, "priority":I
    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 549
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z
    .locals 7
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "masInst"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    const/4 v3, 0x1

    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, "sendIntent":Z
    const/4 v0, 0x0

    .line 778
    .local v0, "cancelConnection":Z
    monitor-enter p0

    .line 779
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_4

    .line 780
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 781
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 783
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 784
    const v4, 0x7f050087

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 787
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v4

    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 788
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-nez v4, :cond_3

    .line 789
    const/4 v2, 0x1

    .line 790
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 791
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->setUserTimeoutAlarm()V

    .line 801
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    if-eqz v2, :cond_6

    .line 805
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 812
    const-string v4, "[MAP]BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return v3

    .line 792
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 793
    const/4 v0, 0x1

    goto :goto_0

    .line 795
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 796
    const-string v4, "[MAP]BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected connection from a second Remote Device received. name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_5

    const-string v3, "unknown"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_1

    .line 801
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 796
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_2

    .line 816
    :cond_6
    if-eqz v0, :cond_7

    .line 817
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    goto :goto_1

    .line 818
    :cond_7
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v4, v3, :cond_2

    .line 820
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    goto :goto_1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    const-string v0, "[MAP]BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPriority] Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 554
    const-string v3, "[MAP]BluetoothMapService"

    const-string v4, "start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v3, "android.btmap.intent.action.SHOW_MAPS_EMAIL_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v3, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 564
    .local v2, "filterMessageSent":Landroid/content/IntentFilter;
    const-string v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    :try_start_0
    const-string v3, "message/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 578
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-direct {v3, p0, p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    .line 580
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 582
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->createMasInstances()V

    .line 585
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 588
    return v5

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "[MAP]BluetoothMapService"

    const-string v4, "Wrong mime type!!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 574
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :catch_1
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[MAP]BluetoothMapService"

    const-string v4, "[start] Unable to register map receiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 746
    const-string v1, "[MAP]BluetoothMapService"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 749
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 755
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    .line 756
    const/4 v1, 0x1

    return v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[MAP]BluetoothMapService"

    const-string v2, "[stop] Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateMasInstances(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    return-void
.end method
