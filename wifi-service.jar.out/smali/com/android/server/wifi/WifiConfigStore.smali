.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$2;,
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH:  "

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW:   "

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI:  "

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID:  "

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID:  "

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS:  "

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE:  "

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG:  "

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY:  "

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY:  "

.field private static final DATE_KEY:Ljava/lang/String; = "DATE:  "

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW:  "

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32:  "

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL:  "

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD:  "

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL:   "

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE:  "

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN:  "

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ:  "

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST:  "

.field private static final LINK_KEY:Ljava/lang/String; = "LINK:  "

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI:  "

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID:  "

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS :   "

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION:  "

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES:  "

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES:  "

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES:  "

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS:   "

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION:  "

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY:  "

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI:  "

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH:  "

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE:  "

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED:  "

.field private static final SEPARATOR_KEY:Ljava/lang/String; = "\n"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID:  "

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS:  "

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON:  "

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS:  "

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24:  "

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5:  "

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24:  "

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5:  "

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24:  "

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5:  "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G:  "

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G:  "

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID:  "

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS:  "

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS:   "

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field private static final ipConfigFile:Ljava/lang/String;

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field private static final mMtkEapSimAka:Z

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;


# instance fields
.field public alwaysEnableScansWhileAssociated:I

.field public associatedFullScanBackoff:I

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public associatedPartialScanPeriodMilli:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public bandPreferenceBoostThreshold5:I

.field public bandPreferencePenaltyFactor5:I

.field public bandPreferencePenaltyThreshold5:I

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public enableAutoJoinScanWhenAssociated:Z

.field public enableAutoJoinWhenAssociated:Z

.field public enableChipWakeUpWhenAssociated:Z

.field public enableFullBandScanWhenAssociated:Z

.field public enableLinkDebouncing:Z

.field public enableRssiPollWhenAssociated:Z

.field public enableVerboseLogging:I

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field public mMtkSupportAutoSaveAssocConfig:Z

.field private mNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public maxNumActiveChannelsForPartialScans:I

.field public maxNumPassiveChannelsForPartialScans:I

.field public maxRxPacketForFullScans:I

.field public maxRxPacketForNetworkSwitching:I

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public maxTxPacketForNetworkSwitching:I

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public thresholdBadRssi24:I

.field public thresholdBadRssi5:I

.field public thresholdGoodRssi24:I

.field public thresholdGoodRssi5:I

.field public thresholdInitialAutoJoinAttemptMin24RSSI:I

.field public thresholdInitialAutoJoinAttemptMin5RSSI:I

.field public thresholdLowRssi24:I

.field public thresholdLowRssi5:I

.field public thresholdUnblacklistThreshold24Hard:I

.field public thresholdUnblacklistThreshold24Soft:I

.field public thresholdUnblacklistThreshold5Hard:I

