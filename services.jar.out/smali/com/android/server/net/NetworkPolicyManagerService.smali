.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;
    }
.end annotation

# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final INVALID_SUBSCRIBER_ID:Ljava/lang/String; = "FFFFFFFFFFFFFFF"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_INTERFACE_DOWN:I = 0x9

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurForegroundState:I

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field volatile mRestrictBackground:Z

.field volatile mRestrictPower:Z

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 326
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 272
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 281
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 283
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 286
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 288
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 294
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 297
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 299
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 302
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 305
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 306
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    .line 309
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    .line 311
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 477
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 515
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 604
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 618
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 632
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 699
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1016
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1034
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2272
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 338
    const-string v1, "missing context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 339
    const-string v1, "missing activityManager"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 340
    const-string v1, "missing powerManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 341
    const-string v1, "missing networkStats"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 342
    const-string v1, "missing networkManagement"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 343
    const-string v1, "missing TrustedTime"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 345
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 347
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 349
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 351
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netpolicy.xml"

    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2462
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2463
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2464
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2454
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2455
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2471
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2472
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2473
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 2482
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2483
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2484
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2486
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static dumpSparseIntArray(Ljava/io/PrintWriter;Landroid/util/SparseIntArray;)V
    .locals 4
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "value"    # Landroid/util/SparseIntArray;

    .prologue
    .line 2489
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2491
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2495
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    return-void
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 21
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 849
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .line 850
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 851
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 852
    const-wide/16 v6, 0x0

    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, #android:color@system_notification_accent_color#t

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 857
    .local v16, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 952
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 954
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    .line 859
    :pswitch_0
    const v2, #android:string@data_usage_warning_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 860
    .local v18, "title":Ljava/lang/CharSequence;
    const v2, #android:string@data_usage_warning_body#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "body":Ljava/lang/CharSequence;
    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v17

    .line 868
    .local v17, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 871
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v19

    .line 872
    .local v19, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 878
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v17    # "snoozeIntent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    .end local v19    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, #android:string@data_usage_limit_body#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v12, #android:drawable@stat_notify_disabled_data#t

    .local v12, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 897
    const/16 v18, 0x0

    .line 901
    .restart local v18    # "title":Ljava/lang/CharSequence;
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 902
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 903
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 904
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 905
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 907
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .line 908
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 884
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v2, #android:string@data_usage_3g_limit_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 885
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 887
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, #android:string@data_usage_4g_limit_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 888
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 890
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, #android:string@data_usage_mobile_limit_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 891
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 893
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, #android:string@data_usage_wifi_limit_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .restart local v18    # "title":Ljava/lang/CharSequence;
    const v12, #android:drawable@stat_notify_error#t

    goto :goto_2

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v12    # "icon":I
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v14, p3, v6

    .line 914
    .local v14, "overBytes":J
    const v2, #android:string@data_usage_limit_snoozed_body#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 918
    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    const/16 v18, 0x0

    .restart local v18    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .line 943
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 920
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v2, #android:string@data_usage_3g_limit_snoozed_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 921
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 923
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, #android:string@data_usage_4g_limit_snoozed_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 924
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 926
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, #android:string@data_usage_mobile_limit_snoozed_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 927
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 929
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, #android:string@data_usage_wifi_limit_snoozed_title#t

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 930
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 958
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v14    # "overBytes":J
    .end local v18    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 882
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 918
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 968
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 969
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 971
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, #android:string@data_usage_restricted_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 972
    .local v12, "title":Ljava/lang/CharSequence;
    const v0, #android:string@data_usage_restricted_body#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "body":Ljava/lang/CharSequence;
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v0, #android:drawable@stat_notify_error#t

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, #android:color@system_notification_accent_color#t

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 983
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v10

    .line 984
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-static {v9}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->setSmallIcon(Landroid/app/Notification$Builder;)V

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 992
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 994
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 11

    .prologue
    .line 1301
    const-string v9, "NetworkPolicy"

    const-string v10, "ensureActiveMobilePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v9, :cond_1

    .line 1328
    :cond_0
    return-void

    .line 1304
    :cond_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 1305
    .local v8, "tele":Landroid/telephony/TelephonyManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 1311
    .local v4, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v6

    .line 1312
    .local v6, "subIds":[I
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 1313
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 1314
    .local v3, "slotId":I
    const-string v7, "FFFFFFFFFFFFFFF"

    .line 1315
    .local v7, "subscriberId":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    .line 1312
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    :cond_3
    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 1322
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1323
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(I)V

    goto :goto_1

    .line 1325
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ensureActiveMobilePolicyLocked(I)V
    .locals 30
    .param p1, "subId"    # I

    .prologue
    .line 1334
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureActiveMobilePolicyLocked subId("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v26

    .line 1336
    .local v26, "tele":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v25

    .line 1337
    .local v25, "sub":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v27

    .line 1339
    .local v27, "teleEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 1340
    .local v5, "subscriberId":Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;

    move-result-object v9

    .line 1343
    .local v9, "svlteSubscriberId":Ljava/lang/String;
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1345
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v24, v3, -0x1

    .local v24, "i":I
    :goto_0
    if-ltz v24, :cond_4

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/NetworkTemplate;

    .line 1347
    .local v28, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1349
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found template "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " which matches subscriber "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check svlteSubscriberId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1354
    new-instance v6, Landroid/net/NetworkIdentity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1356
    .local v6, "probesvLteIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1357
    const-string v3, "NetworkPolicy"

    const-string v4, "Template missing svlteSubscriberId"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/net/NetworkTemplate;->addMatchSubscriberIds(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1359
    const-string v3, "NetworkPolicy"

    const-string v4, "addMatchSubscriberIds success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    :goto_1
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "template after add svLte:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    .end local v6    # "probesvLteIdent":Landroid/net/NetworkIdentity;
    .end local v28    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    :goto_2
    return-void

    .line 1361
    .restart local v6    # "probesvLteIdent":Landroid/net/NetworkIdentity;
    .restart local v28    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const-string v3, "NetworkPolicy"

    const-string v4, "addMatchSubscriberIds fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1345
    .end local v6    # "probesvLteIdent":Landroid/net/NetworkIdentity;
    :cond_3
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_0

    .line 1370
    .end local v28    # "template":Landroid/net/NetworkTemplate;
    :cond_4
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No policy for subscriber "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; generating default policy"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x100000

    mul-long v14, v16, v18

    .line 1377
    .local v14, "warningBytes":J
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 1378
    .local v29, "time":Landroid/text/format/Time;
    invoke-virtual/range {v29 .. v29}, Landroid/text/format/Time;->setToNow()V

    .line 1380
    move-object/from16 v0, v29

    iget v12, v0, Landroid/text/format/Time;->monthDay:I

    .line 1381
    .local v12, "cycleDay":I
    move-object/from16 v0, v29

    iget-object v13, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1383
    .local v13, "cycleTimezone":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v11

    .line 1384
    .local v11, "template":Landroid/net/NetworkTemplate;
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "svlteSubscriberId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1386
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v11, v9}, Landroid/net/NetworkTemplate;->addMatchSubscriberIds(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1388
    const-string v3, "NetworkPolicy"

    const-string v4, "addMatchSubscriberIds success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_3
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_5
    new-instance v10, Landroid/net/NetworkPolicy;

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-direct/range {v10 .. v23}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1397
    .local v10, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 1399
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendPolicyCreatedBroadcast()V

    goto/16 :goto_2

    .line 1390
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    :cond_6
    const-string v3, "NetworkPolicy"

    const-string v4, "addMatchSubscriberIds fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 20
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1403
    const-string v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ensureActiveMobilePolicyLocked subscriberId("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1407
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_1

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1409
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1411
    const-string v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found template "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which matches subscriber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_1
    return-void

    .line 1407
    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 1418
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No policy for subscriber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; generating default policy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, #android:integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .line 1425
    .local v8, "warningBytes":J
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 1426
    .local v19, "time":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 1428
    move-object/from16 v0, v19

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 1429
    .local v6, "cycleDay":I
    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1431
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1432
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1434
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 1436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendPolicyCreatedBroadcast()V

    goto :goto_1
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 1921
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1922
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 1923
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1927
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1
    return-object v1

    .line 1921
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1927
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 1948
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1949
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 1950
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1954
    :cond_0
    const/4 v9, 0x0

    .line 1970
    :goto_0
    return-object v9

    .line 1950
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1957
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 1960
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1961
    .local v4, "start":J
    move-wide/from16 v6, v16

    .line 1962
    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 1965
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1967
    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1970
    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 1965
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 1967
    .restart local v12    # "softLimitBytes":J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 2411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 2417
    :goto_0
    return-wide v0

    .line 2412
    :catch_0
    move-exception v6

    .line 2413
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    .line 2414
    goto :goto_0

    .line 2415
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 2417
    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2424
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2429
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    .line 2425
    :catch_0
    move-exception v0

    .line 2427
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2429
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isTemplateRelevant(ILandroid/net/NetworkTemplate;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 788
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 790
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 795
    .local v0, "slotId":I
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 796
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 817
    .end local v0    # "slotId":I
    :goto_0
    return v2

    .line 799
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 817
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 2215
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2217
    :cond_0
    const/4 v0, 0x1

    .line 2220
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 1833
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 10
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1836
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1837
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .line 1839
    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 1840
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 1843
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1844
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 1845
    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1846
    :cond_0
    if-eqz v1, :cond_1

    .line 1847
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Normalization replaced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 828
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method private readPolicyLocked()V
    .locals 32

    .prologue
    .line 1440
    const-string v4, "NetworkPolicy"

    const-string v30, "readPolicyLocked()"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1446
    const/16 v20, 0x0

    .line 1448
    .local v20, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1449
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1450
    .local v21, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1453
    const/16 v29, 0x1

    .line 1454
    .local v29, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_e

    .line 1455
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 1456
    .local v26, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_0

    .line 1457
    const-string v4, "policy-list"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1458
    const-string v4, "version"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 1459
    const/4 v4, 0x3

    move/from16 v0, v29

    if-lt v0, v4, :cond_1

    .line 1460
    const-string v4, "restrictBackground"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1549
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_0
    move-exception v19

    .line 1551
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1559
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 1463
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1552
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_1
    move-exception v19

    .line 1553
    .local v19, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1557
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1466
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_2
    :try_start_4
    const-string v4, "network-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1467
    const-string v4, "networkTemplate"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1468
    .local v23, "networkTemplate":I
    const/4 v4, 0x0

    const-string v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1470
    .local v25, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v29

    if-lt v0, v4, :cond_3

    .line 1471
    const/4 v4, 0x0

    const-string v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1475
    .local v22, "networkId":Ljava/lang/String;
    :goto_2
    const-string v4, "cycleDay"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1477
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v29

    if-lt v0, v4, :cond_4

    .line 1478
    const/4 v4, 0x0

    const-string v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1482
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string v4, "warningBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1483
    .local v8, "warningBytes":J
    const-string v4, "limitBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1485
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_5

    .line 1486
    const-string v4, "lastLimitSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1493
    .local v14, "lastLimitSnooze":J
    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v29

    if-lt v0, v4, :cond_7

    .line 1494
    const-string v4, "metered"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1507
    .local v16, "metered":Z
    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_8

    .line 1508
    const-string v4, "lastWarningSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1513
    .local v12, "lastWarningSnooze":J
    :goto_6
    const/4 v4, 0x7

    move/from16 v0, v29

    if-lt v0, v4, :cond_9

    .line 1514
    const-string v4, "inferred"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1519
    .local v17, "inferred":Z
    :goto_7
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1521
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1554
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_2
    move-exception v19

    .line 1555
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1557
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1473
    .end local v19    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "networkTemplate":I
    .restart local v25    # "subscriberId":Ljava/lang/String;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "networkId":Ljava/lang/String;
    goto/16 :goto_2

    .line 1480
    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 1487
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v29

    if-lt v0, v4, :cond_6

    .line 1488
    const-string v4, "lastSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1490
    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1496
    :cond_7
    packed-switch v23, :pswitch_data_0

    .line 1503
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1500
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    .line 1501
    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1510
    :cond_8
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_6

    .line 1516
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_7

    .line 1525
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    :cond_a
    const-string v4, "uid-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1526
    const-string v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1527
    .local v28, "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1529
    .local v24, "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1530
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1557
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v28    # "uid":I
    .end local v29    # "version":I
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1532
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "policy":I
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v28    # "uid":I
    .restart local v29    # "version":I
    :cond_b
    :try_start_7
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1534
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_c
    const-string v4, "app-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1535
    const-string v4, "appId"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1536
    .local v18, "appId":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1539
    .restart local v24    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v28

    .line 1540
    .restart local v28    # "uid":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1541
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 1543
    :cond_d
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1557
    .end local v18    # "appId":I
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v28    # "uid":I
    :cond_e
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2396
    :goto_0
    return-void

    .line 2390
    :catch_0
    move-exception v0

    .line 2392
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2393
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private sendPolicyCreatedBroadcast()V
    .locals 3

    .prologue
    .line 2499
    const-string v1, "NetworkPolicy"

    const-string v2, "sendPolicyCreatedBroadcast ACTION_POLICY_CREATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2501
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2502
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2503
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2504
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 2378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2385
    :goto_0
    return-void

    .line 2379
    :catch_0
    move-exception v0

    .line 2381
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem setting interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2382
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(ILandroid/net/NetworkTemplate;Z)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "enabled"    # Z

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1098
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1104
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1106
    .local v0, "slotId":I
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPolicyDataEnableForSubscriber:subId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-virtual {v1, p1, p3}, Landroid/telephony/TelephonyManager;->setPolicyDataEnableForSubscriber(IZ)V

    goto :goto_0

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 2400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2407
    :goto_0
    return-void

    .line 2401
    :catch_0
    move-exception v0

    .line 2403
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2404
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    invoke-static/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    :cond_0
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 2166
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2167
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2168
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    if-gt v3, v4, :cond_0

    .line 2169
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2170
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2167
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2173
    :cond_1
    return-void
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2151
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2158
    monitor-exit v1

    .line 2159
    return-void

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1566
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1570
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1575
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1566
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2479
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 4
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1806
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNetworkPolicyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1809
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x7

    iget-object v2, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1810
    const-string v1, "NetworkPolicy"

    const-string v2, " Error!! addNetworkPolicyLocked( MATCH_WIFI_WILDCARD )"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_0
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 1813
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 1814
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1669
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 1670
    if-eq v0, p2, :cond_1

    .line 1671
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 1673
    :cond_1
    monitor-exit v2

    .line 1674
    return-void

    .line 1673
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 355
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 356
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 359
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 360
    return-void
.end method

.method computeUidStateLocked(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2124
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 2127
    .local v4, "pidState":Landroid/util/SparseIntArray;
    const/16 v7, 0xd

    .line 2128
    .local v7, "uidState":I
    if-eqz v4, :cond_1

    .line 2129
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 2130
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 2131
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2132
    .local v6, "state":I
    if-ge v6, v7, :cond_0

    .line 2133
    move v7, v6

    .line 2130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2138
    .end local v0    # "i":I
    .end local v5    # "size":I
    .end local v6    # "state":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v11, 0xd

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2139
    .local v3, "oldUidState":I
    if-eq v3, v7, :cond_2

    .line 2141
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    if-gt v3, v10, :cond_3

    move v2, v8

    .line 2143
    .local v2, "oldForeground":Z
    :goto_1
    iget v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    if-gt v7, v10, :cond_4

    move v1, v8

    .line 2144
    .local v1, "newForeground":Z
    :goto_2
    if-eq v2, v1, :cond_2

    .line 2145
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2148
    .end local v1    # "newForeground":Z
    .end local v2    # "oldForeground":Z
    :cond_2
    return-void

    :cond_3
    move v2, v9

    .line 2142
    goto :goto_1

    .restart local v2    # "oldForeground":Z
    :cond_4
    move v1, v9

    .line 2143
    goto :goto_2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    const-string v17, "NetworkPolicy"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2004
    .local v5, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v15, v0

    invoke-direct {v2, v15}, Landroid/util/ArraySet;-><init>(I)V

    .line 2005
    .local v2, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v3, v7

    .line 2006
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2005
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2009
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2010
    :try_start_0
    const-string v15, "--unsnooze"

    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2011
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    .line 2012
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2011
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2015
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2016
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2017
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2019
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2021
    const-string v15, "Cleared snooze timestamps"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    monitor-exit v16

    .line 2102
    :goto_2
    return-void

    .line 2025
    .end local v6    # "i":I
    :cond_2
    const-string v15, "Restrict background: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2026
    const-string v15, "Restrict power: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2027
    const-string v15, "Current foreground state: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2028
    const-string v15, "Network policies:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2030
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2033
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2035
    const-string v15, "Metered ifaces: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const-string v15, "Policy for UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2039
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 2040
    .local v12, "size":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_4

    .line 2041
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 2042
    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2043
    .local v10, "policy":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2045
    const-string v15, " policy="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    invoke-static {v5, v10}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 2047
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2040
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2049
    .end local v10    # "policy":I
    .end local v14    # "uid":I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2051
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 2052
    if-lez v12, :cond_6

    .line 2053
    const-string v15, "Power save whitelist app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2055
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_5

    .line 2056
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2058
    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2060
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2055
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2062
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2065
    :cond_6
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2066
    .local v8, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2069
    const-string v15, "Status for known UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2071
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 2072
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_a

    .line 2073
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 2074
    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 2078
    .local v13, "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2080
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    if-gt v13, v15, :cond_7

    const-string v15, " (fg)"

    :goto_7
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    const-string v15, " pids="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 2084
    .local v4, "foregroundIndex":I
    if-gez v4, :cond_8

    .line 2085
    const-string v15, "UNKNOWN"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    :goto_8
    const-string v15, " rules="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    .line 2092
    .local v11, "rulesIndex":I
    if-gez v11, :cond_9

    .line 2093
    const-string v15, "UNKNOWN"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    :goto_9
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2072
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2080
    .end local v4    # "foregroundIndex":I
    .end local v11    # "rulesIndex":I
    :cond_7
    const-string v15, " (bg)"

    goto :goto_7

    .line 2087
    .restart local v4    # "foregroundIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseIntArray;

    invoke-static {v5, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpSparseIntArray(Ljava/io/PrintWriter;Landroid/util/SparseIntArray;)V

    goto :goto_8

    .line 2101
    .end local v4    # "foregroundIndex":I
    .end local v6    # "i":I
    .end local v8    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v12    # "size":I
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2095
    .restart local v4    # "foregroundIndex":I
    .restart local v6    # "i":I
    .restart local v8    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v11    # "rulesIndex":I
    .restart local v12    # "size":I
    .restart local v13    # "state":I
    .restart local v14    # "uid":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    invoke-static {v5, v15}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_9

    .line 2100
    .end local v4    # "foregroundIndex":I
    .end local v11    # "rulesIndex":I
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_a
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2101
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 6

    .prologue
    .line 1818
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1822
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1823
    .local v2, "size":I
    new-array v1, v2, [Landroid/net/NetworkPolicy;

    .line 1824
    .local v1, "policies":[Landroid/net/NetworkPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1825
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v1, v0

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    :cond_0
    monitor-exit v4

    return-object v1

    .line 1828
    .end local v0    # "i":I
    .end local v1    # "policies":[Landroid/net/NetworkPolicy;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 1932
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1938
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveAppIdWhitelist()[I
    .locals 6

    .prologue
    .line 1731
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1734
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1735
    .local v2, "size":I
    new-array v0, v2, [I

    .line 1736
    .local v0, "appids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1737
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1739
    :cond_0
    monitor-exit v4

    return-object v0

    .line 1740
    .end local v0    # "appids":[I
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1916
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 1917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 1714
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1717
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1719
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1720
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1721
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 1722
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1718
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 1726
    return-object v3

    .line 1725
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v3, 0x1

    .line 1975
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 1978
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1994
    :cond_0
    :goto_0
    return v3

    .line 1983
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1984
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 1985
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    if-eqz v1, :cond_2

    .line 1988
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 1985
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1990
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1991
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 1994
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 2441
    :cond_0
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 1867
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1868
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 1869
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1871
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 1872
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 1873
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1892
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1876
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1884
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1878
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 1887
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1889
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1892
    monitor-exit v4

    .line 1893
    return-void

    .line 1881
    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1775
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1748
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 1751
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1752
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1753
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1754
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1751
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1758
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 1759
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 1760
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1761
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1759
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1763
    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1765
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1681
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1684
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1686
    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    .line 1687
    if-eq v0, p2, :cond_1

    .line 1688
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 1690
    :cond_1
    monitor-exit v2

    .line 1691
    return-void

    .line 1690
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1787
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1790
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1792
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    :try_start_0
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1793
    .local v3, "policy":Landroid/net/NetworkPolicy;
    const/4 v4, 0x7

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 1794
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "unexpected template in setNetworkPolicies"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1802
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1792
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1797
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1802
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1803
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 4
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1897
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1900
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1901
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1904
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1905
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1909
    return-void

    .line 1905
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1907
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1651
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1653
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 1654
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 1656
    :cond_1
    monitor-exit v2

    .line 1657
    return-void

    .line 1656
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1856
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1860
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1864
    return-void

    .line 1862
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 26

    .prologue
    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    .line 364
    const-string v21, "NetworkPolicy"

    const-string v22, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 370
    .local v13, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 371
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v17

    .line 372
    .local v17, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v7

    .line 373
    .local v7, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_2

    .line 374
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .local v12, "pkg":Ljava/lang/String;
    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 377
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 384
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-class v21, Landroid/os/PowerManagerInternal;

    invoke-static/range {v21 .. v21}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v21, v0

    new-instance v23, Lcom/android/server/net/NetworkPolicyManagerService$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 403
    :cond_3
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 406
    :cond_4
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 411
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 420
    :goto_3
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 421
    .local v14, "screenFilter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    new-instance v8, Landroid/content/IntentFilter;

    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v8, "connFilter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const-string v23, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 432
    new-instance v10, Landroid/content/IntentFilter;

    const-string v21, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 433
    .local v10, "mSimFilter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v11, "packageFilter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v21, "package"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/IntentFilter;

    const-string v24, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 447
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v18, "userFilter":Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v21, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 453
    new-instance v16, Landroid/content/IntentFilter;

    const-string v21, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v16, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const-string v23, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 458
    new-instance v6, Landroid/content/IntentFilter;

    const-string v21, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const-string v23, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    new-instance v15, Landroid/content/IntentFilter;

    const-string v21, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 463
    .local v15, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const-string v23, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    new-instance v19, Landroid/content/IntentFilter;

    const-string v21, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 468
    .local v19, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 471
    new-instance v20, Landroid/content/IntentFilter;

    const-string v21, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    .local v20, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 406
    .end local v6    # "allowFilter":Landroid/content/IntentFilter;
    .end local v7    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "connFilter":Landroid/content/IntentFilter;
    .end local v9    # "i":I
    .end local v10    # "mSimFilter":Landroid/content/IntentFilter;
    .end local v11    # "packageFilter":Landroid/content/IntentFilter;
    .end local v14    # "screenFilter":Landroid/content/IntentFilter;
    .end local v15    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v16    # "statsFilter":Landroid/content/IntentFilter;
    .end local v17    # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v18    # "userFilter":Landroid/content/IntentFilter;
    .end local v19    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v20    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v21

    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v21

    .line 413
    .restart local v7    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v17    # "sysConfig":Lcom/android/server/SystemConfig;
    :catch_0
    move-exception v21

    goto/16 :goto_3

    .line 380
    .restart local v12    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_2
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1783
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 20

    .prologue
    .line 1062
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1068
    .local v8, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    .line 1069
    .local v10, "defaultSubId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_4

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1071
    .local v14, "policy":Landroid/net/NetworkPolicy;
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " checking policy:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-wide v2, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v2, v2, v18

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1074
    :cond_0
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(ILandroid/net/NetworkTemplate;Z)V

    .line 1069
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1078
    :cond_1
    invoke-static {v8, v9, v14}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1079
    .local v4, "start":J
    move-wide v6, v8

    .line 1080
    .local v6, "end":J
    iget-object v3, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 1083
    .local v16, "totalBytes":J
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v13, 0x1

    .line 1085
    .local v13, "overLimitWithoutSnooze":Z
    :goto_2
    if-nez v13, :cond_3

    const/4 v12, 0x1

    .line 1087
    .local v12, "networkEnabled":Z
    :goto_3
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(ILandroid/net/NetworkTemplate;Z)V

    goto :goto_1

    .line 1083
    .end local v12    # "networkEnabled":Z
    .end local v13    # "overLimitWithoutSnooze":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 1085
    .restart local v13    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1089
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v13    # "overLimitWithoutSnooze":Z
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 46

    .prologue
    .line 1122
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/16 v30, 0x0

    .line 1129
    .local v30, "mmsifacename":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v40

    .line 1140
    .local v40, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_3

    const/16 v33, 0x1

    .line 1144
    .local v33, "powerSave":Z
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    array-length v4, v0

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1145
    .local v12, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v0, v40

    array-length v4, v0

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1146
    .local v13, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, v40

    .local v10, "arr$":[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-object v39, v10, v19

    .line 1147
    .local v39, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v20

    .line 1150
    .local v20, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 1151
    .local v11, "baseIface":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 1152
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    if-eqz v33, :cond_0

    .line 1154
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_0
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1158
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked() TYPE_MOBILE_MMS"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v30

    .line 1160
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "updateNetworkRulesLocked() mmsifacename="

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_1
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v38

    .line 1168
    .local v38, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v19    # "i$":I
    .local v18, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/LinkProperties;

    .line 1169
    .local v37, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v36

    .line 1170
    .local v36, "stackedIface":Ljava/lang/String;
    if-eqz v36, :cond_2

    .line 1171
    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    if-eqz v33, :cond_2

    .line 1173
    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1130
    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v11    # "baseIface":Ljava/lang/String;
    .end local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "ident":Landroid/net/NetworkIdentity;
    .end local v26    # "len$":I
    .end local v33    # "powerSave":Z
    .end local v36    # "stackedIface":Ljava/lang/String;
    .end local v37    # "stackedLink":Landroid/net/LinkProperties;
    .end local v38    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v39    # "state":Landroid/net/NetworkState;
    .end local v40    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v14

    .line 1294
    :goto_3
    return-void

    .line 1140
    .restart local v40    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 1146
    .restart local v10    # "arr$":[Landroid/net/NetworkState;
    .restart local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "len$":I
    .restart local v33    # "powerSave":Z
    .restart local v39    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v18, v19, 0x1

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .restart local v19    # "i$":I
    goto/16 :goto_1

    .line 1181
    .end local v39    # "state":Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 1183
    .local v23, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_4
    if-ltz v17, :cond_9

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/NetworkPolicy;

    .line 1186
    .local v32, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1187
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .local v25, "j":I
    :goto_5
    if-ltz v25, :cond_7

    .line 1188
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 1189
    .local v21, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1190
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "add iface for policy:"

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_6
    add-int/lit8 v25, v25, -0x1

    goto :goto_5

    .line 1195
    .end local v21    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1196
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1197
    .local v24, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .end local v24    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 1201
    .end local v25    # "j":I
    .end local v32    # "policy":Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v28, 0x7fffffffffffffffL

    .line 1202
    .local v28, "lowestRule":J
    new-instance v31, Landroid/util/ArraySet;

    move-object/from16 v0, v40

    array-length v4, v0

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1206
    .local v31, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1207
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v19    # "i$":I
    :goto_6
    if-ltz v17, :cond_17

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/NetworkPolicy;

    .line 1209
    .restart local v32    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1213
    .restart local v24    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1214
    move-object/from16 v0, v32

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1215
    .local v6, "start":J
    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v42

    .line 1222
    .local v42, "totalBytes":J
    :goto_7
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "applying policy "

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v41, " to ifaces "

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v44, -0x1

    cmp-long v4, v4, v44

    if-eqz v4, :cond_e

    const/16 v16, 0x1

    .line 1227
    .local v16, "hasWarning":Z
    :goto_8
    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v44, -0x1

    cmp-long v4, v4, v44

    if-eqz v4, :cond_f

    const/4 v15, 0x1

    .line 1228
    .local v15, "hasLimit":Z
    :goto_9
    if-nez v15, :cond_a

    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_14

    .line 1230
    :cond_a
    if-nez v15, :cond_10

    .line 1233
    const-wide v34, 0x7fffffffffffffffL

    .line 1245
    .local v34, "quotaBytes":J
    :goto_a
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    .line 1247
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_b
    move-object/from16 v10, v24

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    aget-object v22, v10, v18

    .line 1251
    .local v22, "iface":Ljava/lang/String;
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12

    .line 1250
    :cond_c
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1217
    .end local v6    # "start":J
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v18    # "i$":I
    .end local v22    # "iface":Ljava/lang/String;
    .end local v34    # "quotaBytes":J
    .end local v42    # "totalBytes":J
    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    .line 1218
    .restart local v6    # "start":J
    const-wide/16 v42, 0x0

    .restart local v42    # "totalBytes":J
    goto/16 :goto_7

    .line 1226
    :cond_e
    const/16 v16, 0x0

    goto :goto_8

    .line 1227
    .restart local v16    # "hasWarning":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .line 1234
    .restart local v15    # "hasLimit":Z
    :cond_10
    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_11

    .line 1237
    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_a

    .line 1242
    .end local v34    # "quotaBytes":J
    :cond_11
    const-wide/16 v4, 0x1

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v42

    move-wide/from16 v0, v44

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v34

    .restart local v34    # "quotaBytes":J
    goto :goto_a

    .line 1252
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v18    # "i$":I
    .restart local v22    # "iface":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1253
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mmsifacename set quota mms ifacename="

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-wide v34, 0x7fffffffffffffffL

    .line 1256
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1258
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1259
    if-eqz v33, :cond_c

    .line 1260
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1266
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v22    # "iface":Ljava/lang/String;
    .end local v34    # "quotaBytes":J
    :cond_14
    if-eqz v16, :cond_15

    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_15

    .line 1267
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    .line 1269
    :cond_15
    if-eqz v15, :cond_16

    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_16

    .line 1270
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    .line 1207
    :cond_16
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    .line 1274
    .end local v6    # "start":J
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v24    # "ifaces":[Ljava/lang/String;
    .end local v32    # "policy":Landroid/net/NetworkPolicy;
    .end local v42    # "totalBytes":J
    :cond_17
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_d
    if-ltz v17, :cond_18

    .line 1275
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1276
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1277
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1278
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1274
    add-int/lit8 v17, v17, -0x1

    goto :goto_d

    .line 1281
    .end local v22    # "iface":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_e
    if-ltz v17, :cond_1a

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1286
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1287
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1284
    :cond_19
    add-int/lit8 v17, v17, -0x1

    goto :goto_e

    .line 1290
    .end local v22    # "iface":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    .line 1293
    .local v27, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method

.method updateNotificationsLocked()V
    .locals 20

    .prologue
    .line 728
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNotificationsLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v10, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v10, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 732
    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v12

    .line 739
    .local v12, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    .line 740
    .local v11, "defaultSubId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_4

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 743
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(ILandroid/net/NetworkTemplate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 740
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 744
    :cond_1
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    invoke-static {v12, v13, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 747
    .local v6, "start":J
    move-wide v8, v12

    .line 748
    .local v8, "end":J
    iget-object v5, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v18

    .line 750
    .local v18, "totalBytes":J
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 751
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 752
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 754
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    iget-object v4, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 759
    :cond_3
    iget-object v4, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 761
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 762
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 768
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v18    # "totalBytes":J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_5

    .line 769
    const-string v4, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 773
    :cond_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_2
    if-ltz v14, :cond_7

    .line 774
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 775
    .local v16, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 773
    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 779
    .end local v16    # "tag":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 11
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 2180
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2181
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 2186
    .local v6, "um":Landroid/os/UserManager;
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    :goto_0
    iput v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCurForegroundState:I

    .line 2191
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2192
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2195
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2196
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2197
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2198
    .local v5, "uid":I
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_1

    .line 2186
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v9, 0x2

    goto :goto_0

    .line 2203
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/16 v9, 0x3f5

    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2204
    const/16 v9, 0x3fb

    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2207
    if-eqz p1, :cond_3

    .line 2208
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2211
    :cond_3
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2224
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2270
    :goto_0
    return-void

    .line 2226
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2227
    .local v2, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v1

    .line 2230
    .local v1, "uidForeground":Z
    const/4 v3, 0x0

    .line 2231
    .local v3, "uidRules":I
    if-nez v1, :cond_3

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :cond_1
    :goto_1
    invoke-static {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_2
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_2

    move v0, v5

    .line 2259
    .local v0, "rejectMetered":Z
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 2262
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 2266
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v5, p1, v1}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2234
    .end local v0    # "rejectMetered":Z
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_4

    .line 2235
    if-nez v1, :cond_1

    .line 2237
    const/4 v3, 0x1

    goto :goto_1

    .line 2239
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v6, :cond_1

    .line 2240
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 2241
    .local v4, "whitelisted":Z
    if-nez v4, :cond_1

    if-nez v1, :cond_1

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_1

    .line 2246
    const/4 v3, 0x1

    goto :goto_1

    .line 2255
    .end local v4    # "whitelisted":Z
    :cond_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2
.end method

.method writePolicyLocked()V
    .locals 12

    .prologue
    .line 1578
    const-string v9, "NetworkPolicy"

    const-string v10, "writePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v1, 0x0

    .line 1582
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1584
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1585
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1586
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1588
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1589
    const-string v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1590
    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1593
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1594
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 1595
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1597
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1599
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1600
    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1601
    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1604
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1605
    const/4 v9, 0x0

    const-string v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1607
    :cond_1
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1608
    const/4 v9, 0x0

    const-string v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1609
    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1610
    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1611
    const-string v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1612
    const-string v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1613
    const-string v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1614
    const-string v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1615
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "subscriberId":Ljava/lang/String;
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 1620
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1621
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1624
    .local v5, "policy":I
    if-nez v5, :cond_3

    .line 1619
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1626
    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1627
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1628
    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1629
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1636
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 1638
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1641
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1632
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v9, 0x0

    :try_start_1
    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1633
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1635
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "totalBytes"    # J

    .prologue
    iget-object v1, p2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v1, Lcom/flyme/internal/R$drawable;->mz_stat_sys_traffic_warn:I

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method private flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "tag":Ljava/lang/String;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v18, "builder":Landroid/app/Notification$Builder;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v10, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, #android:color@system_notification_accent_color#t

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const-string v14, "android.net.action.USER_DELETE_SNOOZED_NOTIFICATION"

    .local v14, "ACTION_USER_DELETE_SNOOZED_NOTIFICATION":Ljava/lang/String;
    const-string v15, "android.net.NETWORK_POLICY"

    .local v15, "EXTRA_NETWORK_POLICY":Ljava/lang/String;
    const-string v16, "android.net.TYPE"

    .local v16, "EXTRA_TYPE":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .local v24, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v12, v6, [I

    .local v12, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v10, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    const/4 v13, 0x0

    move-object v8, v7

    invoke-interface/range {v6 .. v13}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "idReceived":[I
    :goto_1
    return-void

    :pswitch_0
    const v6, #android:string@data_usage_warning_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .local v26, "title":Ljava/lang/CharSequence;
    const v6, #android:string@data_usage_warning_body#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "body":Ljava/lang/CharSequence;
    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v25

    .local v25, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v25

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v27

    .local v27, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v27

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v25    # "snoozeIntent":Landroid/content/Intent;
    .end local v26    # "title":Ljava/lang/CharSequence;
    .end local v27    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v6, #android:string@data_usage_limit_body#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    const v20, #android:drawable@stat_notify_disabled_data#t

    .local v20, "icon":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    const/16 v26, 0x0

    .restart local v26    # "title":Ljava/lang/CharSequence;
    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v19, "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v21

    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v21

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v6, #android:string@data_usage_3g_limit_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v6, #android:string@data_usage_4g_limit_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v6, #android:string@data_usage_mobile_limit_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v6, #android:string@data_usage_wifi_limit_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    const v20, #android:drawable@stat_notify_error#t

    goto/16 :goto_2

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v20    # "icon":I
    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v22, p3, v10

    .local v22, "overBytes":J
    const v6, #android:string@data_usage_limit_snoozed_body#t

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v11, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    const/16 v26, 0x0

    .restart local v26    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19    # "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v21

    .restart local v21    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v21

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v6, #android:string@data_usage_3g_limit_snoozed_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v6, #android:string@data_usage_4g_limit_snoozed_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v6, #android:string@data_usage_mobile_limit_snoozed_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v26    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v6, #android:string@data_usage_wifi_limit_snoozed_title#t

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v22    # "overBytes":J
    .end local v26    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method static flymeInvokeMethodIsUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    return v0
.end method

.method private flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;J)V
    .locals 4
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"    # J

    .prologue
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .local v0, "template":Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
