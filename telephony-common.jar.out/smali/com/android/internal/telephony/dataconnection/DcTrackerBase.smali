.class public abstract Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.super Landroid/os/Handler;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_DEFAULT_MILLIS:I = 0x4e20

.field protected static final APN_FAIL_FAST_DELAY_DEFAULT_MILLIS:I = 0xbb8

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final BSP_PACKAGE:Z

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field private static final DEFAULT_MDC_INITIAL_RETRY:I = 0x1

.field protected static final DUALTALK_SPPORT:Z

.field protected static final FDN_CONTENT_PATH_WITH_SUB_ID:Ljava/lang/String; = "content://icc/fdn/subId/"

.field protected static final FDN_CONTENT_URI:Ljava/lang/String; = "content://icc/fdn"

.field protected static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field protected static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field protected static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-restart-trysetup"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM_EXTRA_TYPE:Ljava/lang/String; = "restart_trysetup_alarm_extra_type"

.field private static final MTK_DUAL_APN_SUPPORT:Z

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final OPERATOR_NUMERIC_CTLTE:Ljava/lang/String; = "46011"

.field protected static final OPERATOR_NUMERIC_HUTCHISON:Ljava/lang/String; = "45403"

.field protected static final OPERATOR_NUMERIC_VODAFONE:Ljava/lang/String; = "20404"

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field protected static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field protected static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field protected static final RADIO_TESTS:Z = false

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z = true

.field protected static final VDBG_STALL:Z = true

.field static mIsCleanupRequired:Z

.field protected static sEnableFailFastRefCounter:I