.field public thresholdUnblacklistThreshold5Soft:I

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    sput-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 147
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/autojoinconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    .line 413
    const-string v0, "(.*)=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    .line 433
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eap"

    aput-object v1, v0, v2

    const-string v1, "phase2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "anonymous_identity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "client_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject_match"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "engine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "engine_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .line 478
    const-string v0, "ro.mtk_eap_sim_aka"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 482
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 322
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    .line 327
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 328
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 330
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    .line 331
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    .line 333
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    .line 334
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    .line 336
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    .line 338
    sget v0, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    .line 340
    sget v0, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    .line 343
    sget v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 344
    sget v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 345
    sget v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 346
    sget v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 347
    sget v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 348
    sget v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 350
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 351
    const v0, 0x493e0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 357
    const v0, 0xa4cb800

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 359
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 360
    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 361
    sget v0, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 362
    sget v0, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 364
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 365
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 366
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 367
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 369
    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 370
    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 371
    const v0, 0x493e0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 374
    const v0, 0x2bf20

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    .line 377
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 378
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 380
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    .line 382
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    .line 384
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    .line 386
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    .line 388
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 389
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 391
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    .line 393
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 394
    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 396
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 399
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 401
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 403
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 404
    const/16 v0, -0x55

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 462
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    .line 475
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 480
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    .line 483
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 484
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 486
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 488
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "associatedPartialScanPeriodMilli set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 500
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 504
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 506
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 508
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 511
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 516
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 519
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 542
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 545
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 557
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 561
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 564
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 570
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 573
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 577
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config_wifi_auto_save_support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 580
    return-void

    .line 491
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 492
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/BitSet;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    return-object v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 38
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 2728
    sget-boolean v34, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v34, :cond_0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2730
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    .line 2731
    .local v22, "netId":I
    const/16 v23, 0x0

    .line 2733
    .local v23, "newNetwork":Z
    const/16 v34, -0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 2737
    .local v26, "savedNetId":Ljava/lang/Integer;
    if-nez v26, :cond_2

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 2739
    .local v27, "test":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 2740
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 2741
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " was found, but no network Id"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2747
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v27    # "test":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v26, :cond_5

    .line 2748
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2761
    .end local v26    # "savedNetId":Ljava/lang/Integer;
    :cond_3
    :goto_0
    const/16 v32, 0x1

    .line 2765
    .local v32, "updateFailed":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_7

    .line 2766
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Setting BSSID for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    .line 2771
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set BSSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3092
    :goto_1
    if-eqz v32, :cond_2b

    .line 3093
    if-eqz v23, :cond_4

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 3095
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3097
    :cond_4
    new-instance v25, Lcom/android/server/wifi/NetworkUpdateResult;

    const/16 v34, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 3181
    .end local v32    # "updateFailed":Z
    :goto_2
    return-object v25

    .line 2750
    .restart local v26    # "savedNetId":Ljava/lang/Integer;
    :cond_5
    const/16 v23, 0x1

    .line 2751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v22

    .line 2752
    if-gez v22, :cond_6

    .line 2753
    const-string v34, "Failed to add a network!"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2754
    new-instance v25, Lcom/android/server/wifi/NetworkUpdateResult;

    const/16 v34, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_2

    .line 2756
    :cond_6
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative created netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2775
    .end local v26    # "savedNetId":Ljava/lang/Integer;
    .restart local v32    # "updateFailed":Z
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_8

    .line 2781
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set SSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2785
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2787
    .local v7, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "key_mgmt"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_9

    .line 2792
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set key_mgmt: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2797
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2799
    .local v9, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "proto"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_a

    .line 2804
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set proto: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2809
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2811
    .local v5, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "auth_alg"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 2816
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set auth_alg: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2821
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2824
    .local v8, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "pairwise"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_c

    .line 2829
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set pairwise: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2834
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2836
    .local v6, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "group"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 2841
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set group: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2848
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "*"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_e

    .line 2853
    const-string v34, "failed to set psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2857
    :cond_e
    const/16 v16, 0x0

    .line 2858
    .local v16, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    .line 2859
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 2862
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v17

    if-eqz v34, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v17

    const-string v35, "*"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v35, v35, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v36, v36, v17

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_f

    .line 2867
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set wep_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v35, v0

    aget-object v35, v35, v17

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2870
    :cond_f
    const/16 v16, 0x1

    .line 2859
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 2875
    .end local v17    # "i":I
    :cond_11
    if-eqz v16, :cond_12

    .line 2876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 2880
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2885
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_13

    .line 2889
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set priority: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2894
    :cond_13
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v34, v0

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v35, v0

    const-string v36, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v34, v0

    if-eqz v34, :cond_14

    const/16 v34, 0x1

    :goto_4
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move/from16 v1, v22

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_15

    .line 2898
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set hiddenSSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2894
    :cond_14
    const/16 v34, 0x0

    goto :goto_4

    .line 2903
    :cond_15
    const/16 v19, 0x0

    .line 2904
    .local v19, "isWapi":Z
    const/16 v24, 0x0

    .local v24, "p":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->size()I

    move-result v34

    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    .line 2905
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 2906
    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 2907
    const-string v34, "WifiConfigStore"

    const-string v35, "this is WAPI"

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const/16 v19, 0x1

    .line 2904
    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 2913
    :cond_17
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move/from16 v34, v0

    if-eqz v34, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "ieee80211w"

    const-string v36, "2"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_18

    .line 2917
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set requirePMF: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2922
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "update_identifier"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_19

    .line 2926
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set updateIdentifier: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2931
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v34, v0

    if-eqz v34, :cond_23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_23

    .line 2935
    :cond_1a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2937
    .local v14, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v14}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v34

    sget-object v35, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1b

    .line 2945
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": key store is locked"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2954
    :cond_1b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 2955
    .local v11, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v21

    .line 2957
    .local v21, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1c

    .line 2958
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to install keys"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2961
    .end local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2962
    .local v12, "e":Ljava/lang/IllegalStateException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " invalid config for key installation"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2967
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :cond_1c
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v15

    .line 2969
    .local v15, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2970
    .local v10, "anonymoustValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2971
    .local v13, "eapValue":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_22

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2972
    .local v20, "key":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 2973
    .local v33, "value":Ljava/lang/String;
    const-string v34, "password"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    if-eqz v33, :cond_1e

    const-string v34, "*"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2978
    :cond_1e
    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    const-string v34, "eap"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2981
    :cond_1f
    const-string v34, "anonymous_identity"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 2982
    move-object/from16 v10, v33

    .line 2983
    goto :goto_6

    .line 2984
    :cond_20
    const-string v34, "eap"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 2985
    move-object/from16 v13, v33

    .line 2986
    goto :goto_6

    .line 2988
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2992
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 2993
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2998
    .end local v20    # "key":Ljava/lang/String;
    .end local v33    # "value":Ljava/lang/String;
    :cond_22
    if-nez v13, :cond_25

    .line 2999
    if-nez v10, :cond_24

    .line 3043
    .end local v10    # "anonymoustValue":Ljava/lang/String;
    .end local v13    # "eapValue":Ljava/lang/String;
    .end local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_23
    sget-boolean v34, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    if-eqz v34, :cond_28

    .line 3044
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "imsi"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_27

    .line 3049
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set imsi: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3002
    .restart local v10    # "anonymoustValue":Ljava/lang/String;
    .restart local v13    # "eapValue":Ljava/lang/String;
    .restart local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_24
    const-string v34, "set anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3003
    const-string v28, "anonymous_identity"

    .line 3004
    .local v28, "tmpKey":Ljava/lang/String;
    move-object/from16 v30, v10

    .line 3005
    .local v30, "tmpValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 3007
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3008
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3014
    .end local v28    # "tmpKey":Ljava/lang/String;
    .end local v30    # "tmpValue":Ljava/lang/String;
    :cond_25
    const-string v34, "set eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3015
    const-string v29, "eap"

    .line 3016
    .local v29, "tmpKeyEap":Ljava/lang/String;
    move-object/from16 v31, v13

    .line 3017
    .local v31, "tmpValueEap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_26

    .line 3019
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3020
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3024
    :cond_26
    if-eqz v10, :cond_23

    .line 3027
    const-string v34, "set anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3028
    const-string v28, "anonymous_identity"

    .line 3029
    .restart local v28    # "tmpKey":Ljava/lang/String;
    move-object/from16 v30, v10

    .line 3030
    .restart local v30    # "tmpValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 3032
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3033
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3052
    .end local v10    # "anonymoustValue":Ljava/lang/String;
    .end local v13    # "eapValue":Ljava/lang/String;
    .end local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v28    # "tmpKey":Ljava/lang/String;
    .end local v29    # "tmpKeyEap":Ljava/lang/String;
    .end local v30    # "tmpValue":Ljava/lang/String;
    .end local v31    # "tmpValueEap":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "sim_slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_28

    .line 3057
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set simSlot: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3072
    :cond_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "pac_file"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_29

    .line 3077
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set pacFile: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3080
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "phase1"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2a

    .line 3085
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set phase1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3089
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 3107
    .end local v5    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v6    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v7    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v8    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v9    # "allowedProtocolsString":Ljava/lang/String;
    .end local v16    # "hasSetKey":Z
    .end local v19    # "isWapi":Z
    .end local v24    # "p":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 3108
    .restart local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v11, :cond_2d

    .line 3109
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    .end local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3110
    .restart local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v34, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3111
    sget-object v34, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3112
    move/from16 v0, v22

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3113
    if-eqz p1, :cond_2c

    .line 3115
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3116
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3117
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3118
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 3120
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 3121
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3122
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3123
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iput-object v0, v11, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 3126
    :cond_2c
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "created new config netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " uid="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3131
    :cond_2d
    if-ltz p2, :cond_2e

    .line 3132
    if-eqz v23, :cond_33

    .line 3133
    move/from16 v0, p2

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3139
    :cond_2e
    :goto_7
    if-eqz v23, :cond_2f

    .line 3140
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3143
    :cond_2f
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v34, v0

    const/16 v35, 0xc8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    .line 3146
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3147
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3148
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3150
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "remove deleted status netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3155
    :cond_30
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    .line 3157
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3160
    :cond_31
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_32

    iget-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v34, v0

    if-eqz v34, :cond_32

    .line 3163
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3164
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "remove ephemeral status netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3168
    :cond_32
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "will read network variables netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3170
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 3172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static {v11}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v25

    .line 3176
    .local v25, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 3177
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 3179
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_2

    .line 3135
    .end local v25    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_33
    move/from16 v0, p2

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_7
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4050
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 4051
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2717
    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, "tmp":Ljava/lang/String;
    const-string v1, "%x"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3744
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 3749
    :pswitch_0
    return v0

    .line 3744
    :sswitch_0
    const-string v3, "eap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "engine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6805be -> :sswitch_1
        0x18754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 650
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 653
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 661
    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 666
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    const-string v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 4138
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 4134
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 4095
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4097
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4099
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 4107
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 4123
    :goto_0
    return-void

    .line 4112
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 4113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4114
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4116
    if-eqz v0, :cond_1

    .line 4117
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4114
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4121
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 4102
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 4103
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4104
    :cond_0
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3995
    array-length v1, p2

    .line 3997
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 3999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4000
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4008
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 3999
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4006
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4008
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3975
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3976
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 3980
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 3982
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3983
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3987
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 3988
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3991
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 1706
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 1707
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1695
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1696
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    .line 1697
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    .line 1698
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1699
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 1703
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4128
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4129
    const/4 v0, 0x0

    .line 4130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4142
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4143
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4152
    const/4 v1, 0x1

    .line 4195
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x0

    .line 4488
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 4489
    .local v0, "certData":[B
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putting certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4495
    .end local v0    # "certData":[B
    :goto_0
    return v3

    .line 4492
    :catch_0
    move-exception v1

    .line 4493
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0

    .line 4494
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4495
    .local v2, "e2":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private readAutoJoinConfig()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2278
    const/4 v3, 0x0

    .line 2281
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_25

    .line 2283
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_27

    .line 2284
    if-eqz v2, :cond_0

    .line 2285
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_0
    const-string v6, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2288
    const-string v6, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2289
    .local v5, "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    .line 2291
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_20

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 2292
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2298
    .end local v5    # "st":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_3
    const-string v6, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2299
    const-string v6, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2300
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .line 2302
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_23

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    .line 2303
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enableFullBandScanWhenAssociated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2310
    .end local v5    # "st":Ljava/lang/String;
    :cond_2
    :goto_4
    :try_start_5
    const-string v6, "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2311
    const-string v6, "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2312
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v5

    .line 2314
    :try_start_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_24

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 2315
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2322
    .end local v5    # "st":Ljava/lang/String;
    :cond_3
    :goto_6
    :try_start_7
    const-string v6, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2323
    const-string v6, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2324
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v5

    .line 2326
    :try_start_8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_25

    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    .line 2327
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2334
    .end local v5    # "st":Ljava/lang/String;
    :cond_4
    :goto_8
    :try_start_9
    const-string v6, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2335
    const-string v6, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2336
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v5

    .line 2338
    :try_start_a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_26

    move v6, v7

    :goto_9
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    .line 2339
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 2346
    .end local v5    # "st":Ljava/lang/String;
    :cond_5
    :goto_a
    :try_start_b
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2347
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2349
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v5

    .line 2351
    :try_start_c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    .line 2352
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdInitialAutoJoinAttemptMin5RSSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 2359
    .end local v5    # "st":Ljava/lang/String;
    :cond_6
    :goto_b
    :try_start_d
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2360
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2362
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v5

    .line 2364
    :try_start_e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    .line 2365
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdInitialAutoJoinAttemptMin24RSSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 2372
    .end local v5    # "st":Ljava/lang/String;
    :cond_7
    :goto_c
    :try_start_f
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2373
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2374
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move-result-object v5

    .line 2376
    :try_start_10
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    .line 2377
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold5Hard = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 2383
    .end local v5    # "st":Ljava/lang/String;
    :cond_8
    :goto_d
    :try_start_11
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2384
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2385
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    move-result-object v5

    .line 2387
    :try_start_12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    .line 2388
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold5Soft = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 2394
    .end local v5    # "st":Ljava/lang/String;
    :cond_9
    :goto_e
    :try_start_13
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2395
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2396
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    move-result-object v5

    .line 2398
    :try_start_14
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    .line 2399
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold24Hard = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 2405
    .end local v5    # "st":Ljava/lang/String;
    :cond_a
    :goto_f
    :try_start_15
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2406
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2407
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    move-result-object v5

    .line 2409
    :try_start_16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    .line 2410
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold24Soft = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    .line 2417
    .end local v5    # "st":Ljava/lang/String;
    :cond_b
    :goto_10
    :try_start_17
    const-string v6, "THRESHOLD_GOOD_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2418
    const-string v6, "THRESHOLD_GOOD_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2419
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    move-result-object v5

    .line 2421
    :try_start_18
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 2422
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdGoodRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    .line 2428
    .end local v5    # "st":Ljava/lang/String;
    :cond_c
    :goto_11
    :try_start_19
    const-string v6, "THRESHOLD_LOW_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2429
    const-string v6, "THRESHOLD_LOW_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2430
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    move-result-object v5

    .line 2432
    :try_start_1a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 2433
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdLowRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 2439
    .end local v5    # "st":Ljava/lang/String;
    :cond_d
    :goto_12
    :try_start_1b
    const-string v6, "THRESHOLD_BAD_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2440
    const-string v6, "THRESHOLD_BAD_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2441
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    move-result-object v5

    .line 2443
    :try_start_1c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 2444
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdBadRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 2451
    .end local v5    # "st":Ljava/lang/String;
    :cond_e
    :goto_13
    :try_start_1d
    const-string v6, "THRESHOLD_GOOD_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2452
    const-string v6, "THRESHOLD_GOOD_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2453
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/EOFException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    move-result-object v5

    .line 2455
    :try_start_1e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 2456
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdGoodRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Ljava/io/EOFException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 2462
    .end local v5    # "st":Ljava/lang/String;
    :cond_f
    :goto_14
    :try_start_1f
    const-string v6, "THRESHOLD_LOW_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2463
    const-string v6, "THRESHOLD_LOW_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2464
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/EOFException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5

    move-result-object v5

    .line 2466
    :try_start_20
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 2467
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdLowRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Ljava/io/EOFException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_5

    .line 2473
    .end local v5    # "st":Ljava/lang/String;
    :cond_10
    :goto_15
    :try_start_21
    const-string v6, "THRESHOLD_BAD_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2474
    const-string v6, "THRESHOLD_BAD_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2475
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/EOFException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_5

    move-result-object v5

    .line 2477
    :try_start_22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 2478
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdBadRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_5

    .line 2485
    .end local v5    # "st":Ljava/lang/String;
    :cond_11
    :goto_16
    :try_start_23
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2486
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2487
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/EOFException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_5

    move-result-object v5

    .line 2489
    :try_start_24
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2490
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForNetworkSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_14
    .catch Ljava/io/EOFException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_3
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_5

    .line 2496
    .end local v5    # "st":Ljava/lang/String;
    :cond_12
    :goto_17
    :try_start_25
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2497
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2498
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_3
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_5

    move-result-object v5

    .line 2500
    :try_start_26
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2501
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForNetworkSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_15
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5

    .line 2508
    .end local v5    # "st":Ljava/lang/String;
    :cond_13
    :goto_18
    :try_start_27
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2509
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2510
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_27} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_3
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5

    move-result-object v5

    .line 2512
    :try_start_28
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2513
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForFullScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_16
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_5

    .line 2519
    .end local v5    # "st":Ljava/lang/String;
    :cond_14
    :goto_19
    :try_start_29
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2520
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2521
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/EOFException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_5

    move-result-object v5

    .line 2523
    :try_start_2a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2524
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForFullScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_17
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_3
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_5

    .line 2531
    .end local v5    # "st":Ljava/lang/String;
    :cond_15
    :goto_1a
    :try_start_2b
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2532
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2533
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/EOFException; {:try_start_2b .. :try_end_2b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_3
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_5

    move-result-object v5

    .line 2535
    :try_start_2c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2536
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_18
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_3
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_5

    .line 2542
    .end local v5    # "st":Ljava/lang/String;
    :cond_16
    :goto_1b
    :try_start_2d
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2543
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2544
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/EOFException; {:try_start_2d .. :try_end_2d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_3
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_5

    move-result-object v5

    .line 2546
    :try_start_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2547
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_19
    .catch Ljava/io/EOFException; {:try_start_2e .. :try_end_2e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_3
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_5

    .line 2554
    .end local v5    # "st":Ljava/lang/String;
    :cond_17
    :goto_1c
    :try_start_2f
    const-string v6, "WIFI_VERBOSE_LOGS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2555
    const-string v6, "WIFI_VERBOSE_LOGS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2556
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_5

    move-result-object v5

    .line 2558
    :try_start_30
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 2559
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enable verbose logs = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_1a
    .catch Ljava/io/EOFException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_3
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_5

    .line 2565
    .end local v5    # "st":Ljava/lang/String;
    :cond_18
    :goto_1d
    :try_start_31
    const-string v6, "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2566
    const-string v6, "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2567
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/EOFException; {:try_start_31 .. :try_end_31} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_3
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_5

    move-result-object v5

    .line 2569
    :try_start_32
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 2570
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: bandPreferenceBoostThreshold5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_1b
    .catch Ljava/io/EOFException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_3
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_5

    .line 2576
    .end local v5    # "st":Ljava/lang/String;
    :cond_19
    :goto_1e
    :try_start_33
    const-string v6, "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2577
    const-string v6, "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2578
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_33 .. :try_end_33} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_5

    move-result-object v5

    .line 2580
    :try_start_34
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    .line 2581
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: associatedScanPeriod = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_1c
    .catch Ljava/io/EOFException; {:try_start_34 .. :try_end_34} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_3
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_5

    .line 2587
    .end local v5    # "st":Ljava/lang/String;
    :cond_1a
    :goto_1f
    :try_start_35
    const-string v6, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2588
    const-string v6, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2589
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_35} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_5

    move-result-object v5

    .line 2591
    :try_start_36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 2592
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: associatedFullScanBackoff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_1d
    .catch Ljava/io/EOFException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_3
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_5

    .line 2598
    .end local v5    # "st":Ljava/lang/String;
    :cond_1b
    :goto_20
    :try_start_37
    const-string v6, "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2599
    const-string v6, "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2600
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_37 .. :try_end_37} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_3
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_5

    move-result-object v5

    .line 2602
    :try_start_38
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 2603
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: bandPreferencePenaltyThreshold5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_1e
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_38} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_3
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_5

    .line 2609
    .end local v5    # "st":Ljava/lang/String;
    :cond_1c
    :goto_21
    :try_start_39
    const-string v6, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2610
    const-string v6, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2611
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/EOFException; {:try_start_39 .. :try_end_39} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_3
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_5

    move-result-object v5

    .line 2613
    :try_start_3a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    .line 2614
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: alwaysEnableScansWhileAssociated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_1f
    .catch Ljava/io/EOFException; {:try_start_3a .. :try_end_3a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3a} :catch_3
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_5

    .line 2620
    .end local v5    # "st":Ljava/lang/String;
    :cond_1d
    :goto_22
    :try_start_3b
    const-string v6, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2621
    const-string v6, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2622
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/io/EOFException; {:try_start_3b .. :try_end_3b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_3
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_5

    move-result-object v5

    .line 2624
    :try_start_3c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 2625
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxNumPassiveChannelsForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_20
    .catch Ljava/io/EOFException; {:try_start_3c .. :try_end_3c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3c} :catch_3
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_5

    .line 2631
    .end local v5    # "st":Ljava/lang/String;
    :cond_1e
    :goto_23
    :try_start_3d
    const-string v6, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2632
    const-string v6, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2633
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/EOFException; {:try_start_3d .. :try_end_3d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_3d} :catch_3
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_5

    move-result-object v5

    .line 2635
    :try_start_3e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 2636
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxNumActiveChannelsForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_21
    .catch Ljava/io/EOFException; {:try_start_3e .. :try_end_3e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_3e} :catch_3
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_5

    .line 2283
    .end local v5    # "st":Ljava/lang/String;
    :cond_1f
    :goto_24
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .restart local v5    # "st":Ljava/lang/String;
    :cond_20
    move v6, v8

    .line 2291
    goto/16 :goto_1

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/EOFException; {:try_start_3f .. :try_end_3f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_3
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_5

    goto/16 :goto_2

    .line 2643
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 2644
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "ignore":Ljava/io/EOFException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_25
    if-eqz v3, :cond_21

    .line 2646
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_22

    .line 2647
    const/4 v3, 0x0

    .line 2665
    .end local v1    # "ignore":Ljava/io/EOFException;
    :cond_21
    :goto_26
    if-eqz v3, :cond_22

    .line 2667
    :try_start_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_24

    .line 2672
    :cond_22
    :goto_27
    return-void

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_23
    move v6, v8

    .line 2302
    goto/16 :goto_3

    .line 2305
    :catch_2
    move-exception v0

    .line 2306
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_42
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/EOFException; {:try_start_42 .. :try_end_42} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_42} :catch_3
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_5

    goto/16 :goto_4

    .line 2652
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v3, v4

    .line 2653
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "ignore":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_28
    if-eqz v3, :cond_21

    .line 2655
    :try_start_43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_23

    .line 2656
    const/4 v3, 0x0

    goto :goto_26

    .end local v1    # "ignore":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_24
    move v6, v8

    .line 2314
    goto/16 :goto_5

    .line 2317
    :catch_4
    move-exception v0

    .line 2318
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_44
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_44} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_44} :catch_3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_5

    goto/16 :goto_6

    .line 2661
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v3, v4

    .line 2662
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error parsing configuration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_26

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_25
    move v6, v8

    .line 2326
    goto/16 :goto_7

    .line 2329
    :catch_6
    move-exception v0

    .line 2330
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_45
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_26
    move v6, v8

    .line 2338
    goto/16 :goto_9

    .line 2341
    :catch_7
    move-exception v0

    .line 2342
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2354
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v0

    .line 2355
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2367
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v0

    .line 2368
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2379
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_a
    move-exception v0

    .line 2380
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2390
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_b
    move-exception v0

    .line 2391
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2401
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_c
    move-exception v0

    .line 2402
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 2412
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_d
    move-exception v0

    .line 2413
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2424
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_e
    move-exception v0

    .line 2425
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 2435
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_f
    move-exception v0

    .line 2436
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 2446
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_10
    move-exception v0

    .line 2447
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 2458
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_11
    move-exception v0

    .line 2459
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2469
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_12
    move-exception v0

    .line 2470
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 2480
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_13
    move-exception v0

    .line 2481
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 2492
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_14
    move-exception v0

    .line 2493
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 2503
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_15
    move-exception v0

    .line 2504
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2515
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_16
    move-exception v0

    .line 2516
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 2526
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_17
    move-exception v0

    .line 2527
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 2538
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_18
    move-exception v0

    .line 2539
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 2549
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_19
    move-exception v0

    .line 2550
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 2561
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1a
    move-exception v0

    .line 2562
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2572
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1b
    move-exception v0

    .line 2573
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 2583
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1c
    move-exception v0

    .line 2584
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2594
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1d
    move-exception v0

    .line 2595
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 2605
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1e
    move-exception v0

    .line 2606
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 2616
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1f
    move-exception v0

    .line 2617
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 2627
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_20
    move-exception v0

    .line 2628
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 2638
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_21
    move-exception v0

    .line 2639
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/EOFException; {:try_start_45 .. :try_end_45} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_45} :catch_3
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_5

    goto/16 :goto_24

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "st":Ljava/lang/String;
    :cond_27
    move-object v3, v4

    .line 2663
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_26

    .line 2648
    .end local v2    # "key":Ljava/lang/String;
    .local v1, "ignore":Ljava/io/EOFException;
    :catch_22
    move-exception v0

    .line 2649
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 2657
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "ignore":Ljava/io/FileNotFoundException;
    :catch_23
    move-exception v0

    .line 2658
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 2668
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ignore":Ljava/io/FileNotFoundException;
    :catch_24
    move-exception v0

    .line 2669
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 2661
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v0

    goto/16 :goto_29

    .line 2652
    :catch_26
    move-exception v1

    goto/16 :goto_28

    .line 2643
    :catch_27
    move-exception v1

    goto/16 :goto_25
