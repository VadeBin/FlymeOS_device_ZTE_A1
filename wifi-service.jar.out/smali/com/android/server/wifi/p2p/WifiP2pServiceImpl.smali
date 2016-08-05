.class public final Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_TMP_GO:Ljava/lang/String; = "com.android.server.WifiManager.action.CLEAR_TMP_GO"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CLEAR_LISTEN_FLAG_REQUEST:I = 0x2

.field private static final CLEAR_OPERATION_MS:J = 0x1d4c0L

.field private static final CLEAR_TMP_GO_REQUEST:I = 0x1

.field private static final CONNECTED_DISCOVER_TIMEOUT_S:I = 0x19

.field private static final DBG:Z = true

.field private static final DHCP_INFO_FILE:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.p2p0.leases"

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field public static final FAST_CONNECT_FIND_GO_TIMED_OUT:I = 0x23009

.field private static final FAST_CONNECT_FIND_GO_WAIT_TIME_MS:I = 0x7530

.field private static final FAST_DISCOVER_TIMEOUT_S:I = 0x7b

.field private static final FAST_SCAN_INTERVAL_TIME_MS:I = 0xbb8

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field private static final GC_IP_RANGE:[Ljava/lang/String;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final MTK_NFC_WFA_CFG_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HR_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HS_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HS_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_HR_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_ACTION"

.field private static final MTK_NFC_WFA_P2P_HR_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_P2P_HS_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_EXTRA_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.tag.extra.DEV_INFO"

.field private static final MTK_NFC_WFA_TAG_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.WRITE_ACTION"

.field private static final MTK_WPS_NFC_TESTBED_EXTRA_PASSWORD:Ljava/lang/String; = "mtk.wps.nfc.testbed.extra.password"

.field private static final MTK_WPS_NFC_TESTBED_P2P_AUTOGO_AS_SEL_ACTION:Ljava/lang/String; = "mtk.wps.nfc.testbed.p2pgo.as.sel"

.field private static final M_CMD_NFC_HANDOVER_READ:I = 0x23015

.field private static final M_CMD_NFC_TAG_READ:I = 0x23014

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_ACTIVE:I = 0x0

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_FAST_PS:I = 0x2

.field public static final P2P_MAX_PS:I = 0x1

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final STOP_P2P_MONITOR_TIMED_OUT:I = 0x2300a

.field private static final STOP_P2P_MONITOR_WAIT_TIME_MS:I = 0x1388

.field private static final SUBMASK:Ljava/lang/String; = "255.255.255.0"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final UNKNOWN_COMMAND:Ljava/lang/String; = "UNKNOWN COMMAND"

.field private static final WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

.field private static mDisableP2pTimeoutIndex:I

.field private static mFastConnectFindGoTimeOutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static final mMtkWpsp2pnfcSupport:Z

.field private static mStopP2pMonitorTimeoutIndex:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mBeamPlusStart:Z

.field private mClearTmpGoIntent:Landroid/app/PendingIntent;

.field private mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectToPeer:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceCapa:I

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

.field private mFoundGo:Z

.field private mFoundGoTimeOut:Z

.field private mGcFastConnectEnaled:Z

.field private mGoFastConnectEnaled:Z

.field private mGroupCreatedEntirely:Z

.field private mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field private mInterface:Ljava/lang/String;

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mListening:Z

.field private mMccSupport:Z

.field private mMiracastMode:I

.field mNegoChannelConflict:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pOperFreq:I

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRestartFastConnectAsGc:Z

.field private mRestartFastConnectAsGo:Z

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTmpGcIp:Ljava/lang/String;

.field private mTmpGoAddress:Ljava/lang/String;

.field private mTmpGoIp:Ljava/lang/String;

.field private mWaitingForHrToken:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 156
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    .line 158
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    .line 159
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    .line 163
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    .line 166
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    .line 283
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    .line 338
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    .line 341
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

    .line 345
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.2"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.3"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "192.168.49.4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "192.168.49.5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "192.168.49.6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "192.168.49.7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "192.168.49.8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.49.9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.49.10"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.49.11"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->GC_IP_RANGE:[Ljava/lang/String;

    .line 360
    const-string v0, "ro.mtk_wifiwpsp2p_nfc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 152
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 234
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 260
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    .line 264
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    .line 267
    iput-byte v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    .line 306
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 307
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    .line 308
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    .line 309
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    .line 310
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    .line 311
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    .line 312
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    .line 320
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatedEntirely:Z

    .line 323
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 326
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    .line 329
    iput v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientIp:Ljava/util/HashMap;

    .line 357
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    .line 358
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListening:Z

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    .line 394
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNegoChannelConflict:Z

    .line 397
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    .line 398
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    .line 553
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 556
    const-string v1, "p2p0"

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    .line 557
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0xd

    const-string v3, "WIFI_P2P"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 559
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    .line 562
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 565
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiP2pService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "wifiP2pThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 567
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    .line 569
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v2, "WifiP2pService"

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 570
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->start()V

    .line 571
    return-void
.end method

.method private MsgHandledLog(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 5148
    const-string v0, "WifiP2pService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10200()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$10202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 139
    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    return p0
.end method

.method static synthetic access$10204()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->MsgHandledLog(Ljava/lang/Object;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11000()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$11004()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    return v0
.end method

.method static synthetic access$11202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    return p1
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    return v0
.end method

.method static synthetic access$11902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$13700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$15000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    return v0
.end method

.method static synthetic access$15002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    return p1
.end method

.method static synthetic access$15700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object p1
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$15902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$17202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatedEntirely:Z

    return p1
.end method

.method static synthetic access$17900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$18800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$18900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$18902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # B

    .prologue
    .line 139
    iput-byte p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$18904(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$19502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$19600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I

    return v0
.end method

.method static synthetic access$19602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    return p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2204()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    return v0
.end method

.method static synthetic access$3004()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientIp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/AlarmManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcRequestTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcSelectTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->GC_IP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    return p1
.end method

.method static synthetic access$7800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClearTmpGoIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # [B

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "src"    # [B

    .prologue
    .line 5089
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5090
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 5091
    :cond_0
    const/4 v4, 0x0

    .line 5101
    :goto_0
    return-object v4

    .line 5093
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 5094
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .line 5095
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 5096
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 5097
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5099
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5093
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5101
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private checkConnectivityInternalPermission()I
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkLocationHardwarePermission()I
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private enforceConnectivityInternalOrLocationHardwarePermission()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConnectivityInternalPermission()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkLocationHardwarePermission()I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 609
    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 5077
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5078
    :cond_0
    const/4 v0, 0x0

    .line 5085
    :cond_1
    return-object v0

    .line 5080
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 5081
    .local v2, "length":I
    new-array v0, v2, [B

    .line 5082
    .local v0, "d":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 5083
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 5082
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendNfcConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5120
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5121
    const-string v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5122
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5123
    return-void
.end method

.method private sendNfcRequestTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mtk.nfc.wfa.p2p.HR_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5106
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5107
    const-string v1, "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5108
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5109
    return-void
.end method

.method private sendNfcSelectTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mtk.nfc.wfa.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5113
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5114
    const-string v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5115
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5116
    return-void
.end method

.method private sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mtk.wps.nfc.testbed.p2pgo.as.sel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5127
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5128
    const-string v1, "mtk.wps.nfc.testbed.extra.password"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5129
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5130
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 574
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 576
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 681
    :try_start_0
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO in fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getCredential()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Ljava/lang/String;)V

    .line 685
    .local v1, "returnConnectInfo":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 686
    iget-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 690
    :cond_1
    new-instance v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 691
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 692
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2205a

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 694
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO return fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO Self fastConnectInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v1    # "returnConnectInfo":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :goto_0
    return-object v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fastConnectAsGo() IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 12

    .prologue
    .line 706
    const-string v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMacAddress(): before retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v1, "/data/nvram/APCFG/APRDEB/WIFI"

    .line 709
    .local v1, "MAC_ADDRESS_FILENAME":Ljava/lang/String;
    const/4 v0, 0x6

    .line 710
    .local v0, "MAC_ADDRESS_DIGITS":I
    const-string v2, "NvRAMAgent"

    .line 713
    .local v2, "NVRAM_AGENT_SERVICE":Ljava/lang/String;
    :try_start_0
    const-string v8, "NvRAMAgent"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/server/wifi/WifiNvRamAgent;

    move-result-object v3

    .line 715
    .local v3, "agent":Lcom/mediatek/server/wifi/WifiNvRamAgent;
    const-string v8, "/data/nvram/APCFG/APRDEB/WIFI"

    invoke-interface {v3, v8}, Lcom/mediatek/server/wifi/WifiNvRamAgent;->readFileByName(Ljava/lang/String;)[B

    move-result-object v4

    .line 716
    .local v4, "buff":[B
    const-string v6, ""

    .line 718
    .local v6, "macFromNVRam":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 719
    const-string v8, "%02x:%02x:%02x:%02x:%02x:%02x"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x4

    aget-byte v11, v4, v11

    or-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x5

    aget-byte v11, v4, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x6

    aget-byte v11, v4, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x7

    aget-byte v11, v4, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/16 v11, 0x8

    aget-byte v11, v4, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/16 v11, 0x9

    aget-byte v11, v4, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 721
    const-string v8, ""

    if-eq v8, v6, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v6, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :cond_0
    const-string v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v3    # "agent":Lcom/mediatek/server/wifi/WifiNvRamAgent;
    .end local v4    # "buff":[B
    .end local v6    # "macFromNVRam":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-object v8

    .line 724
    :catch_0
    move-exception v7

    .line 725
    .local v7, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    const-string v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    .end local v7    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 728
    .local v5, "iobe":Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    const-string v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "iobe":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v8

    const-string v9, "WifiP2pService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v8
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 617
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 618
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pHandoverSelectToken()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5133
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 5134
    sget-boolean v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    if-nez v2, :cond_1

    .line 5142
    :cond_0
    :goto_0
    return-object v1

    .line 5137
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverSelect()Ljava/lang/String;

    move-result-object v0

    .line 5138
    .local v0, "token":Ljava/lang/String;
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getP2pHandoverSelectToken, token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UNKNOWN COMMAND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5140
    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalOrLocationHardwarePermission()V

    .line 628
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 629
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 630
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "peerMacAddress"    # Ljava/lang/String;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 644
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    .line 645
    return-void
.end method

.method public setMiracastModeEx(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 650
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(III)V

    .line 651
    return-void
.end method