# instance fields
.field private PLMN_EMPTY_APN_PCSCF_SET:[Ljava/lang/String;

.field private PROPERTY_ICCID:[Ljava/lang/String;

.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field mAlarmManager:Landroid/app/AlarmManager;

.field protected mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mAutoAttachOnCreationConfig:Z

.field protected mCidActive:I

.field mCm:Landroid/net/ConnectivityManager;

.field protected mDataConnectionAcHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnabled:[Z

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected volatile mDataStallDetectionEnabled:Z

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

.field protected mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field protected mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mEnabledCount:I

.field protected volatile mFailFast:Z

.field private mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

.field protected mHasPendingInitialApnRequest:Z

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mInVoiceCall:Z

.field protected mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsDuringIrat:Z

.field protected mIsProvisioning:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPolicyDataEnabled:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field protected mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field mPrioritySortedApnContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field protected mProvisioningApnAlarmTag:I

.field protected mProvisioningUrl:Ljava/lang/String;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mRetryCount:I

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mSetDataAllowedReason:Ljava/lang/String;

.field protected mSettingProviderRetryCount:I

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mSvlteOperatorNumeric:Ljava/lang/String;

.field mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

.field protected mTxPkts:J

.field protected mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    sput-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    .line 241
    sput v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 350
    const-string v0, "ro.mtk_dt_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->DUALTALK_SPPORT:Z

    .line 364
    const-string v0, "ro.mtk_dtag_dual_apn_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MTK_DUAL_APN_SUPPORT:Z

    .line 375
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->BSP_PACKAGE:Z

    return-void

    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    :cond_1
    move v1, v2

    .line 364
    goto :goto_1
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 736
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyDataEnabled:Z

    .line 139
    const/16 v0, 0x11

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRetryCount:I

    .line 145
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 193
    const-string v0, "gsm.radioreset"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 223
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 231
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreationConfig:Z

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 269
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 284
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 346
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSetDataAllowedReason:Ljava/lang/String;

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "26201"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "44010"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->PLMN_EMPTY_APN_PCSCF_SET:[Ljava/lang/String;

    .line 399
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    .line 474
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    .line 737
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 738
    const-string v0, "DCT.constructor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 740
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v1, 0x42021

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v10

    .line 749
    .local v10, "phoneSubId":I
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v0, "com.android.internal.telephony.data-stall"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string v0, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 759
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyMobileDataChange(I)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v1, 0x0

    const-string v2, "net.def_data_on_boot"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 773
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 779
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "DcHandlerThread"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 780
    .local v7, "dcHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 781
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 782
    .local v6, "dcHandler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v0, p0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 783
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualApnSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MTK_DUAL_APN_SUPPORT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 788
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->BSP_PACKAGE:Z

    if-nez v0, :cond_1

    .line 790
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_1
    :goto_1
    return-void

    .line 759
    .end local v6    # "dcHandler":Landroid/os/Handler;
    .end local v7    # "dcHandlerThread":Landroid/os/HandlerThread;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 793
    .restart local v6    # "dcHandler":Landroid/os/Handler;
    .restart local v7    # "dcHandlerThread":Landroid/os/HandlerThread;
    .restart local v11    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 795
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "mTelephonyExt init fail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    return-object p1
.end method

.method private handleMobileDataSettingNotFound(Z)Z
    .locals 9
    .param p1, "retVal"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMobileDataSettingNotFound: initial retVal="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1080
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    .line 1082
    .local v3, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1083
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v3

    .line 1085
    :cond_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1086
    const-string v4, "invalid sub id, return data disabled"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1149
    :goto_0
    return v6

    .line 1090
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "mobile_data"

    if-eqz p1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move p1, v5

    .line 1093
    :goto_2
    if-nez p1, :cond_5

    .line 1094
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1095
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1148
    :cond_2
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMobileDataSettingNotFound: after retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move v6, p1

    .line 1149
    goto :goto_0

    :cond_3
    move v4, v6

    .line 1090
    goto :goto_1

    :cond_4
    move p1, v6

    goto :goto_2

    .line 1097
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1098
    .local v0, "defaultDataSubId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defaultDataSubId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1099
    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 1101
    if-ne v3, v0, :cond_6

    .line 1102
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1103
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1105
    const/4 p1, 0x1

    goto :goto_3

    .line 1107
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1108
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1110
    const/4 p1, 0x0

    goto :goto_3

    .line 1113
    :cond_7
    const/4 v2, 0x0

    .line 1114
    .local v2, "insertedStatus":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1115
    const-string v4, "N/A"

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1116
    shl-int v4, v5, v1

    or-int/2addr v2, v4

    .line 1114
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1119
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertedStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1120
    if-eq v2, v5, :cond_a

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    .line 1121
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_b

    .line 1122
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1123
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1125
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 1127
    :cond_b
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1128
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1130
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 1132
    :cond_c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 1133
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v5, :cond_d

    .line 1134
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1135
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 1139
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1140
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1142
    const/4 p1, 0x0

    goto/16 :goto_3
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1616
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 1590
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1610
    :goto_0
    :pswitch_0
    return-void

    .line 1596
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1601
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setInitialAttachApnForSvlte()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 2572
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDuringIrat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    const-string v0, "[IRAT_DcTracker] Pend setInitialApn due to IRAT is on-going"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mHasPendingInitialApnRequest:Z

    .line 2592
    :goto_0
    return-void

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    .line 2579
    .local v9, "ltePhone":Lcom/android/internal/telephony/PhoneBase;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] setInitialAttachApnForSvlte: apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_1

    .line 2582
    iget-object v0, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const-string v2, "IP"

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto :goto_0

    .line 2586
    :cond_1
    iget-object v0, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v10, "ims"

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method private setUserDataProperty(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2543
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 2544
    .local v1, "phoneId":I
    const-string v0, "0"

    .line 2546
    .local v0, "dataOnIccid":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2547
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v1

    .line 2550
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2551
    const-string v2, "invalid phone id, don\'t update"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2562
    :goto_0
    return-void

    .line 2555
    :cond_1
    if-eqz p1, :cond_2

    .line 2556
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserDataProperty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2560
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "persist.radio.mobile.data"

    invoke-static {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDataStallInfo()V
    .locals 14

    .prologue
    .line 2112
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v0, p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V

    .line 2113
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 2116
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " preTxRxSum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v10, v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iget-wide v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v4, v10, v12

    .line 2121
    .local v4, "sent":J
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v10, v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iget-wide v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v2, v10, v12

    .line 2129
    .local v2, "received":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 2130
    const-string v10, "updateDataStallInfo: IN/OUT"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2131
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2132
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2152
    :goto_0
    const/4 v1, 0x5

    .line 2153
    .local v1, "threshold":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v10, v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->udpTxPKts:J

    iget-wide v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->udpTxPKts:J

    sub-long v8, v10, v12

    .line 2154
    .local v8, "udpSent":J
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v10, v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->udpRxPKts:J

    iget-wide v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->udpRxPKts:J

    sub-long v6, v10, v12

    .line 2156
    .local v6, "udpReceived":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updataDataStallInfo:udpSent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".udpReceived="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2157
    int-to-long v10, v1

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRetryCount:I

    const/16 v11, 0xa

    if-ge v10, v11, :cond_4

    .line 2158
    const-string v10, "updateDataStallInfo:DNS error, we need re attach"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DctController;->disconnectAll()V

    .line 2160
    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRetryCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRetryCount:I

    .line 2167
    :goto_1
    return-void

    .line 2133
    .end local v1    # "threshold":I
    .end local v6    # "udpReceived":J
    .end local v8    # "udpSent":J
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_2

    .line 2134
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_1

    .line 2135
    iget-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    add-long/2addr v10, v4

    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2140
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDataStallInfo: OUT sent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mSentSinceLastRecv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2137
    :cond_1
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    goto :goto_2

    .line 2143
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    .line 2144
    const-string v10, "updateDataStallInfo: IN"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2145
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2146
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto/16 :goto_0

    .line 2148
    :cond_3
    const-string v10, "updateDataStallInfo: NONE"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2161
    .restart local v1    # "threshold":I
    .restart local v6    # "udpReceived":J
    .restart local v8    # "udpSent":J
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_5

    .line 2162
    const-string v10, "updateDataStallInfo:DNS revice ,clear retry count"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2163
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRetryCount:I

    goto :goto_1

    .line 2165
    :cond_5
    const-string v10, "updateDataStallInfo:Do nothing"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1513
    packed-switch p1, :pswitch_data_0

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1552
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1515
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 1517
    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 1519
    :pswitch_2
    const-string v0, "supl"

    goto :goto_0

    .line 1521
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 1523
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 1525
    :pswitch_5
    const-string v0, "ims"

    goto :goto_0

    .line 1527
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 1529
    :pswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 1531
    :pswitch_8
    const-string v0, "ia"

    goto :goto_0

    .line 1533
    :pswitch_9
    const-string v0, "emergency"

    goto :goto_0

    .line 1536
    :pswitch_a
    const-string v0, "dm"

    goto :goto_0

    .line 1538
    :pswitch_b
    const-string v0, "net"

    goto :goto_0

    .line 1540
    :pswitch_c
    const-string v0, "wap"

    goto :goto_0

    .line 1542
    :pswitch_d
    const-string v0, "cmmail"

    goto :goto_0

    .line 1544
    :pswitch_e
    const-string v0, "rcse"

    goto :goto_0

    .line 1546
    :pswitch_f
    const-string v0, "xcap"

    goto :goto_0

    .line 1548
    :pswitch_10
    const-string v0, "rcs"

    goto :goto_0

    .line 1513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1471
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    const/4 v0, 0x0

    .line 1508
    :goto_0
    return v0

    .line 1473
    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    const/4 v0, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    const/4 v0, 0x2

    goto :goto_0

    .line 1477
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1478
    const/4 v0, 0x3

    goto :goto_0

    .line 1479
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1480
    const/4 v0, 0x4

    goto :goto_0

    .line 1481
    :cond_4
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1482
    const/4 v0, 0x5

    goto :goto_0

    .line 1483
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    const/4 v0, 0x6

    goto :goto_0

    .line 1485
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1486
    const/4 v0, 0x7

    goto :goto_0

    .line 1487
    :cond_7
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1488
    const/16 v0, 0x8

    goto :goto_0

    .line 1489
    :cond_8
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1490
    const/16 v0, 0x9

    goto :goto_0

    .line 1492
    :cond_9
    const-string v0, "dm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1493
    const/16 v0, 0xa

    goto :goto_0

    .line 1494
    :cond_a
    const-string v0, "net"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1495
    const/16 v0, 0xc

    goto :goto_0

    .line 1496
    :cond_b
    const-string v0, "wap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1497
    const/16 v0, 0xb

    goto :goto_0

    .line 1498
    :cond_c
    const-string v0, "cmmail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1499
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1500
    :cond_d
    const-string v0, "rcse"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1501
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1502
    :cond_e
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1503
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1504
    :cond_f
    const-string v0, "rcs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1505
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1508
    :cond_10
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 1765
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1766
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1767
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1768
    return-void
.end method

.method public abstract clearDataBearer()V
.end method

.method protected abstract completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract deactivatePdpByCid(I)V
.end method

.method public decApnRefCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 844
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 804
    const-string v2, "DCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 806
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    goto :goto_0

    .line 808
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 809
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 810
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 811
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 812
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    if-eqz v2, :cond_2

    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFdnContentObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$FdnContentObserver;->unregister()V

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 820
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    .line 822
    return-void
.end method

.method protected doRecovery()V
    .locals 4

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 2048
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 2049
    .local v0, "recoveryAction":I
    packed-switch v0, :pswitch_data_0

    .line 2102
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2051
    :pswitch_0
    const v1, 0xc3c6

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2053
    const-string v1, "doRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2054
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2055
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2105
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2107
    .end local v0    # "recoveryAction":I
    :cond_0
    return-void

    .line 2058
    .restart local v0    # "recoveryAction":I
    :pswitch_1
    const v1, 0xc3c7

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2059
    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2060
    const-string v1, "pdpReset"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2061
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2064
    :pswitch_2
    const v1, 0xc3c8

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2066
    const-string v1, "doRecovery() re-register"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2073
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->disconnectAll()V

    .line 2075
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2078
    :pswitch_3
    const v1, 0xc3c9

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2080
    const-string v1, "restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2081
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2082
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto :goto_0

    .line 2091
    :pswitch_4
    const v1, 0xc3ca

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2092
    const-string v1, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2093
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    .line 2099
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2097
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2596
    const-string v17, "DcTrackerBase:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    const-string v17, " RADIO_TESTS=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mInternalDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUserDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " sPolicyDataEnabed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    const-string v17, " mDataEnabled:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 2603
    const-string v17, "  mDataEnabled[%d]=%b\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2602
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2605
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2606
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mEnabledCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRequestedApnType="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPhone="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActivity="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mState="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mTxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollPeriod="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallTxRxSum="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallAlarmTag="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallDetectionEanbled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mSentSinceLastRecv="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNoRecvPollCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mResolver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsWifiConnected="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mReconnectIntent="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mCidActive="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAutoAttachOnCreation="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsScreenOn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUniqueIdGenerator="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2628
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 2630
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_1

    .line 2631
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2635
    :goto_1
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 2637
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_2

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 2639
    .local v16, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataConnections: count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2641
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string v17, " *** mDataConnection[%d] \n"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2642
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 2633
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_1
    const-string v17, " mDcc=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2645
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_2
    const-string v17, "mDataConnections=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    :cond_3
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2649
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 2650
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 2651
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 2652
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnToDataConnectonId size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2654
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v17, " mApnToDataConnectonId[%s]=%d\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 2657
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v17, "mApnToDataConnectionId=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2659
    :cond_5
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2662
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_7

    .line 2663
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 2664
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnContexts size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2666
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 2668
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_6
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2673
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActiveApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2675
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_9

    .line 2676
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAllApnSettings size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 2678
    const-string v17, " mAllApnSettings[%d]: %s\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2677
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2670
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    const-string v17, " mApnContexts=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2680
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2684
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPreferredApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2685
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsPsRestricted="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsDisposed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIntentReceiver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataRoamingSettingObserver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2690
    return-void

    .line 2682
    :cond_9
    const-string v17, " mAllApnSettings=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 15

    .prologue
    .line 867
    const-string v13, "net.tethering.noprovisioning"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 868
    const-string v13, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 869
    const/4 v6, 0x0

    .line 921
    :goto_0
    return-object v6

    .line 871
    :cond_0
    const/4 v4, -0x1

    .line 872
    .local v4, "bearer":I
    const/4 v12, 0x0

    .line 873
    .local v12, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "tether_dun_apn"

    invoke-static {v13, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "apnData":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 875
    .local v7, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 876
    .local v11, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 877
    .local v6, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    .line 878
    .local v10, "operator":Ljava/lang/String;
    :goto_1
    iget v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v13, :cond_3

    .line 879
    const/4 v13, -0x1

    if-ne v4, v13, :cond_2

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 880
    :cond_2
    iget v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v13, v4, :cond_1

    .line 882
    :cond_3
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 883
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 884
    if-eqz v11, :cond_1

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v11, v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 887
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchDunApn: global TETHER_DUN_APN dunSetting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    .end local v10    # "operator":Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_1

    .line 892
    .restart local v10    # "operator":Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchDunApn: global TETHER_DUN_APN dunSetting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    .end local v6    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "operator":Ljava/lang/String;
    :cond_6
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 899
    .local v5, "c":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1070019

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "apnArrayData":[Ljava/lang/String;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_b

    aget-object v0, v3, v8

    .line 901
    .local v0, "apn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v6

    .line 902
    .restart local v6    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v6, :cond_8

    .line 903
    iget v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v13, :cond_9

    .line 904
    const/4 v13, -0x1

    if-ne v4, v13, :cond_7

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 905
    :cond_7
    iget v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eq v13, v4, :cond_9

    .line 900
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 907
    :cond_9
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 908
    if-eqz v11, :cond_8

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v11, v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 910
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchDunApn: config_tether_apndata mvno dunSetting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 915
    :cond_a
    move-object v12, v6

    goto :goto_3

    .line 920
    .end local v0    # "apn":Ljava/lang/String;
    .end local v6    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchDunApn: config_tether_apndata dunSetting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object v6, v12

    .line 921
    goto/16 :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 947
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 938
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 935
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 936
    .restart local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    .prologue
    .line 1453
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1454
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyDataEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1456
    .local v0, "result":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1458
    :cond_0
    return v0

    .line 1454
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getApnContexts()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    const/4 v0, -0x1

    return v0
.end method

.method public getDataEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1043
    const/4 v0, -0x1

    .line 1044
    .local v0, "phoneSubId":I
    const-string v5, "true"

    const-string v6, "ro.com.android.mobiledata"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1047
    .local v1, "retVal":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1048
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "mobile_data"

    if-eqz v1, :cond_0

    move v5, v3

    :goto_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 1063
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataEnabled: getInt retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    :goto_2
    move v4, v1

    .line 1074
    :goto_3
    return v4

    :cond_0
    move v5, v4

    .line 1048
    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    .line 1051
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    .line 1053
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1054
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v0

    .line 1057
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1059
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    :goto_4
    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_4

    .line 1065
    :catch_0
    move-exception v2

    .line 1066
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-eq v5, v3, :cond_5

    .line 1068
    const-string v3, "invalid sub id, return data disabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1072
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMobileDataSettingNotFound(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 986
    const-string v5, "true"

    const-string v6, "ro.com.android.dataroaming"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 988
    .local v0, "isDataRoamingEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v1

    .line 989
    .local v1, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 990
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v1

    .line 995
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 996
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "data_roaming"

    if-eqz v0, :cond_1

    move v5, v3

    :goto_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 1006
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataOnRoamingEnabled: phoneSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1009
    return v0

    :cond_1
    move v5, v4

    .line 996
    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    .line 999
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "data_roaming"

    invoke-static {v5, v6, v1}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2

    .line 1002
    :catch_0
    move-exception v2

    .line 1003
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataOnRoamingEnabled: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getInitialMaxRetry()I
    .locals 3

    .prologue
    .line 588
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    .line 592
    :cond_0
    const-string v1, "mdc_initial_max_retry"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 596
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mdc_initial_max_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1559
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1560
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1561
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1563
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1569
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1571
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1573
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 2031
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2033
    .local v0, "action":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2034
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .param p1, "forDefault"    # Z

    .prologue
    .line 1890
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 1892
    .local v0, "nt":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 1899
    :cond_0
    const-string v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    :goto_0
    return-object v1

    .line 1902
    :cond_1
    if-eqz p1, :cond_2

    .line 1903
    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1905
    :cond_2
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getSubId()J
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1196
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 1440
    const-string v12, "DATA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unidentified event msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1198
    :sswitch_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1200
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    goto :goto_0

    .line 1205
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableApn(II)V

    goto :goto_0

    .line 1209
    :sswitch_2
    const/4 v9, 0x0

    .line 1210
    .local v9, "reason":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1211
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9    # "reason":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1213
    .restart local v9    # "reason":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1217
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1221
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    goto :goto_0

    .line 1225
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    goto :goto_0

    .line 1229
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioAvailable()V

    goto :goto_0

    .line 1233
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1237
    :sswitch_8
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    .line 1238
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1242
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1246
    :sswitch_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-virtual {p0, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1251
    :sswitch_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-virtual {p0, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1256
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1260
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1265
    :sswitch_e
    const-string v12, "EVENT_VOICE_CALL_STARTED_PEER"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStartedPeer()V

    goto/16 :goto_0

    .line 1269
    :sswitch_f
    const-string v12, "EVENT_VOICE_CALL_ENDED_PEER"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEndedPeer()V

    goto/16 :goto_0

    .line 1274
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    :sswitch_11
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-nez v12, :cond_2

    const/4 v11, 0x0

    .line 1279
    .local v11, "tearDown":Z
    :goto_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v11, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    .end local v11    # "tearDown":Z
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 1283
    :sswitch_12
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v6, 0x1

    .line 1284
    .local v6, "enabled":Z
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .line 1283
    .end local v6    # "enabled":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1288
    :sswitch_13
    const-string v12, "EVENT_RESET_DONE"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_14
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v6, 0x1

    .line 1294
    .restart local v6    # "enabled":Z
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .line 1293
    .end local v6    # "enabled":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 1299
    :sswitch_15
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v8, 0x1

    .line 1300
    .local v8, "met":Z
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1302
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1303
    const-string v12, "apnType"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1304
    .local v2, "apnType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1305
    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1299
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "met":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 1311
    :sswitch_16
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v6, 0x1

    .line 1312
    .restart local v6    # "enabled":Z
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .line 1311
    .end local v6    # "enabled":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 1316
    :sswitch_17
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    const/4 v12, 0x1

    :goto_6
    add-int/2addr v12, v13

    sput v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1318
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1321
    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-gez v12, :cond_7

    .line 1322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " < 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1324
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1325
    const/4 v12, 0x0

    sput v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1327
    .end local v10    # "s":Ljava/lang/String;
    :cond_7
    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-lez v12, :cond_a

    const/4 v6, 0x1

    .line 1329
    .restart local v6    # "enabled":Z
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sEnableFailFastRefCounter="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1332
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eq v12, v6, :cond_0

    .line 1333
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 1334
    if-nez v6, :cond_b

    const/4 v12, 0x1

    :goto_8
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 1335
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v12, v13, :cond_c

    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1340
    :cond_8
    const-string v12, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 1342
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 1316
    .end local v6    # "enabled":Z
    :cond_9
    const/4 v12, -0x1

    goto/16 :goto_6

    .line 1327
    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .line 1334
    .restart local v6    # "enabled":Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_8

    .line 1344
    :cond_c
    const-string v12, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 1352
    .end local v6    # "enabled":Z
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1353
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_d

    .line 1355
    :try_start_0
    const-string v12, "provisioningUrl"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :cond_d
    :goto_9
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1362
    const-string v12, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1363
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1364
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 1356
    :catch_0
    move-exception v5

    .line 1357
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1358
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto :goto_9

    .line 1366
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1367
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1368
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startProvisioningApnAlarm()V

    goto/16 :goto_0

    .line 1373
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_19
    const-string v12, "EVENT_PROVISIONING_APN_ALARM"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1374
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1375
    .local v1, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1376
    iget v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-ne v12, v13, :cond_f

    .line 1377
    const-string v12, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1378
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1379
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 1380
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopProvisioningApnAlarm()V

    .line 1381
    const/4 v12, 0x1

    invoke-virtual {p0, v12, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 1384
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != arg1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1390
    :cond_10
    const-string v12, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    .end local v1    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_1a
    const-string v12, "CMD_IS_PROVISIONING_APN"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1398
    const/4 v2, 0x0

    .line 1399
    .restart local v2    # "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1400
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_11

    .line 1401
    const-string v12, "apnType"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1403
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1404
    const-string v12, "CMD_IS_PROVISIONING_APN: apnType is empty"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1405
    const/4 v7, 0x0

    .line 1413
    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v7, "isProvApn":Z
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_IS_PROVISIONING_APN: ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1414
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    const v14, 0x42026

    if-eqz v7, :cond_13

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v12}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1407
    .end local v7    # "isProvApn":Z
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_12
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    .restart local v7    # "isProvApn":Z
    goto :goto_a

    .line 1409
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v7    # "isProvApn":Z
    :catch_1
    move-exception v5

    .line 1410
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    const-string v12, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1411
    const/4 v7, 0x0

    .restart local v7    # "isProvApn":Z
    goto :goto_a

    .line 1414
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_13
    const/4 v12, 0x0

    goto :goto_b

    .line 1419
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v7    # "isProvApn":Z
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onUpdateIcc()V

    goto/16 :goto_0

    .line 1423
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 1427
    :sswitch_1d
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_14

    .line 1428
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 1429
    :cond_14
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-nez v12, :cond_0

    .line 1430
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 1436
    :sswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onClearDataBearer()V

    goto/16 :goto_0

    .line 1196
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_c
        0x42008 -> :sswitch_d
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_a
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_11
        0x4201a -> :sswitch_1c
        0x4201b -> :sswitch_12
        0x4201c -> :sswitch_13
        0x4201d -> :sswitch_10
        0x4201e -> :sswitch_14
        0x4201f -> :sswitch_15
        0x42020 -> :sswitch_16
        0x42021 -> :sswitch_1b
        0x42022 -> :sswitch_b
        0x42023 -> :sswitch_9
        0x42024 -> :sswitch_17
        0x42025 -> :sswitch_18
        0x42026 -> :sswitch_1a
        0x42027 -> :sswitch_19
        0x42028 -> :sswitch_1d
        0x421f9 -> :sswitch_e
        0x421fa -> :sswitch_f
        0x4220a -> :sswitch_1e
    .end sparse-switch
.end method

.method protected handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1955
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 1958
    return-void
.end method

.method protected handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1968
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 1970
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 1971
    return-void
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 926
    .local v0, "matched":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMatchedTetherApnSetting: APN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 927
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected ignoreDataRoaming(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, "ignoreDataRoaming":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v2, p1}, Lcom/mediatek/common/telephony/ITelephonyExt;->ignoreDataRoaming(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1020
    :goto_0
    if-eqz v1, :cond_0

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreDataRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1023
    :cond_0
    return v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "get ignoreDataRoaming fail!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public incApnRefCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 840
    return-void
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1637
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 858
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 859
    .local v0, "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 860
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    move v1, v2

    .line 860
    goto :goto_0

    .line 863
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1629
    if-nez p1, :cond_0

    .line 1630
    const/4 v0, 0x0

    .line 1632
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method protected isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2528
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isDuringIrat()Z
    .locals 1

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDuringIrat:Z

    return v0
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 1463
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1465
    .local v0, "result":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1467
    return v0

    .line 1464
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract isOnlyIMSorEIMSPdnConnected()Z
.end method

.method protected abstract isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
.end method

.method protected abstract isProvisioningApn(Ljava/lang/String;)Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1579
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1580
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1584
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method protected notifyMobileDataChange(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    .line 2532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMobileDataChange, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2536
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1621
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1622
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1626
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 724
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 726
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method protected onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentProvisioningApnAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2464
    const v1, 0x42027

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2466
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "provisioning.apn.alarm.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2467
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2468
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 654
    const-string v7, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "reason":Ljava/lang/String;
    const-string v7, "reconnect_alarm_extra_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "apnType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    .line 659
    .local v5, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v5

    .line 662
    :cond_0
    const-string v7, "subscription"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 664
    .local v3, "currSubId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActionIntentReconnectAlarm: currSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " phoneSubId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 668
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v3, v5, :cond_3

    .line 669
    :cond_1
    const-string v7, "receive ReconnectAlarm but subId incorrect, ignore"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 709
    :cond_2
    :goto_0
    return-void

    .line 673
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 676
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActionIntentReconnectAlarm: mState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDataConnectionAsyncChannels="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 681
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 682
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 685
    .local v1, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActionIntentReconnectAlarm: apnContext state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 687
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v7, :cond_4

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v7, :cond_6

    .line 690
    :cond_4
    const-string v7, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v4

    .line 693
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_5

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActionIntentReconnectAlarm: tearDown apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 697
    const-string v7, ""

    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 699
    :cond_5
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 700
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 705
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_1
    const v7, 0x42003

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 707
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 702
    :cond_6
    const-string v7, "onActionIntentReconnectAlarm: keep associated"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 712
    const-string v2, "restart_trysetup_alarm_extra_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 715
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionIntentRestartTrySetupAlarm: mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDataConnectionAsyncChannels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 719
    const v2, 0x42003

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onClearDataBearer()V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDataSetupCompleteError(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .param p1, "tag"    # I

    .prologue
    .line 2170
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 2172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2200
    :goto_0
    return-void

    .line 2176
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataStallInfo()V

    .line 2178
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_trigger_packet_count"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2182
    .local v0, "hangWatchdogTrigger":I
    const/4 v1, 0x0

    .line 2183
    .local v1, "suspectedStall":Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 2185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " do recovery action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2188
    const-string v2, "only IMS or EIMS Connected, skip onDataStallAlarm"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2199
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 2190
    :cond_1
    const/4 v1, 0x1

    .line 2191
    const v2, 0x42012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2195
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1661
    if-ne p2, v4, :cond_3

    .line 1662
    monitor-enter p0

    .line 1663
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1664
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1665
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1667
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1669
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1670
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1671
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    .line 1705
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1667
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1673
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1677
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1678
    .local v0, "didDisable":Z
    monitor-enter p0

    .line 1679
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1680
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1681
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1682
    const/4 v0, 0x1

    .line 1684
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1685
    if-eqz v0, :cond_1

    .line 1686
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 1687
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1688
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1693
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1694
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1700
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1701
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    goto :goto_0

    .line 1684
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 1714
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1724
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1727
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1729
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1730
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 1871
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1753
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 1754
    if-eqz p1, :cond_0

    .line 1755
    const-string v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1756
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1761
    :goto_0
    monitor-exit v1

    .line 1762
    return-void

    .line 1758
    :cond_0
    const-string v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1875
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v0

    .line 1876
    .local v0, "prevEnabled":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1877
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyDataEnabled:Z

    .line 1878
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1879
    if-nez v0, :cond_1

    .line 1880
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1886
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1887
    return-void

    .line 1882
    :cond_1
    const-string v1, "specificDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1886
    .end local v0    # "prevEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 14
    .param p1, "enabled"    # Z

    .prologue
    .line 1773
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1774
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eq v9, p1, :cond_11

    .line 1775
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1778
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 1779
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "mobile_data"

    if-eqz p1, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1791
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setUserDataProperty(Z)V

    .line 1792
    if-eqz p1, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyMobileDataChange(I)V

    .line 1795
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    .line 1796
    .local v8, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 1798
    .local v2, "defaultDataPhoneId":I
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 1800
    .local v1, "curPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1802
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v1

    .line 1804
    :cond_0
    if-eq v2, v1, :cond_6

    .line 1805
    const-string v9, "Current phone is not default phone"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1806
    monitor-exit v10

    .line 1868
    .end local v1    # "curPhoneId":I
    .end local v2    # "defaultDataPhoneId":I
    .end local v8    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_3
    return-void

    .line 1779
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1781
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    .line 1783
    .local v6, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1784
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v6

    .line 1786
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mobile_data"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz p1, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1867
    .end local v6    # "phoneSubId":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1786
    .restart local v6    # "phoneSubId":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 1792
    .end local v6    # "phoneSubId":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 1811
    .restart local v1    # "curPhoneId":I
    .restart local v2    # "defaultDataPhoneId":I
    .restart local v8    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_6
    const/4 v7, 0x0

    .line 1812
    .local v7, "readEnabled":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    .line 1813
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "mobile_data"

    if-eqz p1, :cond_7

    const/4 v9, 0x1

    :goto_5
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    const/4 v7, 0x1

    .line 1824
    :goto_6
    if-eq v7, p1, :cond_f

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    const/16 v11, 0xa

    if-ge v9, v11, :cond_f

    .line 1825
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSetUserDataEnabled(): readEnabled = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", mSettingProviderRetryCount = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1829
    const-string v9, "write to setting un-sync! re-send msg CMD_SET_USER_DATA_ENABLE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1830
    if-nez p1, :cond_d

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1832
    const v9, 0x4201e

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1833
    .local v5, "msg":Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v9, 0x1

    :goto_8
    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 1834
    const-wide/16 v12, 0x1f4

    invoke-virtual {p0, v5, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1836
    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 1837
    monitor-exit v10

    goto/16 :goto_3

    .line 1813
    .end local v5    # "msg":Landroid/os/Message;
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    .line 1816
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    .line 1818
    .restart local v6    # "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1819
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v6

    .line 1821
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mobile_data"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz p1, :cond_b

    const/4 v9, 0x1

    :goto_9
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    const/4 v7, 0x1

    :goto_a
    goto/16 :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_a

    .line 1830
    .end local v6    # "phoneSubId":I
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 1833
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 1839
    .end local v5    # "msg":Landroid/os/Message;
    :cond_f
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 1841
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_10

    .line 1843
    if-eqz p1, :cond_12

    .line 1844
    const-string v9, "roamingOn"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1850
    :cond_10
    :goto_b
    if-eqz p1, :cond_13

    .line 1851
    const-string v9, "dataEnabled"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1867
    .end local v1    # "curPhoneId":I
    .end local v2    # "defaultDataPhoneId":I
    .end local v7    # "readEnabled":Z
    .end local v8    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_11
    :goto_c
    monitor-exit v10

    goto/16 :goto_3

    .line 1846
    .restart local v1    # "curPhoneId":I
    .restart local v2    # "defaultDataPhoneId":I
    .restart local v7    # "readEnabled":Z
    .restart local v8    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_12
    const-string v9, "dataDisabled"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_b

    .line 1853
    :cond_13
    const-string v9, "ro.mtk_bsp_package"

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1854
    .local v4, "isBsp":Z
    if-eqz v4, :cond_14

    .line 1855
    const-string v9, "specificDisabled"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_c

    .line 1857
    :cond_14
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1858
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1859
    const-string v9, "specificDisabled"

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1860
    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    const-string v12, "specificDisabled"

    invoke-virtual {p0, v9, v11, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallEndedPeer()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract onVoiceCallStartedPeer()V
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2039
    return-void
.end method

.method protected resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1911
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 1912
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 1913
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1914
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    .line 1915
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 2271
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2283
    :goto_0
    return-void

    .line 2274
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 2276
    .local v0, "nextAction":I
    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$200(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2277
    const-string v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2280
    :cond_1
    const-string v1, "restartDataStallAlarm: stop then start."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2282
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected abstract restartRadio()V
.end method

.method sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCleanUpConnection: tearDown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apnContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2513
    const v1, 0x42018

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2514
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2515
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2516
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2517
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2518
    return-void

    :cond_0
    move v1, v2

    .line 2514
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    .prologue
    .line 2521
    const-string v1, "sendRestartRadio:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2522
    const v1, 0x4201a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2523
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2524
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1948
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1949
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1950
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1951
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1952
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1961
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1962
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1963
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1964
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1965
    return-void
.end method

.method setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 834
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 836
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1030
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: sendMessage: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataOnToMD(ZLandroid/os/Message;)V

    .line 1037
    return-void

    .line 1031
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 954
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    .line 955
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eq v3, p1, :cond_3

    .line 956
    if-eqz p1, :cond_0

    move v1, v2

    .line 959
    .local v1, "roaming":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 968
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataOnRoamingEnabled: set phoneSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 980
    .end local v1    # "roaming":I
    :goto_2
    return-void

    .line 956
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 962
    .restart local v1    # "roaming":I
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v0

    .line 965
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 976
    .end local v1    # "roaming":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataOnRoamingEnabled: unchanged phoneSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected setDataProfilesAsNeeded()V
    .locals 10

    .prologue
    .line 2437
    const-string v7, "setDataProfilesAsNeeded"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2438
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    .local v3, "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2441
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-eqz v7, :cond_0

    .line 2442
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    .line 2444
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    .line 2445
    .local v6, "isDup":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2446
    .local v2, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2447
    const/4 v6, 0x1

    .line 2451
    .end local v2    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_2
    if-nez v6, :cond_0

    .line 2452
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2456
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isDup":Z
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 2457
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V

    .line 2460
    .end local v3    # "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    :cond_4
    return-void
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1648
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1649
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1650
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1652
    return-void

    .line 1650
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected setInitialAttachApn()V
    .locals 28

    .prologue
    .line 2287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 2288
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2290
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInitialAttachApnForSvlte()V

    .line 2434
    :goto_0
    return-void

    .line 2292
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IRAT_DcTracker] DO NOT setInitialApn for CDMA: numeric = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2296
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IRAT_DcTracker] GSM setInitialAttachApn: numeric = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2299
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2304
    const-string v2, "46011"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSvlteOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2305
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInitialAttachApnForSvlte()V

    goto :goto_0

    .line 2312
    :cond_2
    const-string v2, "[IRAT_DcTracker] GSM ignore IA because SIM not loaded."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2314
    .local v27, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 2315
    .local v8, "operatorNumeric":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 2316
    :cond_3
    const-string v2, "setInitialApn: but no operator numeric"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2314
    .end local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 2324
    .end local v27    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    const/16 v25, 0x0

    .line 2325
    .local v25, "isIaApn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    .line 2326
    .local v26, "previousAttachApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2327
    .restart local v27    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v27, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 2328
    .restart local v8    # "operatorNumeric":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 2329
    :cond_6
    const-string v2, "setInitialApn: but no operator numeric"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2327
    .end local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    const-string v8, ""

    goto :goto_2

    .line 2333
    .restart local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    .line 2334
    .local v10, "dualApnPlmnList":[Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MTK_DUAL_APN_SUPPORT:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x8040003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 2339
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialApn: current attach Apn ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2340
    const/16 v24, 0x0

    .line 2341
    .local v24, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/16 v21, 0x0

    .line 2342
    .local v21, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/16 v22, 0x0

    .line 2344
    .local v22, "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialApn: E mPreferredApn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v22, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2348
    .restart local v22    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialApn: firstApnSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2353
    .local v20, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v4, "ia"

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-eqz v2, :cond_d

    .line 2356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialApn: iaApnSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2357
    move-object/from16 v24, v20

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->PLMN_EMPTY_APN_PCSCF_SET:[Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2359
    const/16 v25, 0x1

    .line 2377
    .end local v20    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2378
    if-eqz v24, :cond_e

    .line 2379
    const-string v2, "setInitialAttachApn: using iaApnSetting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2380
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2392
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v2, :cond_13

    .line 2393
    if-nez v8, :cond_11

    .line 2394
    const-string v2, "setInitialAttachApn: but no operator and no available apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2433
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialAttachApn: new attach Apn ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2362
    .restart local v20    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_d
    if-nez v21, :cond_a

    const-string v2, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialApn: defaultApnSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2366
    move-object/from16 v21, v20

    goto/16 :goto_3

    .line 2381
    .end local v20    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v2, :cond_f

    .line 2382
    const-string v2, "setInitialAttachApn: using mPreferredApn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_4

    .line 2384
    :cond_f
    if-eqz v21, :cond_10

    .line 2385
    const-string v2, "setInitialAttachApn: using defaultApnSetting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2386
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_4

    .line 2387
    :cond_10
    if-eqz v22, :cond_c

    .line 2388
    const-string v2, "setInitialAttachApn: using firstApnSetting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2389
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_4

    .line 2396
    :cond_11
    const-string v2, "setInitialAttachApn: X There in no available apn, use empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2398
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MTK_DUAL_APN_SUPPORT:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 2399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const-string v4, "IP"

    const/4 v5, -0x1

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2402
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v12, ""

    const-string v13, "IP"

    const/4 v14, -0x1

    const-string v15, ""

    const-string v16, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v8

    invoke-interface/range {v11 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto/16 :goto_5

    .line 2407
    :cond_13
    if-nez v8, :cond_14

    .line 2408
    const-string v2, "setInitialAttachApn: but no operator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2410
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 2412
    .local v3, "iaApn":Ljava/lang/String;
    if-eqz v25, :cond_15

    .line 2413
    const-string v2, "setInitialAttachApn: ESM flag false, change IA APN to empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2414
    const-string v3, ""

    .line 2416
    :cond_15
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MTK_DUAL_APN_SUPPORT:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v11, "ims"

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2424
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v13, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v14, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v15, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v4, "ims"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x0

    move-object v12, v3

    move-object/from16 v17, v8

    invoke-interface/range {v11 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto/16 :goto_5
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1745
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1746
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1747
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1748
    return v2

    .line 1746
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected startDataStallAlarm(Z)V
    .locals 12
    .param p1, "suspectedStall"    # Z

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v4

    .line 2206
    .local v4, "nextAction":I
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_4

    .line 2208
    :try_start_0
    const-string v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 2211
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 2212
    const-string v6, "startDataStallAlarm iTelEx is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2256
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_0
    return-void

    .line 2216
    .restart local v2    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    .line 2217
    .local v5, "slotId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isTestIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2218
    const-string v6, "startDataStallAlarm but skip due to test SIM is detected"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2221
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v5    # "slotId":I
    :catch_0
    move-exception v1

    .line 2222
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "startDataStallAlarm test SIM detection fail"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2228
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-nez v6, :cond_2

    if-nez p1, :cond_2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$200(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2229
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "data_stall_alarm_aggressive_delay_in_ms"

    const v8, 0xea60

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2238
    .local v0, "delayInMs":I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 2240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDataStallAlarm: tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit16 v7, v0, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2243
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.telephony.data-stall"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "data.stall.alram.tag"

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2245
    const-string v6, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getSubId()J

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2247
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 2249
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, v0

    add-long/2addr v8, v10

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2233
    .end local v0    # "delayInMs":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v8, 0x57e40

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delayInMs":I
    goto :goto_1

    .line 2253
    .end local v0    # "delayInMs":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method startNetStatPoll()V
    .locals 2

    .prologue
    .line 1920
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1923
    const-string v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    .line 1926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1932
    :cond_1
    return-void
.end method

.method protected startProvisioningApnAlarm()V
    .locals 10

    .prologue
    .line 2471
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "provisioning_apn_alarm_delay_in_ms"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2474
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 2476
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2477
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string v4, "persist.debug.prov_apn_alarm"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2479
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2484
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 2486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2489
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "provisioning.apn.alarm.tag"

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2491
    const-string v4, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getSubId()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2493
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 2495
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2497
    return-void

    .line 2480
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2481
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stopDataStallAlarm()V
    .locals 2

    .prologue
    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataStallAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataStallAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2263
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 2268
    :cond_0
    return-void
.end method

.method stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1938
    const-string v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1945
    :cond_0
    return-void
.end method

.method protected stopProvisioningApnAlarm()V
    .locals 2

    .prologue
    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopProvisioningApnAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProvsioningApnAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2504
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 2505
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 2509
    :cond_0
    return-void
.end method

.method public updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1978
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    .line 1979
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1980
    .local v6, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 1981
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 1982
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 1985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: curTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1988
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    cmp-long v1, v2, v12

    if-gtz v1, :cond_0

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    cmp-long v1, v2, v12

    if-lez v1, :cond_1

    .line 1989
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v10, v2, v4

    .line 1990
    .local v10, "sent":J
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v8, v2, v4

    .line 1993
    .local v8, "received":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: sent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1994
    cmp-long v1, v10, v12

    if-lez v1, :cond_2

    cmp-long v1, v8, v12

    if-lez v1, :cond_2

    .line 1995
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 2005
    .local v7, "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v7, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-eqz v1, :cond_1

    .line 2007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: newActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2008
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 2009
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2012
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8    # "received":J
    .end local v10    # "sent":J
    :cond_1
    return-void

    .line 1996
    .restart local v8    # "received":J
    .restart local v10    # "sent":J
    :cond_2
    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    cmp-long v1, v8, v12

    if-nez v1, :cond_3

    .line 1997
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 1998
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_3
    cmp-long v1, v10, v12

    if-nez v1, :cond_4

    cmp-long v1, v8, v12

    if-lez v1, :cond_4

    .line 1999
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 2001
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v2, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_1
    goto :goto_0

    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_1
.end method