.end method

.method private readIpAndProxyConfigurations()V
    .locals 7

    .prologue
    .line 2687
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2689
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2707
    :cond_0
    return-void

    .line 2694
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2695
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2696
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2699
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 2701
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2694
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2704
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1
.end method

.method private readNetworkHistory()V
    .locals 42

    .prologue
    .line 1955
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v8, :cond_0

    .line 1956
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1958
    :cond_0
    const/16 v24, 0x0

    .line 1960
    .local v24, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v25, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v41, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1962
    .end local v24    # "in":Ljava/io/DataInputStream;
    .local v25, "in":Ljava/io/DataInputStream;
    const/4 v15, 0x0

    .line 1964
    .local v15, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    const/16 v22, -0x1

    .line 1965
    .local v22, "id":I
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    .line 1966
    .local v26, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1967
    .local v4, "bssid":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1969
    .local v37, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1970
    .local v7, "freq":I
    const/16 v39, 0x0

    .line 1971
    .local v39, "status":I
    const-wide/16 v34, 0x0

    .line 1972
    .local v34, "seen":J
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1973
    .local v6, "rssi":I
    const/4 v5, 0x0

    .line 1974
    .local v5, "caps":Ljava/lang/String;
    const-string v8, "CONFIG:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1976
    if-eqz v15, :cond_2

    .line 1977
    const/4 v15, 0x0

    .line 1979
    :cond_2
    const-string v8, "CONFIG:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1980
    .local v16, "configKey":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1982
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 1985
    .local v30, "n":Ljava/lang/Integer;
    if-nez v30, :cond_5

    .line 1986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2256
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v30    # "n":Ljava/lang/Integer;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    :catch_0
    move-exception v23

    move-object/from16 v24, v25

    .line 2257
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .local v23, "ignore":Ljava/io/EOFException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v24, :cond_3

    .line 2259
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2268
    .end local v23    # "ignore":Ljava/io/EOFException;
    :cond_3
    :goto_2
    if-eqz v24, :cond_4

    .line 2270
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2275
    :cond_4
    :goto_3
    return-void

    .line 1991
    .end local v24    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "configKey":Ljava/lang/String;
    .restart local v22    # "id":I
    .restart local v25    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v30    # "n":Ljava/lang/Integer;
    .restart local v34    # "seen":J
    .restart local v37    # "ssid":Ljava/lang/String;
    .restart local v39    # "status":I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 1992
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v15, :cond_6

    .line 1993
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find config for netid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1997
    :cond_6
    const/16 v39, 0x0

    .line 1998
    const/16 v37, 0x0

    .line 1999
    const/4 v4, 0x0

    .line 2000
    const/4 v7, 0x0

    .line 2001
    const-wide/16 v34, 0x0

    .line 2002
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2003
    const/4 v5, 0x0

    .line 2005
    goto/16 :goto_0

    .end local v16    # "configKey":Ljava/lang/String;
    .end local v30    # "n":Ljava/lang/Integer;
    :cond_7
    if-eqz v15, :cond_1

    .line 2006
    const-string v8, "SSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2007
    const-string v8, "SSID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2008
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2009
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_2a

    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2010
    const-string v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2011
    const/4 v15, 0x0

    .line 2012
    const/16 v37, 0x0

    .line 2018
    :cond_8
    :goto_4
    const-string v8, "FQDN:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2019
    const-string v8, "FQDN:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2020
    .local v20, "fqdn":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2021
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 2024
    .end local v20    # "fqdn":Ljava/lang/String;
    :cond_9
    const-string v8, "DEFAULT_GW:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2025
    const-string v8, "DEFAULT_GW:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2026
    .local v21, "gateway":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2027
    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 2030
    .end local v21    # "gateway":Ljava/lang/String;
    :cond_a
    const-string v8, "AUTO_JOIN_STATUS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2031
    const-string v8, "AUTO_JOIN_STATUS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2032
    .local v38, "st":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2033
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 2036
    .end local v38    # "st":Ljava/lang/String;
    :cond_b
    const-string v8, "SUP_DIS_REASON:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2037
    const-string v8, "SUP_DIS_REASON:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 2038
    .local v32, "reason":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 2039
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2042
    .end local v32    # "reason":Ljava/lang/String;
    :cond_c
    const-string v8, "SELF_ADDED:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2043
    const-string v8, "SELF_ADDED:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2044
    .local v36, "selfAdded":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2045
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 2048
    .end local v36    # "selfAdded":Ljava/lang/String;
    :cond_d
    const-string v8, "DID_SELF_ADD:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2049
    const-string v8, "DID_SELF_ADD:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 2050
    .local v18, "didSelfAdd":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 2051
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 2054
    .end local v18    # "didSelfAdd":Ljava/lang/String;
    :cond_e
    const-string v8, "NO_INTERNET_ACCESS_REPORTS :   "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2055
    const-string v8, "NO_INTERNET_ACCESS_REPORTS :   "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2056
    .local v10, "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2057
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 2060
    .end local v10    # "access":Ljava/lang/String;
    :cond_f
    const-string v8, "VALIDATED_INTERNET_ACCESS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2061
    const-string v8, "VALIDATED_INTERNET_ACCESS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2062
    .restart local v10    # "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2063
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2066
    .end local v10    # "access":Ljava/lang/String;
    :cond_10
    const-string v8, "EPHEMERAL:   "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2067
    const-string v8, "EPHEMERAL:   "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2068
    .restart local v10    # "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2069
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2072
    .end local v10    # "access":Ljava/lang/String;
    :cond_11
    const-string v8, "CREATOR_UID_KEY:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2073
    const-string v8, "CREATOR_UID_KEY:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2074
    .local v40, "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2075
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2078
    .end local v40    # "uid":Ljava/lang/String;
    :cond_12
    const-string v8, "BLACKLIST_MILLI:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2079
    const-string v8, "BLACKLIST_MILLI:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 2080
    .local v29, "milli":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 2081
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v15, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 2084
    .end local v29    # "milli":Ljava/lang/String;
    :cond_13
    const-string v8, "CONNECT_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2085
    const-string v8, "CONNECT_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2086
    .local v31, "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2087
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 2090
    .end local v31    # "num":Ljava/lang/String;
    :cond_14
    const-string v8, "IP_CONFIG_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2091
    const-string v8, "IP_CONFIG_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2092
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2093
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 2096
    .end local v31    # "num":Ljava/lang/String;
    :cond_15
    const-string v8, "AUTH_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2097
    const-string v8, "AUTH_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2098
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2099
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 2102
    .end local v31    # "num":Ljava/lang/String;
    :cond_16
    const-string v8, "SCORER_OVERRIDE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2103
    const-string v8, "SCORER_OVERRIDE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2104
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2105
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 2108
    .end local v31    # "num":Ljava/lang/String;
    :cond_17
    const-string v8, "SCORER_OVERRIDE_AND_SWITCH:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2109
    const-string v8, "SCORER_OVERRIDE_AND_SWITCH:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2110
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2111
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 2114
    .end local v31    # "num":Ljava/lang/String;
    :cond_18
    const-string v8, "NUM_ASSOCIATION:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2115
    const-string v8, "NUM_ASSOCIATION:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2116
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2117
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 2120
    .end local v31    # "num":Ljava/lang/String;
    :cond_19
    const-string v8, "JOIN_ATTEMPT_BOOST:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2121
    const-string v8, "JOIN_ATTEMPT_BOOST:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2122
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2123
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 2126
    .end local v31    # "num":Ljava/lang/String;
    :cond_1a
    const-string v8, "CONNECT_UID_KEY:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2127
    const-string v8, "CONNECT_UID_KEY:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2128
    .restart local v40    # "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2129
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 2132
    .end local v40    # "uid":Ljava/lang/String;
    :cond_1b
    const-string v8, "UPDATE_UID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2133
    const-string v8, "UPDATE_UID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2134
    .restart local v40    # "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2135
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2138
    .end local v40    # "uid":Ljava/lang/String;
    :cond_1c
    const-string v8, "FAILURE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2139
    const-string v8, "FAILURE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 2140
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    const-string v9, "\n"

    const-string v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 2143
    :cond_1d
    const-string v8, "PEER_CONFIGURATION:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2144
    const-string v8, "PEER_CONFIGURATION:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2145
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    const-string v9, "\n"

    const-string v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2149
    :cond_1e
    const-string v8, "CHOICE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2150
    const-string v8, "CHOICE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 2151
    .local v14, "choiceStr":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 2152
    const-string v16, ""

    .line 2153
    .restart local v16    # "configKey":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2154
    .local v13, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 2155
    .local v28, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2b

    .line 2156
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    .end local v13    # "choice":I
    .end local v14    # "choiceStr":Ljava/lang/String;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v28    # "match":Ljava/util/regex/Matcher;
    :cond_1f
    :goto_5
    const-string v8, "LINK:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 2175
    const-string v8, "LINK:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2176
    .restart local v16    # "configKey":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2177
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_20

    .line 2178
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2180
    :cond_20
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v8, :cond_21

    .line 2181
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    .end local v16    # "configKey":Ljava/lang/String;
    :cond_21
    const-string v8, "BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2186
    const-string v8, "BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 2187
    const-string v8, "BSSID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2188
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2189
    const/4 v7, 0x0

    .line 2190
    const-wide/16 v34, 0x0

    .line 2191
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2192
    const-string v5, ""

    .line 2193
    const/16 v39, 0x0

    .line 2196
    :cond_22
    const-string v8, "RSSI:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2197
    const-string v8, "RSSI:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 2198
    .local v27, "lvl":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 2199
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2202
    .end local v27    # "lvl":Ljava/lang/String;
    :cond_23
    const-string v8, "BSSID_STATUS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2203
    const-string v8, "BSSID_STATUS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2204
    .restart local v38    # "st":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2205
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2208
    .end local v38    # "st":Ljava/lang/String;
    :cond_24
    const-string v8, "FREQ:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2209
    const-string v8, "FREQ:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2210
    .local v12, "channel":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2211
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2214
    .end local v12    # "channel":Ljava/lang/String;
    :cond_25
    const-string v8, "DATE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2226
    :cond_26
    const-string v8, "/BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2227
    if-eqz v4, :cond_28

    if-eqz v37, :cond_28

    .line 2229
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v8, :cond_27

    .line 2230
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 2232
    :cond_27
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 2233
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Landroid/net/wifi/ScanResult;

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 2235
    .local v2, "result":Landroid/net/wifi/ScanResult;
    move-wide/from16 v0, v34

    iput-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    .line 2236
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    move/from16 v0, v39

    iput v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 2241
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_28
    const-string v8, "DELETED_CRC32:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 2242
    const-string v8, "DELETED_CRC32:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 2243
    .local v17, "crc":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2244
    .local v11, "c":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2246
    .end local v11    # "c":Ljava/lang/Long;
    .end local v17    # "crc":Ljava/lang/String;
    :cond_29
    const-string v8, "DELETED_EPHEMERAL:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2247
    const-string v8, "DELETED_EPHEMERAL:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 2248
    .local v33, "s":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2249
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 2250
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2264
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v26    # "key":Ljava/lang/String;
    .end local v33    # "s":Ljava/lang/String;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    :catch_1
    move-exception v19

    move-object/from16 v24, v25

    .line 2265
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .local v19, "e":Ljava/io/IOException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: No config file, revert to default"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2014
    .end local v19    # "e":Ljava/io/IOException;
    .end local v24    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v22    # "id":I
    .restart local v25    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v34    # "seen":J
    .restart local v37    # "ssid":Ljava/lang/String;
    .restart local v39    # "status":I
    :cond_2a
    :try_start_5
    move-object/from16 v0, v37

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_4

    .line 2159
    .restart local v13    # "choice":I
    .restart local v14    # "choiceStr":Ljava/lang/String;
    .restart local v16    # "configKey":Ljava/lang/String;
    .restart local v28    # "match":Ljava/util/regex/Matcher;
    :cond_2b
    const/4 v8, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v16

    .line 2161
    const/4 v8, 0x2

    :try_start_6
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v13

    .line 2165
    :goto_7
    if-lez v13, :cond_1f

    .line 2166
    :try_start_7
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v8, :cond_2c

    .line 2167
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 2169
    :cond_2c
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    .line 2162
    :catch_2
    move-exception v19

    .line 2163
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    goto :goto_7

    .line 2260
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v13    # "choice":I
    .end local v14    # "choiceStr":Ljava/lang/String;
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .end local v26    # "key":Ljava/lang/String;
    .end local v28    # "match":Ljava/util/regex/Matcher;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    .restart local v23    # "ignore":Ljava/io/EOFException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v19

    .line 2261
    .local v19, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: Error reading file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2271
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v23    # "ignore":Ljava/io/EOFException;
    :catch_4
    move-exception v19

    .line 2272
    .restart local v19    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: Error closing file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2264
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v19

    goto/16 :goto_6

    .line 2256
    :catch_6
    move-exception v23

    goto/16 :goto_1
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1683
    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1684
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 1686
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNetworkVariableFromSupplicantFile ssid=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1690
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3761
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3762
    .local v7, "netId":I
    if-gez v7, :cond_0

    .line 3963
    :goto_0
    return-void

    .line 3772
    :cond_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "ssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3773
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3774
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_4

    .line 3775
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3785
    :goto_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "bssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3786
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3787
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3792
    :goto_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "priority"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3793
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3794
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3796
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3801
    :cond_1
    :goto_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "scan_ssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3802
    const/4 v11, 0x0

    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3803
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3805
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3810
    :cond_2
    :goto_5
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "wep_tx_keyidx"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3811
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3812
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3814
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3819
    :cond_3
    :goto_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v11, 0x4

    if-ge v2, v11, :cond_9

    .line 3820
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v12, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3822
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 3823
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v10, v11, v2

    .line 3819
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3779
    .end local v2    # "i":I
    :cond_4
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 3782
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 3789
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_2

    .line 3805
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 3825
    .restart local v2    # "i":I
    :cond_8
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v2

    goto :goto_8

    .line 3829
    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "psk"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3830
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 3831
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3836
    :goto_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "proto"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3838
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 3839
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3840
    .local v9, "vals":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v6, :cond_c

    aget-object v8, v0, v3

    .line 3841
    .local v8, "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3843
    .local v4, "index":I
    if-ltz v4, :cond_a

    .line 3844
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3840
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3833
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 3849
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "key_mgmt"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3851
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 3852
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3853
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_b
    if-ge v3, v6, :cond_e

    aget-object v8, v0, v3

    .line 3854
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3856
    .restart local v4    # "index":I
    if-ltz v4, :cond_d

    .line 3857
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3853
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3862
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_e
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "auth_alg"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3864
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 3865
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3866
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_c
    if-ge v3, v6, :cond_10

    aget-object v8, v0, v3

    .line 3867
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3869
    .restart local v4    # "index":I
    if-ltz v4, :cond_f

    .line 3870
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3866
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3875
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_10
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "pairwise"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3877
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 3878
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3879
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_d
    if-ge v3, v6, :cond_12

    aget-object v8, v0, v3

    .line 3880
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3882
    .restart local v4    # "index":I
    if-ltz v4, :cond_11

    .line 3883
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3879
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3888
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_12
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "group"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3890
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 3891
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3892
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_e
    if-ge v3, v6, :cond_14

    aget-object v8, v0, v3

    .line 3893
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3895
    .restart local v4    # "index":I
    if-ltz v4, :cond_13

    .line 3896
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3892
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3901
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_14
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v11, :cond_15

    .line 3902
    new-instance v11, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v11}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3904
    :cond_15
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 3905
    .local v1, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_f
    if-ge v3, v6, :cond_18

    aget-object v5, v0, v3

    .line 3906
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v11, v7, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3907
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 3908
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 3909
    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3911
    :cond_16
    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3913
    :cond_17
    const-string v11, "NULL"

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 3917
    .end local v5    # "key":Ljava/lang/String;
    :cond_18
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v11, v7}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 3918
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 3921
    :cond_19
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3924
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    if-eqz v11, :cond_1a

    .line 3925
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "imsi"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3926
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 3927
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 3932
    :goto_11
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "sim_slot"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3933
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 3934
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 3949
    :cond_1a
    :goto_12
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "pac_file"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3950
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 3951
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    .line 3956
    :goto_13
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "phase1"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3957
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 3958
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto/16 :goto_0

    .line 3929
    :cond_1b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    goto :goto_11

    .line 3936
    :cond_1c
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    goto :goto_12

    .line 3953
    :cond_1d
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    goto :goto_13

    .line 3960
    :cond_1e
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto/16 :goto_0

    .line 3815
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v11

    goto/16 :goto_6

    .line 3806
    :catch_1
    move-exception v11

    goto/16 :goto_5

    .line 3797
    :catch_2
    move-exception v11

    goto/16 :goto_3
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1629
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1630
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1631
    .local v4, "reader":Ljava/io/BufferedReader;
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readNetworkVariablesFromSupplicantFile key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1634
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1636
    .local v1, "found":Z
    const/4 v3, 0x0

    .line 1637
    .local v3, "networkSsid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1639
    .local v8, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_6

    .line 1641
    const-string v9, "[ \\t]*network=\\{"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1642
    const/4 v1, 0x1

    .line 1643
    const/4 v3, 0x0

    .line 1644
    const/4 v8, 0x0

    .line 1651
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 1652
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1653
    .local v7, "trimmedLine":Ljava/lang/String;
    const-string v9, "ssid="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1654
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1659
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v8, :cond_3

    .line 1660
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1645
    :cond_4
    const-string v9, "[ \\t]*\\}"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1646
    const/4 v1, 0x0

    .line 1647
    const/4 v3, 0x0

    .line 1648
    const/4 v8, 0x0

    goto :goto_1

    .line 1655
    .restart local v7    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    goto :goto_2

    .line 1670
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1671
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    move-object v4, v5

    .line 1678
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_3
    return-object v6

    .line 1673
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1676
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1664
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1670
    :cond_9
    if-eqz v4, :cond_8

    .line 1671
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1673
    :catch_2
    move-exception v9

    goto :goto_3

    .line 1666
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1670
    :cond_a
    if-eqz v4, :cond_8

    .line 1671
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1673
    :catch_4
    move-exception v9

    goto :goto_3

    .line 1669
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1670
    :goto_6
    if-eqz v4, :cond_b

    .line 1671
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1675
    :cond_b
    :goto_7
    throw v9

    .line 1673
    :catch_5
    move-exception v10

    goto :goto_7

    .line 1669
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1666
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1664
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 7
    .param p1, "netId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1182
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1183
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_6

    .line 1184
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1190
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1195
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_2

    .line 1196
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 1199
    :cond_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1201
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1203
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 1204
    .local v1, "csum":Ljava/util/zip/Checksum;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1205
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1206
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  crc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1215
    .end local v1    # "csum":Ljava/util/zip/Checksum;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1219
    invoke-direct {p0, v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1220
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1222
    :cond_6
    return v6
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 3966
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3967
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3969
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3971
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 1488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1490
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1491
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1492
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1478
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1479
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1480
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1482
    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    .prologue
    .line 2676
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2677
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2678
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 2679
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2683
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2684
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3658
    const/4 v1, 0x0

    .line 3659
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .line 3661
    .local v3, "proxyChanged":Z
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 3662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3667
    :cond_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3686
    const-string v6, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3690
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 3711
    const-string v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3715
    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    .line 3716
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3717
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 3718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3725
    :cond_3
    if-eqz v3, :cond_4

    .line 3726
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3727
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 3728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3734
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 3735
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 3736
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 3739
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    .line 3669
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 3670
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3672
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v1, v4

    .line 3676
    :goto_2
    goto/16 :goto_0

    :cond_8
    move v1, v5

    .line 3672
    goto :goto_2

    .line 3678
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 3679
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3693
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 3694
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3696
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    .line 3697
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :goto_3
    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_3

    .line 3699
    :cond_a
    if-eqz v0, :cond_b

    move v3, v4

    .line 3701
    :goto_4
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 3699
    goto :goto_4

    .line 3703
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 3704
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 3690
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 4624
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 4625
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4626
    monitor-exit v1

    .line 4627
    return-void

    .line 4626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 1146
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "addOrUpdateNetwork id="

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1148
    :cond_0
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 1152
    .local v1, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1154
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 1155
    iget-boolean v2, v1, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1160
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    return v2

    .line 1155
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public associateWithConfiguration(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 22
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3322
    const/16 v17, 0x0

    .line 3323
    .local v17, "doNotAdd":Z
    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v14

    .line 3324
    .local v14, "configKey":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 3325
    const-string v2, "associateWithConfiguration(): no config key "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3326
    const/16 v20, 0x0

    .line 3438
    :cond_0
    :goto_0
    return-object v20

    .line 3330
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3332
    .local v12, "SSID":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_2

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): try "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3336
    :cond_2
    new-instance v15, Ljava/util/zip/CRC32;

    invoke-direct {v15}, Ljava/util/zip/CRC32;-><init>()V

    .line 3337
    .local v15, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-interface {v15, v2, v3, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 3338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3339
    const/16 v17, 0x1

    .line 3342
    :cond_3
    const/4 v13, 0x0

    .line 3343
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiConfiguration;

    .line 3344
    .local v20, "link":Landroid/net/wifi/WifiConfiguration;
    const/16 v16, 0x0

    .line 3346
    .local v16, "doLink":Z
    move-object/from16 v0, v20

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    move-object/from16 v0, v20

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_5

    move-object/from16 v0, v20

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_6

    .line 3348
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): skip selfadd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3353
    :cond_6
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3354
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): skip non-PSK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3359
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3360
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): found it!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3364
    :cond_8
    if-nez v17, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_a

    .line 3365
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3366
    .local v5, "bssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3375
    const/16 v16, 0x1

    .line 3381
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_a
    if-eqz v16, :cond_4

    .line 3384
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_b

    .line 3385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: try to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and associate it with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3389
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 3390
    if-eqz v13, :cond_14

    .line 3391
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3392
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3393
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3394
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 3395
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3397
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_c

    if-eqz v13, :cond_c

    .line 3398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: got a config from beacon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3402
    :cond_c
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "psk"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3403
    .local v21, "psk":Ljava/lang/String;
    if-eqz v21, :cond_12

    .line 3404
    move-object/from16 v0, v21

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3405
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_d

    .line 3406
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 3407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " transfer PSK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3411
    :cond_d
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_e

    .line 3412
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3414
    :cond_e
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_f

    .line 3415
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3417
    :cond_f
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3418
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3421
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3422
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3430
    .end local v21    # "psk":Ljava/lang/String;
    :cond_10
    :goto_2
    if-eqz v13, :cond_14

    .end local v16    # "doLink":Z
    .end local v20    # "link":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    move-object/from16 v20, v13

    .line 3438
    goto/16 :goto_0

    .line 3425
    .restart local v16    # "doLink":Z
    .restart local v20    # "link":Landroid/net/wifi/WifiConfiguration;
    .restart local v21    # "psk":Ljava/lang/String;
    :cond_12
    const/4 v13, 0x0

    goto :goto_2

    .line 3428
    .end local v21    # "psk":Ljava/lang/String;
    :cond_13
    const/4 v13, 0x0

    goto :goto_2

    .line 3432
    :cond_14
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_4

    if-eqz v13, :cond_4

    .line 3433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: success, created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method disableAllNetworks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1267
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1268
    :cond_0
    const/4 v2, 0x0

    .line 1269
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1270
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_1

    .line 1271
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1272
    const/4 v2, 0x1

    .line 1273
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1275
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v2, :cond_4

    .line 1281
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1283
    :cond_4
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1090
    if-nez p1, :cond_0

    .line 1091
    const/4 v1, 0x0

    .line 1110
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    const/4 v1, 0x0

    .line 1096
    .local v1, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forget ephemeral SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1099
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1100
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_1

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1102
    move-object v1, v0

    goto :goto_1

    .line 1108
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_0
.end method

.method disableNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 1290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method disableNetwork(II)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 1300
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1301
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .line 1302
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 1303
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1305
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_1

    .line 1306
    if-eqz v0, :cond_1

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork netId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1316
    :cond_1
    if-eqz v0, :cond_3

    .line 1317
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v6, :cond_2

    .line 1319
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1320
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1321
    move-object v1, v0

    .line 1325
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 1326
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1327
    const-string v3, "disableNetwork by DISABLED_AUTH_FAILURE set autojoin status"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1331
    :cond_2
    if-ne p2, v6, :cond_3

    .line 1334
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1335
    const/16 v3, 0xa1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1338
    :cond_3
    if-eqz v1, :cond_4

    .line 1339
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1342
    :cond_4
    return v2

    .line 1307
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 996
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1001
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1002
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1004
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    .line 1005
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 1010
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4055
    const-string v2, "Dump of WifiConfigStore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    const-string v2, "Configured networks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4059
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 4061
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4063
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v2, :cond_1

    .line 4064
    const-string v2, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4066
    const-string v2, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4068
    :cond_1
    return-void
.end method

.method enableAllNetworks()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 798
    .local v4, "now":J
    const/4 v3, 0x0

    .line 800
    .local v3, "networkEnabledStateChanged":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v6}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 801
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v6}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 802
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v1

    .line 803
    .local v1, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 804
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v12, :cond_0

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v7, 0x80

    if-gt v6, v7, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 810
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v11, :cond_1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v14, :cond_1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v6, v13, :cond_2

    .line 813
    :cond_1
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 819
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 820
    const/4 v3, 0x1

    .line 821
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 823
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 824
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 825
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 827
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 829
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable network failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 835
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 836
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v12, :cond_5

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v7, 0x80

    if-gt v6, v7, :cond_5

    .line 841
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v11, :cond_6

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v14, :cond_6

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v6, v13, :cond_7

    .line 844
    :cond_6
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 850
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 851
    const/4 v3, 0x1

    .line 852
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 854
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 855
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 856
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 858
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 860
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable network failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 865
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v3, :cond_a

    .line 866
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 867
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 870
    :cond_a
    return-void
.end method

.method enableNetwork(IZ)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v2

    .line 1236
    .local v2, "ret":Z
    if-eqz p2, :cond_2

    .line 1237
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "enableNetwork(disableOthers=true) "

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1238
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1251
    :cond_1
    :goto_0
    return v2

    .line 1240
    :cond_2
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1241
    :cond_3
    const/4 v1, 0x0

    .line 1242
    .local v1, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 1243
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    .line 1244
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    if-eqz v1, :cond_1

    .line 1247
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1244
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1255
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 1257
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1258
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1260
    :cond_0
    if-eqz p2, :cond_1

    .line 1261
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 1263
    :cond_1
    return v1
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 583
    iput p1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 584
    if-lez p1, :cond_0

    .line 585
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 586
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 591
    :goto_0
    if-lez p1, :cond_1

    .line 592
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 597
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 598
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 601
    return-void

    .line 588
    :cond_0
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    goto :goto_0

    .line 594
    :cond_1
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1120
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "forgetNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1122
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    move-result v0

    .line 1123
    .local v0, "remove":Z
    if-nez v0, :cond_1

    .line 1132
    :goto_0
    return v1

    .line 1127
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0

    .line 1131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4071
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method getDisconnectNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4637
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v4

    .line 4638
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4639
    .local v1, "netId":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4641
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netId":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4642
    return-object v2
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    .line 685
    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1449
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1452
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 6
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 711
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    .line 719
    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiConfiguration;->setVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 720
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v3, :cond_0

    .line 723
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v4, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v4, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v3, v4, :cond_0

    .line 727
    :cond_1
    if-eqz p2, :cond_2

    .line 728
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v2
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1414
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 1417
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    goto :goto_0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 780
    if-nez p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-object v3

    .line 782
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 783
    .local v0, "hash":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 785
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 786
    .local v1, "n":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 788
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 789
    .local v2, "netId":I
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    goto :goto_0
.end method

.method getconfiguredNetworkSize()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 698
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 4226
    const/4 v1, 0x0

    .line 4227
    .local v1, "found":Z
    if-nez p2, :cond_0

    move v2, v1

    .line 4248
    .end local v1    # "found":Z
    .local v2, "found":I
    :goto_0
    return v2

    .line 4231
    .end local v2    # "found":I
    .restart local v1    # "found":Z
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4232
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 4233
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 4234
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4235
    if-eqz p3, :cond_3

    .line 4236
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 4241
    :cond_3
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4242
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    move v2, v1

    .line 4248
    .restart local v2    # "found":I
    goto :goto_0
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 4203
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4204
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 4205
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4209
    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4222
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 4223
    return-void

    .line 4215
    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+8) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x80

    .line 4258
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4259
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 4260
    if-eqz p2, :cond_1

    .line 4261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID re-enabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4268
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ne v4, v8, :cond_0

    .line 4269
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4369
    :cond_0
    :goto_0
    return-void

    .line 4272
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID temp disabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4275
    if-eqz p3, :cond_2

    .line 4276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4278
    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 4282
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    goto :goto_0

    .line 4284
    :cond_3
    if-eqz p3, :cond_0

    .line 4285
    const-string v4, "no identity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4286
    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no identity blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4362
    :cond_4
    :goto_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4363
    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4364
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 4292
    :cond_5
    const-string v4, "WRONG_KEY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "AUTH_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4298
    :cond_6
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 4299
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4300
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4302
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4308
    :cond_7
    const-string v4, "DHCP FAILURE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4309
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 4310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 4311
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v2

    .line 4313
    .local v2, "maxRetries":I
    if-lez v2, :cond_8

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-le v4, v2, :cond_8

    .line 4318
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4320
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4327
    :cond_8
    const/4 v3, 0x0

    .line 4328
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v0, ""

    .line 4329
    .local v0, "bssidDbg":Ljava/lang/String;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    if-eqz p4, :cond_9

    .line 4330
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v4, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 4332
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    .line 4333
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 4334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipfail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4335
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v9, :cond_a

    .line 4337
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 4338
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4343
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to IP config failures, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4350
    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    const-string v4, "CONN_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4351
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 4352
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4353
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4355
    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4372
    const/4 v6, 0x1

    .line 4373
    .local v6, "ret":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4374
    .local v4, "privKeyName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4375
    .local v8, "userCertName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4376
    .local v0, "caCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 4377
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 4378
    .local v2, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4381
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in hardware backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v2, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    .line 4393
    :goto_0
    if-nez v6, :cond_1

    move v7, v6

    .line 4483
    .end local v2    # "privKeyData":[B
    .end local v6    # "ret":Z
    .local v7, "ret":Z
    :goto_1
    return v7

    .line 4389
    .end local v7    # "ret":Z
    .restart local v2    # "privKeyData":[B
    .restart local v6    # "ret":Z
    :cond_0
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in software backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v2, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    goto :goto_0

    .line 4397
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4398
    if-nez v6, :cond_2

    .line 4400
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v4, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move v7, v6

    .line 4401
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto :goto_1

    .line 4405
    .end local v2    # "privKeyData":[B
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4406
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4407
    if-nez v6, :cond_4

    .line 4408
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 4410
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v4, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4411
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v8, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    move v7, v6

    .line 4413
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto :goto_1

    .line 4418
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 4419
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 4420
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 4423
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 4424
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    .line 4429
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://WAPIUSERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4430
    .local v5, "privKeyName2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAPIUSERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4431
    .local v9, "userCertName2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAPISERVERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4432
    .local v1, "caCertName2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 4433
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 4434
    .local v3, "privKeyData2":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4437
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in hardware backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v3, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    .line 4449
    :goto_2
    if-nez v6, :cond_8

    move v7, v6

    .line 4450
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4445
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_7
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in software backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v3, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    goto :goto_2

    .line 4452
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4453
    if-nez v6, :cond_9

    .line 4455
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v5, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move v7, v6

    .line 4456
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4459
    .end local v3    # "privKeyData2":[B
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 4460
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4461
    if-nez v6, :cond_b

    .line 4462
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 4464
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v5, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4465
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v9, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_a
    move v7, v6

    .line 4467
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4471
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_b
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 4472
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateWapiAlias(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 4476
    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 4477
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateWapiAlias(Ljava/lang/String;)V

    .line 4478
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    :cond_d
    move v7, v6

    .line 4483
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1462
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 1463
    const/4 v1, 0x1

    .line 1465
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3191
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 3306
    :cond_0
    return-void

    .line 3195
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3199
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 3200
    .local v12, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 3202
    .local v8, "doLink":Z
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3206
    iget v1, v12, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    iget-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_2

    .line 3212
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3216
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 3221
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3223
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3224
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_4

    .line 3225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration link due to same gw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3228
    :cond_4
    const/4 v8, 0x1

    .line 3255
    :cond_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    if-eqz v1, :cond_7

    .line 3256
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3257
    .local v6, "apsk":Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3258
    .local v7, "bpsk":Ljava/lang/String;
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3262
    :cond_6
    const/4 v8, 0x0

    .line 3266
    .end local v6    # "apsk":Ljava/lang/String;
    .end local v7    # "bpsk":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_10

    .line 3267
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_8

    .line 3268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3271
    :cond_8
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_9

    .line 3272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3274
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_a

    .line 3275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3277
    :cond_a
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3278
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3279
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3281
    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3282
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    goto/16 :goto_0

    .line 3235
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    .line 3237
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3238
    .local v0, "abssid":Ljava/lang/String;
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3239
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v1, :cond_f

    .line 3240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssida "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssidb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3245
    :cond_f
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3248
    const/4 v8, 0x1

    goto :goto_1

    .line 3286
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3288
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_11

    .line 3289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3292
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3293
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    :cond_12
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3297
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_13

    .line 3298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3301
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3302
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 624
    const-string v2, "Loading config and enabling all networks "

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 627
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v3

    .line 628
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 629
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v2}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 632
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 634
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 635
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 629
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 641
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 25

    .prologue
    .line 1496
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 1501
    const/4 v13, -0x1

    .line 1502
    .local v13, "last_id":I
    const/4 v7, 0x0

    .line 1503
    .local v7, "done":Z
    :goto_0
    if-nez v7, :cond_10

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    move-result-object v17

    .line 1506
    .local v17, "listStr":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 1626
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1509
    .restart local v17    # "listStr":Ljava/lang/String;
    :cond_1
    const-string v22, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1511
    .local v16, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1512
    const-string v22, "WifiConfigStore: loadConfiguredNetworks:  "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1513
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v14, :cond_2

    aget-object v18, v4, v12

    .line 1514
    .local v18, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1513
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1519
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "net":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 1520
    aget-object v22, v16, v11

    const-string v23, "\t"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1522
    .local v21, "result":[Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1524
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v22, 0x0

    :try_start_0
    aget-object v22, v21, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1525
    iget v13, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 1533
    const/16 v22, 0x1

    aget-object v22, v21, v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1534
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SSID invalid:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1519
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1526
    :catch_0
    move-exception v10

    .line 1527
    .local v10, "e":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to read network-id \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 1538
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 1539
    const/16 v22, 0x3

    aget-object v22, v21, v22

    const-string v23, "[CURRENT]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1540
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1549
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1551
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 1552
    .local v6, "csum":Ljava/util/zip/Checksum;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1553
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v6, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1554
    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    .line 1555
    .local v8, "d":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1556
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " got CRC for SSID "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", was deleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1561
    .end local v8    # "d":J
    :cond_5
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 1562
    const-string v22, "Error: get a config with SSID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1541
    .end local v6    # "csum":Ljava/util/zip/Checksum;
    :cond_6
    const/16 v22, 0x3

    aget-object v22, v21, v22

    const-string v23, "[DISABLED]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 1542
    const/16 v22, 0x1

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1544
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1546
    :cond_8
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1566
    .restart local v6    # "csum":Ljava/util/zip/Checksum;
    :cond_9
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 1567
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1570
    :cond_a
    sget-object v22, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1571
    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const-string v22, "discarded duplicate network "

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1577
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "discarded duplicate network orig nid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1579
    :cond_c
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const-string v22, "loaded configured network"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1584
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ignoring loaded configured for network "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " because config are not valid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1589
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "csum":Ljava/util/zip/Checksum;
    .end local v21    # "result":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/4 v7, 0x1

    .line 1590
    :goto_7
    goto/16 :goto_0

    .line 1589
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 1592
    .end local v11    # "i":I
    .end local v16    # "lines":[Ljava/lang/String;
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 1593
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    .line 1594
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readAutoJoinConfig()V

    .line 1596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "loadConfiguredNetworks loaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " networks"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1600
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 1602
    const/16 v19, 0x0

    .line 1604
    .local v19, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/FileReader;

    const-string v23, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct/range {v22 .. v23}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1606
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    :try_start_2
    const-string v22, "--- Begin wpa_supplicant.conf Contents ---"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1607
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    :goto_8
    if-eqz v15, :cond_12

    .line 1608
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1607
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 1610
    :cond_12
    const-string v22, "--- End wpa_supplicant.conf Contents ---"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1618
    if-eqz v20, :cond_0

    .line 1619
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1621
    :catch_1
    move-exception v22

    goto/16 :goto_1

    .line 1612
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v10

    .line 1613
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1618
    if-eqz v19, :cond_0

    .line 1619
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 1621
    :catch_3
    move-exception v22

    goto/16 :goto_1

    .line 1614
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    .line 1615
    .local v10, "e":Ljava/io/IOException;
    :goto_a
    :try_start_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1618
    if-eqz v19, :cond_0

    .line 1619
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    .line 1621
    :catch_5
    move-exception v22

    goto/16 :goto_1

    .line 1617
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 1618
    :goto_b
    if-eqz v19, :cond_13

    .line 1619
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1623
    :cond_13
    :goto_c
    throw v22

    .line 1621
    :catch_6
    move-exception v23

    goto :goto_c

    .line 1617
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_b

    .line 1614
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v10

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_a

    .line 1612
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v10

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_9
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4090
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4075
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    .line 4076
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 4079
    if-eqz p2, :cond_0

    .line 4080
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    :goto_0
    return-void

    .line 4085
    :cond_0
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3442
    if-nez p1, :cond_1

    .line 3443
    const/4 v2, 0x0

    .line 3511
    :cond_0
    :goto_0
    return-object v2

    .line 3444
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3446
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3449
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v13, :cond_2

    .line 3450
    const/4 v2, 0x0

    goto :goto_0

    .line 3453
    :cond_2
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_5

    .line 3454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3455
    .local v3, "dbg":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "makeChannelList age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " max="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_3

    .line 3459
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " bssids="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v13, :cond_4

    .line 3462
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " linked="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3467
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x0

    .line 3468
    .local v10, "numChannels":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_7

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 3469
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 3471
    .local v11, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    if-le v10, v13, :cond_b

    .line 3487
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v13, :cond_0

    .line 3488
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3489
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3490
    .local v7, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    .line 3492
    iget-object v13, v7, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_8

    .line 3495
    iget-object v13, v7, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 3496
    .restart local v11    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_a

    .line 3497
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has link: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3501
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    if-gt v10, v13, :cond_8

    .line 3504
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_9

    .line 3505
    iget v13, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3506
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3474
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "linked":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_c

    .line 3475
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_d

    const/4 v12, 0x1

    .line 3476
    .local v12, "test":Z
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ?="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3479
    .end local v12    # "test":Z
    :cond_c
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_6

    .line 3480
    iget v13, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3481
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3475
    :cond_d
    const/4 v12, 0x0

    goto :goto_3
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x3f2

    .line 4587
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 4589
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4590
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4591
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4593
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4598
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4600
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4601
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4602
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4606
    :cond_1
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4538
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v4, "private_key"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4543
    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4582
    :cond_0
    :goto_0
    return v2

    .line 4547
    :cond_1
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4548
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4553
    const-string v2, "engine"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4554
    const-string v2, "engine_id"

    const-string v3, "keystore"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4562
    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4563
    new-instance v0, Ljava/lang/String;

    const-string v2, "keystore://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4568
    .local v0, "keyName":Ljava/lang/String;
    :goto_1
    const-string v2, "key_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4570
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine"

    const-string v4, "engine"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4573
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine_id"

    const-string v4, "engine_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4576
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "key_id"

    const-string v4, "key_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4580
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    const-string v4, "NULL"

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4582
    const/4 v2, 0x1

    goto :goto_0

    .line 4566
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_1
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    .line 1715
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1717
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1720
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1721
    const/4 v2, 0x1

    .line 1726
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1013
    if-nez p1, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1015
    const-wide/16 v0, 0x2

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1017
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1019
    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1022
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    goto :goto_0
.end method

.method removeDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 4630
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 4631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4632
    monitor-exit v1

    .line 4633
    return-void

    .line 4632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/16 v7, 0x3f2

    .line 4500
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 4502
    .local v2, "client":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4503
    const-string v4, "WifiConfigStore"

    const-string v5, "removing client private key and user cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4505
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4508
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4510
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4511
    const-string v4, "WifiConfigStore"

    const-string v5, "removing CA cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4515
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateWapiAlias()Ljava/lang/String;

    move-result-object v3

    .line 4517
    .local v3, "client2":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4518
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4519
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4522
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateWapiAlias()Ljava/lang/String;

    move-result-object v1

    .line 4524
    .local v1, "ca2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4525
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPISERVERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4528
    :cond_3
    return-void
.end method

.method removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1173
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v1, :cond_0

    const-string v1, "removeNetwork"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    .line 1175
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    .line 1178
    :cond_1
    return v0
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 927
    if-eqz p1, :cond_0

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_1

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 929
    :cond_0
    new-instance v3, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v3, v8}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 982
    :goto_0
    return-object v3

    .line 931
    :cond_1
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiConfigStore: saveNetwork netId"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 932
    :cond_2
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_3

    .line 933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore saveNetwork, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 939
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 940
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_4

    .line 941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: removed from ephemeral blacklist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 947
    :cond_4
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_b

    const/4 v2, 0x1

    .line 948
    .local v2, "newNetwork":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 949
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .line 951
    .local v1, "netId":I
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiConfigStore: saveNetwork got it back netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 954
    :cond_5
    if-eqz v2, :cond_7

    if-eq v1, v8, :cond_7

    .line 955
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiConfigStore: will enable netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 957
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 958
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 959
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    .line 960
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 963
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 964
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_a

    .line 965
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eqz v6, :cond_9

    .line 966
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: re-enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 969
    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 970
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 972
    :cond_9
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_a

    .line 973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: saveNetwork got config back netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 979
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 980
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_0

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    move v2, v4

    .line 947
    goto/16 :goto_1

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v2    # "newNetwork":Z
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_c
    move v4, v5

    .line 980
    goto :goto_2
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    if-ne v0, v1, :cond_0

    .line 1038
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWifiConfigBSSID Setting BSSID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v2, "bssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to set BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method selectNetwork(I)Z
    .locals 8
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 886
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "selectNetwork"

    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 887
    :cond_0
    if-ne p1, v7, :cond_1

    .line 914
    :goto_0
    return v2

    .line 890
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_5

    .line 891
    :cond_2
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to reset the priority, mLastPriority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 893
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v7, :cond_3

    .line 894
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 895
    invoke-direct {p0, v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    goto :goto_1

    .line 898
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iput v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 902
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 903
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 904
    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 906
    invoke-direct {p0, v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 907
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 910
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move v2, v3

    .line 914
    goto :goto_0
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1435
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1437
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1439
    :cond_0
    return-void
.end method

.method setIpConfiguration(ILandroid/net/LinkProperties;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 4613
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4614
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 4616
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4620
    :goto_0
    return-void

    .line 4618
    :cond_0
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No configuration for netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1922
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1925
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1926
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1942
    :cond_1
    :goto_0
    return-void

    .line 1928
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1929
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1930
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    goto :goto_0

    .line 1932
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1933
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1934
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1935
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1936
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1937
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1425
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1428
    :cond_0
    return-void
.end method

.method setWifiFwkExt(Lcom/mediatek/common/wifi/IWifiFwkExt;)V
    .locals 0
    .param p1, "wifiExt"    # Lcom/mediatek/common/wifi/IWifiFwkExt;

    .prologue
    .line 4646
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    .line 4647
    return-void
.end method

.method startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 4713
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4714
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->startWpsErPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4716
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4717
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4722
    :goto_0
    return-object v0

    .line 4719
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pbc!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;

    .prologue
    .line 4677
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4678
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiNative;->startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4680
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4681
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4686
    :goto_0
    return-object v0

    .line 4683
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4695
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4696
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->startWpsErPinAny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4698
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4699
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4704
    :goto_0
    return-object v0

    .line 4701
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin any!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfc()Landroid/net/wifi/WpsResult;
    .locals 3

    .prologue
    .line 4730
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4731
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->wpsNfc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4733
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4734
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4739
    :goto_0
    return-object v0

    .line 4736
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfcTagRead(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 4748
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4749
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4751
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4752
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4757
    :goto_0
    return-object v0

    .line 4754
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC tag read!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1397
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1398
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1401
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1406
    :goto_0
    return-object v0

    .line 1403
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1404
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 4656
    new-instance v7, Landroid/net/wifi/WpsResult;

    invoke-direct {v7}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4657
    .local v7, "result":Landroid/net/wifi/WpsResult;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    iget-object v6, p1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiNative;->startWpsRegModify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4660
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4661
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4666
    :goto_0
    return-object v7

    .line 4663
    :cond_0
    const-string v0, "WifiConfigStore"

    const-string v1, "Failed to start WPS Reg with modifying AP\'s info!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1360
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1361
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1364
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1369
    :goto_0
    return-object v0

    .line 1366
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1367
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1378
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1379
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 1381
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1383
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1388
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1386
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 741
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 742
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 743
    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_0

    .line 744
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 745
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 748
    .local v1, "previousRssi":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 749
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 752
    sget v5, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 754
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfiguration freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RSSI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 762
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method public updateSavedNetworkHistory(Landroid/net/wifi/ScanResult;)Z
    .locals 20
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3517
    const/4 v11, 0x0

    .line 3518
    .local v11, "numConfigFound":I
    if-nez p1, :cond_0

    .line 3519
    const/16 v17, 0x0

    .line 3651
    :goto_0
    return v17

    .line 3521
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3523
    .local v4, "SSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3524
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 3526
    .local v8, "found":Z
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3528
    :cond_2
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_1

    .line 3529
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): SSID mismatch "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " SSID="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3534
    :cond_3
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_4

    .line 3535
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): try "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " SSID="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ajst="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3540
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3542
    const/4 v8, 0x1

    .line 3566
    :cond_5
    :goto_2
    if-eqz v8, :cond_12

    .line 3568
    add-int/lit8 v11, v11, 0x1

    .line 3570
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 3571
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_1

    .line 3572
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3543
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3545
    const/4 v8, 0x1

    goto :goto_2

    .line 3546
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3548
    const/4 v8, 0x1

    goto :goto_2

    .line 3549
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 3555
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 3558
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 3560
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_a

    .line 3561
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "security method:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3563
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 3582
    :cond_b
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 3583
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 3587
    :cond_c
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 3588
    .local v15, "result":Landroid/net/wifi/ScanResult;
    if-nez v15, :cond_e

    .line 3589
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3599
    :goto_3
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 3602
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 3605
    :cond_d
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    const/16 v18, 0xc0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 3606
    const-wide/16 v12, 0x0

    .line 3607
    .local v12, "now_dbg":J
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_10

    .line 3608
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Will trim config "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3611
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 3612
    .local v14, "r":Landroid/net/wifi/ScanResult;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "     "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v15, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 3592
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "now_dbg":J
    .end local v14    # "r":Landroid/net/wifi/ScanResult;
    :cond_e
    iget v0, v15, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 3593
    iget-wide v0, v15, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 3594
    iget v0, v15, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 3595
    iget v0, v15, Landroid/net/wifi/ScanResult;->numConnection:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 3596
    iget v0, v15, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_3

    .line 3614
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "now_dbg":J
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    .line 3619
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_10
    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->trimScanResultsCache(I)V

    .line 3620
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_11

    .line 3621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    sub-long v6, v18, v12

    .line 3622
    .local v6, "diff":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Finished trimming config, time(ns) "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3623
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 3624
    .restart local v14    # "r":Landroid/net/wifi/ScanResult;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "     "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 3632
    .end local v6    # "diff":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "now_dbg":J
    .end local v14    # "r":Landroid/net/wifi/ScanResult;
    :cond_11
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3634
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 3637
    .end local v15    # "result":Landroid/net/wifi/ScanResult;
    :cond_12
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_1

    if-eqz v8, :cond_1

    .line 3638
    const-string v16, ""

    .line 3639
    .local v16, "status":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-lez v17, :cond_13

    .line 3640
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3642
    :cond_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "        got known scan result "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " key : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " num: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " freq="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3651
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "found":Z
    .end local v16    # "status":Ljava/lang/String;
    :cond_14
    if-eqz v11, :cond_15

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 1055
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1057
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1075
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 1058
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1062
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 1066
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 1067
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1058
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4014
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4016
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4018
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 4019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiConfiguration from scan results "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4022
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4023
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 4024
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 4025
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 4028
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4029
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 4032
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4034
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 4035
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 4038
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 4039
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 4040
    const/4 v0, 0x0

    .line 4044
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 4042
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 1730
    move v2, p1

    .line 1733
    .local v2, "needUpdate":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1735
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rewrite network history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1738
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1739
    const/4 v2, 0x1

    goto :goto_0

    .line 1742
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_2

    .line 1743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeKnownNetworkHistory() num networks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needWrite="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1746
    :cond_2
    if-nez v2, :cond_3

    .line 1919
    :goto_1
    return-void

    .line 1749
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v6, p0, v3}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    goto :goto_1
.end method
