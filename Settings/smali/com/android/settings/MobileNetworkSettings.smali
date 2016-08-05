.class public Lcom/android/settings/MobileNetworkSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;,
        Lcom/android/settings/MobileNetworkSettings$MyHandler;,
        Lcom/android/settings/MobileNetworkSettings$SimStateReceive;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static isDoingNetworkMode:Z

.field private static isVolteEnabled:Z

.field private static mSetDsInprogress:Z

.field private static needSwitchNwMode:I

.field static preferredNetworkMode:I


# instance fields
.field private PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

.field private PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

.field private dataSimNames:[Ljava/lang/String;

.field private dataSimValues:[Ljava/lang/String;

.field private flymePushListener:Landroid/content/DialogInterface$OnClickListener;

.field private isCTA:Z

.field private isChinaMobile:Z

.field isSub1Active:Z

.field isSub2Active:Z

.field private isUnicom:Z

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mApnManagement:Landroid/preference/PreferenceScreen;

.field private mApnScreen:Landroid/preference/PreferenceScreen;

.field private mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

.field private mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

.field private mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

.field private mButtonGlobalData:Landroid/preference/PreferenceScreen;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCallState:[I

.field private mCardOneName:Ljava/lang/String;

.field private mCardTwoName:Ljava/lang/String;

.field private mCarrierManagement:Landroid/preference/PreferenceScreen;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataManagement:Landroid/preference/PreferenceScreen;

.field private mDataRoaming:Landroid/preference/PreferenceScreen;

.field private mDataSimListPre:Landroid/preference/ListPreference;

.field private mDataUseObserver:Landroid/database/ContentObserver;

.field private mDataUseObserverUsingSub:Landroid/database/ContentObserver;

.field private mDefaultDataSubId:I

.field private mEnable2G:Landroid/preference/CheckBoxPreference;

.field private mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

.field private mMobileTemplate:Landroid/net/NetworkTemplate;

.field private mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

.field private mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

.field private mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

.field private mOkClicked:Z

.field private mOperatorSummaryRunner:Ljava/lang/Runnable;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPreferredLtePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPreferredNetworkModeObserverWithSub:Landroid/database/ContentObserver;

.field private mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

.field private mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

.field private mSimNum:I

.field private mSubIntentFilter:Landroid/content/IntentFilter;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private simStateReceive:Lcom/android/settings/MobileNetworkSettings$SimStateReceive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/settings/MobileNetworkSettings;->preferredNetworkMode:I

    .line 226
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/MobileNetworkSettings;->needSwitchNwMode:I

    .line 238
    sput-boolean v1, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    .line 241
    sput-boolean v1, Lcom/android/settings/MobileNetworkSettings;->isVolteEnabled:Z

    .line 2088
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$8;

    invoke-direct {v0}, Lcom/android/settings/MobileNetworkSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 157
    iput-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    .line 186
    iput-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    .line 195
    iput-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    .line 196
    iput-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    .line 197
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->isUnicom:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->isChinaMobile:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->isCTA:Z

    .line 220
    iput v2, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    .line 227
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    .line 232
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    .line 1654
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$2;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileNetworkSettings$2;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 1665
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileNetworkSettings$3;-><init>(Lcom/android/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1685
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileNetworkSettings$4;-><init>(Lcom/android/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mOperatorSummaryRunner:Ljava/lang/Runnable;

    .line 1735
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileNetworkSettings$5;-><init>(Lcom/android/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->flymePushListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1917
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$6;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileNetworkSettings$6;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredNetworkModeObserverWithSub:Landroid/database/ContentObserver;

    .line 1928
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileNetworkSettings$7;-><init>(Lcom/android/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 2132
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$9;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileNetworkSettings$9;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    .line 2140
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$10;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileNetworkSettings$10;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserverUsingSub:Landroid/database/ContentObserver;

    .line 2148
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$11;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileNetworkSettings$11;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 7
    .param p1, "NetworkMode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1155
    const-string v1, ""

    .line 1156
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needHidePrefNetworkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/MobileNetworkSettings;->needSwitchNwMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needHidePrefNetworkMode true!!! change nw mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/MobileNetworkSettings;->needSwitchNwMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1163
    sget p1, Lcom/android/settings/MobileNetworkSettings;->needSwitchNwMode:I

    .line 1170
    :cond_1
    sget-object v2, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #com.android.settings:array@preferred_network_mode_choices_intl#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "network_title_array":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1181
    :sswitch_0
    aget-object v1, v0, v5

    .line 1182
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1177
    :sswitch_1
    aget-object v1, v0, v4

    .line 1178
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1185
    :sswitch_2
    aget-object v1, v0, v6

    .line 1186
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1189
    :sswitch_3
    const/4 v2, 0x3

    aget-object v1, v0, v2

    .line 1190
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1196
    .end local v0    # "network_title_array":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #com.android.settings:array@preferred_network_mode_choices_simple_mrvl#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    .restart local v0    # "network_title_array":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1203
    :sswitch_4
    aget-object v1, v0, v5

    .line 1204
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1199
    :sswitch_5
    aget-object v1, v0, v4

    .line 1200
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1207
    :sswitch_6
    aget-object v1, v0, v6

    .line 1208
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1278
    .end local v0    # "network_title_array":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #com.android.settings:array@preferred_network_mode_choices_simple#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1279
    .restart local v0    # "network_title_array":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1281
    :pswitch_0
    aget-object v1, v0, v4

    .line 1282
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1285
    :pswitch_1
    aget-object v1, v0, v5

    .line 1286
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1289
    :pswitch_2
    aget-object v1, v0, v6

    .line 1290
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1175
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x15 -> :sswitch_3
    .end sparse-switch

    .line 1197
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x15 -> :sswitch_6
    .end sparse-switch

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/settings/MobileNetworkSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateSimCount()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->refreshPreDataEnabledSummary()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/MobileNetworkSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/MobileNetworkSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/MobileNetworkSettings;)Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/MobileNetworkSettings;)Lcom/android/settings/MobileNetworkSettings$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/settings/MobileNetworkSettings;->isDoingNetworkMode:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/settings/MobileNetworkSettings;->isDoingNetworkMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/MobileNetworkSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/MobileNetworkSettings;->updateUiForSimCard(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/settings/MobileNetworkSettings;->isCTA:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/MobileNetworkSettings;->requestInputFlymePassword(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->requestCloseFlyme()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/MobileNetworkSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/MobileNetworkSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/MobileNetworkSettings;->registerPreferredNetworkModeObserverForSubRecordChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    return p0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/settings/MobileNetworkSettings;->isVolteEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/MobileNetworkSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/MobileNetworkSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/MobileNetworkSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/MobileNetworkSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->initPreferenceUI()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/MobileNetworkSettings;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserverUsingSub:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isIncall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/MobileNetworkSettings;)Lcom/meizu/settings/SimCardPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MobileNetworkSettings;)Lcom/meizu/settings/SimCardPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/MobileNetworkSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataSimListPre()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileNetworkSettings;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needHidePrefNetworkMode()Z

    move-result v0

    return v0
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1120
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "data_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1122
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getNetworkModeFromSetting()I
    .locals 5

    .prologue
    .line 1945
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilitySubId()I

    move-result v0

    .line 1946
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1950
    .local v1, "settingsNetworkMode":I
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkModeFromSetting  phoneSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 2179
    new-instance v0, Lcom/android/settings/MobileNetworkSettings$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/MobileNetworkSettings$12;-><init>(Lcom/android/settings/MobileNetworkSettings;II)V

    return-object v0
.end method

.method private initPreferenceUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1758
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1759
    const-string v1, "MobileNetworkSettings"

    const-string v2, "initPreferenceUI() and update UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateSimCount()V

    .line 1763
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateSimDisable()V

    .line 1764
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateSimPreference()V

    .line 1765
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1766
    invoke-direct {p0, v0}, Lcom/android/settings/MobileNetworkSettings;->updateUiForSimCard(Z)V

    .line 1768
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 1771
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->refreshPreDataEnabledSummary()V

    .line 1772
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataSim()V

    .line 1775
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataStateForOthorSim()V

    .line 1780
    :goto_0
    return-void

    .line 1778
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateSimDisable()V

    goto :goto_0
.end method

.method private isAirPlaneMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2025
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncall()Z
    .locals 3

    .prologue
    .line 2169
    const/4 v0, 0x0

    .line 2170
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mCallState:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mCallState:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_1

    .line 2172
    :cond_0
    const/4 v0, 0x1

    .line 2176
    :goto_0
    return v0

    .line 2174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportOnly3G()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1635
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object v1, v2

    .line 1636
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    :goto_0
    if-nez v1, :cond_1

    move v2, v3

    .line 1650
    :goto_1
    return v2

    .line 1635
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1638
    .restart local v1    # "tele":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 1640
    goto :goto_1

    .line 1647
    :cond_2
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    .line 1648
    goto :goto_1

    .line 1650
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1129
    const-string v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-void
.end method

.method private lookForPrefererredNetworkModeFromSetting(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v0

    .line 1303
    .local v0, "settingsNetworkMode":I
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0, v0}, Lcom/android/settings/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 1305
    return-void
.end method

.method private needHidePrefNetworkMode()Z
    .locals 5

    .prologue
    .line 1958
    const-string v3, "persist.radio.simswitch"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, "buf":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1960
    :cond_0
    const/4 v2, 0x0

    .line 1969
    :goto_0
    return v2

    .line 1961
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1962
    .local v1, "mainSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needHidePrefNetworkMode mainslot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1964
    const/4 v2, 0x0

    .line 1966
    .local v2, "needHide":Z
    if-nez v2, :cond_2

    .line 1967
    const/4 v3, -0x1

    sput v3, Lcom/android/settings/MobileNetworkSettings;->needSwitchNwMode:I

    .line 1968
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needHidePrefNetworkMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private needRemoveDataSimListPre()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2114
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilityPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->isSoftSim(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return v1

    .line 2118
    :cond_1
    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2121
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isAirPlaneMode()Z

    move-result v0

    .line 2122
    .local v0, "airPlaneModeOn":Z
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needRemoveDataSimListPre: airPlaneModeOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshPreDataEnabledSummary()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1885
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1886
    .local v0, "enabled":Z
    const-string v1, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 1888
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1889
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isAirPlaneMode()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1890
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-boolean v4, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v4, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isAirPlaneMode()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needHidePrefNetworkMode()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1892
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataSim()V

    .line 1893
    return-void

    :cond_2
    move v1, v3

    .line 1889
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1890
    goto :goto_1
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 2210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 2211
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    .line 2212
    .local v1, "subId":I
    if-ltz v1, :cond_0

    .line 2213
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v3, Landroid/telephony/PhoneStateListener;

    invoke-direct {v3}, Landroid/telephony/PhoneStateListener;-><init>()V

    aput-object v3, v2, v0

    .line 2214
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/MobileNetworkSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2215
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2217
    const-string v2, "MobileNetworkSettings"

    const-string v3, "Register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2219
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 2223
    .end local v1    # "subId":I
    :cond_1
    const-string v2, "MobileNetworkSettings"

    const-string v3, "Register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void
.end method

.method private registerPreferredNetworkModeObserver()V
    .locals 5

    .prologue
    .line 1907
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilitySubId()I

    move-result v0

    .line 1908
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredNetworkModeObserverWithSub:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1910
    const-string v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register registerPreferredNetworkModeObserver phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return-void
.end method

.method private registerPreferredNetworkModeObserverForSubRecordChange(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1897
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.ACTION_MAIN_SLOT_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1900
    :cond_0
    const-string v0, "MobileNetworkSettings"

    const-string v1, "registerPreferredNetworkModeObserverForSubRecordChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MobileNetworkSettings;->lookForPrefererredNetworkModeFromSetting(Landroid/content/Context;)V

    .line 1902
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->unregisterPreferredNetworkModeObserver()V

    .line 1903
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->registerPreferredNetworkModeObserver()V

    .line 1905
    :cond_1
    return-void
.end method

.method private requestCloseFlyme()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1626
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_sip_feature"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1627
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "internet_message_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1628
    return-void
.end method

.method private requestInputFlymePassword(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.meizu.account.VALIDATEPASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1073
    return-void
.end method

.method private requestOpenFlyme()V
    .locals 3

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_sip_feature"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1632
    return-void
.end method

.method private setDataOnRoamingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1109
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1112
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 1109
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileNetworksEnabled(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 677
    const-string v1, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworksEnabled flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 684
    .local v0, "enabled":Z
    const-string v1, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworksEnabled enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 686
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needHidePrefNetworkMode()Z

    move-result v4

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    if-nez v4, :cond_6

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 690
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 693
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 694
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 695
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mApnScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    .line 696
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mApnScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 698
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 686
    goto :goto_0

    :cond_6
    move v2, v3

    .line 689
    goto :goto_1
.end method

.method private setSimPrefEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1790
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePrefEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/meizu/settings/SimCardPreference;->setEnabled(Z)V

    .line 1792
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/meizu/settings/SimCardPreference;->setEnabled(Z)V

    .line 1793
    return-void

    :cond_0
    move v0, v2

    .line 1791
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1792
    goto :goto_1
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 2197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2198
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2199
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2200
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2202
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2203
    const-string v1, "MobileNetworkSettings"

    const-string v2, "Register unregisterPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2207
    :cond_1
    return-void
.end method

.method private unregisterPreferredNetworkModeObserver()V
    .locals 2

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredNetworkModeObserverWithSub:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1914
    const-string v0, "MobileNetworkSettings"

    const-string v1, "Register unregisterPreferredNetworkModeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    return-void
.end method

.method private updateDataSim()V
    .locals 5

    .prologue
    const v4, #com.android.settings:string@data_sim_default_name#t

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2029
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 2030
    iget v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2031
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->getDefaultDataSlotId()I

    move-result v0

    if-nez v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2033
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->getDefaultDataSlotId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2035
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2036
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2038
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2040
    :cond_3
    iget v0, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    if-ne v0, v3, :cond_4

    .line 2041
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2042
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2044
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataSimListPre()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->isDualCardOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needRemoveDataSimListPre()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2059
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilityPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->isSoftSim(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2060
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 2062
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateDataStateForOthorSim()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2071
    iget v2, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2072
    .local v0, "curDataSlotId":I
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataState2OthorSim() curDataSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultDataSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/4 v1, -0x1

    .line 2074
    .local v1, "otherSubId":I
    if-nez v0, :cond_2

    .line 2075
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    .line 2079
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isValidSubId(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2081
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 2082
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataState2OthorSim() set other sim data Enable curDataSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " otherSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_1
    return-void

    .line 2076
    :cond_2
    if-ne v0, v5, :cond_0

    .line 2077
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method private updateSimCount()V
    .locals 7

    .prologue
    const v6, #com.android.settings:string@no_sim_card#t

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1813
    iput v4, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    .line 1814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1816
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 1817
    iget v3, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    .line 1818
    if-nez v0, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/meizu/settings/MzMobileNetworksUtils;->getCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mCardOneName:Ljava/lang/String;

    .line 1820
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v3, v5}, Lcom/meizu/settings/SimCardPreference;->setRightArrow(Z)V

    .line 1815
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/meizu/settings/MzMobileNetworksUtils;->getCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mCardTwoName:Ljava/lang/String;

    .line 1823
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v3, v5}, Lcom/meizu/settings/SimCardPreference;->setRightArrow(Z)V

    goto :goto_1

    .line 1826
    :cond_1
    if-nez v0, :cond_2

    .line 1832
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mCardOneName:Ljava/lang/String;

    .line 1834
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v3, v4}, Lcom/meizu/settings/SimCardPreference;->setRightArrow(Z)V

    goto :goto_1

    .line 1837
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mCardTwoName:Ljava/lang/String;

    .line 1838
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v3, v4}, Lcom/meizu/settings/SimCardPreference;->setRightArrow(Z)V

    goto :goto_1

    .line 1842
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #com.android.settings:string@sim_1#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardOneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #com.android.settings:string@sim_2#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardTwoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    .line 1845
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    .line 1846
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1847
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1848
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 1846
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1850
    :cond_4
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1851
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimNames:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1852
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->dataSimValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1854
    :cond_5
    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimCount: mSimNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    return-void
.end method

.method private updateSimDisable()V
    .locals 8

    .prologue
    const v7, #com.android.settings:string@sim_disable#t

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1858
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    .line 1859
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    .line 1862
    iget-object v5, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 1863
    .local v1, "isSub1Present":Z
    iget-object v5, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 1867
    .local v2, "isSub2Present":Z
    const/4 v3, 0x0

    .line 1868
    .local v3, "res":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1869
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1871
    :cond_0
    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 1872
    .local v0, "bAirState":Z
    :goto_0
    const-string v4, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimDisable bAirState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSub1Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSub2Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-boolean v4, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1875
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardOneName:Ljava/lang/String;

    .line 1876
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1877
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardTwoName:Ljava/lang/String;

    .line 1880
    :cond_2
    return-void

    .end local v0    # "bAirState":Z
    :cond_3
    move v0, v4

    .line 1871
    goto :goto_0
.end method

.method private updateSimPreference()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1783
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardOneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/settings/SimCardPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1784
    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCardTwoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/settings/SimCardPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1785
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 1787
    .local v0, "airplaneOn":Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/MobileNetworkSettings;->setSimPrefEnabled(Z)V

    .line 1788
    return-void

    .end local v0    # "airplaneOn":Z
    :cond_0
    move v0, v2

    .line 1785
    goto :goto_0

    .restart local v0    # "airplaneOn":Z
    :cond_1
    move v1, v2

    .line 1787
    goto :goto_1
.end method

.method private updateUiForSimCard(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1795
    const-string v1, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUiForSimCard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isAirPlaneMode()Z

    move-result v0

    .line 1798
    .local v0, "airPlaneModeOn":Z
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 1799
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_b

    :cond_0
    if-nez v0, :cond_b

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataRoaming:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 1801
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataRoaming:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_c

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_c

    :cond_2
    if-nez v0, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1802
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataManagement:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_5

    .line 1803
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataManagement:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_d

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_d

    :cond_4
    if-nez v0, :cond_d

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1804
    :cond_5
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mApnManagement:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 1805
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mApnManagement:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_e

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_e

    :cond_6
    if-nez v0, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1806
    :cond_7
    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_9

    .line 1807
    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p1, :cond_f

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_f

    :cond_8
    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isIncall()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 1809
    :cond_9
    if-eqz p1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v1, :cond_10

    :cond_a
    if-nez v0, :cond_10

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/settings/MobileNetworkSettings;->setMobileNetworksEnabled(Z)V

    .line 1810
    return-void

    :cond_b
    move v1, v3

    .line 1799
    goto :goto_0

    :cond_c
    move v1, v3

    .line 1801
    goto :goto_1

    :cond_d
    move v1, v3

    .line 1803
    goto :goto_2

    :cond_e
    move v1, v3

    .line 1805
    goto :goto_3

    :cond_f
    move v1, v3

    .line 1807
    goto :goto_4

    :cond_10
    move v2, v3

    .line 1809
    goto :goto_5
.end method

.method private verifyToCloseFlymePush()V
    .locals 3

    .prologue
    .line 1094
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #com.android.settings:string@flyme_push_dialog_content#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #com.android.settings:string@flyme_push_dialog_title#t

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->flymePushListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->flymePushListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1101
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1078
    packed-switch p1, :pswitch_data_0

    .line 1089
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1091
    return-void

    .line 1080
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1081
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->requestCloseFlyme()V

    .line 1082
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1078
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 245
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 246
    invoke-direct {p0, v2}, Lcom/android/settings/MobileNetworkSettings;->setDataOnRoamingEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 253
    iput-boolean v2, p0, Lcom/android/settings/MobileNetworkSettings;->mOkClicked:Z

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 428
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 429
    sget-object v12, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    const-string v13, "cta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/settings/MobileNetworkSettings;->isCTA:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 432
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 433
    const v12, #com.android.settings:xml@mz_ds_network_setting#t

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 439
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v2, 0x1

    .line 442
    .local v2, "isSecondaryUser":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 443
    .local v7, "prefSet":Landroid/preference/PreferenceScreen;
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 444
    const-string v12, "pref_key_slot_one"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/SimCardPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    .line 445
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v12, p0}, Lcom/meizu/settings/SimCardPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 446
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/meizu/settings/SimCardPreference;->setSimIcon(I)V

    .line 447
    const-string v12, "pref_key_slot_two"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/SimCardPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    .line 448
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    invoke-virtual {v12, p0}, Lcom/meizu/settings/SimCardPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/meizu/settings/SimCardPreference;->setSimIcon(I)V

    .line 450
    const-string v12, "data_sim"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    .line 452
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-virtual {v12, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    const-string v12, "button_data_management_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataManagement:Landroid/preference/PreferenceScreen;

    .line 454
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataManagement:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_0
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilityPhoneId()I

    move-result v12

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/meizu/settings/MzMobileNetworksUtils;->isSoftSim(ILandroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 458
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    .line 462
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    .line 463
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v12

    sput-boolean v12, Lcom/android/settings/MobileNetworkSettings;->isVolteEnabled:Z

    .line 465
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 467
    const-string v12, "button_data_enabled_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    .line 468
    const-string v12, "button_roaming_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    .line 469
    const-string v12, "preferred_network_mode_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 471
    const-string v12, "flyme_push_button"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    .line 472
    const-string v12, "button_enable_2g_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    .line 473
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 474
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mCallState:[I

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v12, 0x2

    if-ge v0, v12, :cond_4

    .line 477
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mCallState:[I

    const/4 v13, 0x0

    aput v13, v12, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 435
    .end local v0    # "i":I
    .end local v2    # "isSecondaryUser":Z
    .end local v7    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_2
    const v12, #com.android.settings:xml@network_setting#t

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 439
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 479
    .restart local v0    # "i":I
    .restart local v2    # "isSecondaryUser":Z
    .restart local v7    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_4
    const/4 v12, 0x2

    new-array v12, v12, [Landroid/telephony/PhoneStateListener;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 481
    const-string v12, "global_data_key"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonGlobalData:Landroid/preference/PreferenceScreen;

    .line 482
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    const-string v13, "com.meizu.intent.action.TO_BUY_GLOBAL_DATA"

    invoke-static {v12, v13}, Lcom/meizu/settings/MzMobileNetworksUtils;->isIntentExisting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 483
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonGlobalData:Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_5

    .line 484
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonGlobalData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    :cond_5
    sget-object v12, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 495
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_choices_intl#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_values_intl_mrvl#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "network_id_arry":[Ljava/lang/String;
    :goto_3
    const/16 v12, 0x15

    sput v12, Lcom/android/settings/MobileNetworkSettings;->preferredNetworkMode:I

    .line 526
    :goto_4
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 527
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 528
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v8

    .line 531
    .local v8, "settingsNetworkMode":I
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 533
    sget v12, Lcom/android/settings/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-direct {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 535
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    if-nez v12, :cond_7

    .line 536
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    if-nez v12, :cond_6

    .line 537
    new-instance v12, Lcom/android/settings/MobileNetworkSettings$MyHandler;

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/android/settings/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    .line 538
    :cond_6
    new-instance v3, Landroid/os/HandlerThread;

    const-string v12, "NetworkType Thread"

    invoke-direct {v3, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 539
    .local v3, "mNetworkTypeThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 540
    new-instance v12, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;-><init>(Lcom/android/settings/MobileNetworkSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    .line 543
    .end local v3    # "mNetworkTypeThread":Landroid/os/HandlerThread;
    :cond_7
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 546
    const-string v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 547
    .local v11, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 548
    .local v10, "user":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    .line 551
    .local v1, "isGuestUser":Z
    :goto_5
    const-string v12, "button_carrier_sel_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    .line 553
    const-string v12, "button_apn_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mApnScreen:Landroid/preference/PreferenceScreen;

    .line 555
    new-instance v12, Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 556
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v12}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 557
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 560
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mMobileTemplate:Landroid/net/NetworkTemplate;

    .line 563
    sget-object v12, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 564
    const-string v12, "preferred_network_mode_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 565
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 569
    :cond_8
    iget-boolean v12, p0, Lcom/android/settings/MobileNetworkSettings;->isCTA:Z

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v12, :cond_9

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    :cond_9
    const-string v12, "preferred_network_mode_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 576
    const-string v12, "data_roaming_settings"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDataRoaming:Landroid/preference/PreferenceScreen;

    .line 577
    const-string v12, "button_apn_management_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mApnManagement:Landroid/preference/PreferenceScreen;

    .line 578
    const-string v12, "button_carrier_management_key"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    .line 579
    const-string v12, "preferred_lte_data_only"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredLtePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 581
    const-string v12, "enhanced_4g_lte"

    invoke-virtual {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    .line 582
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 584
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 586
    :cond_a
    const-string v12, "enhanced_4g_lte"

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 587
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_b

    .line 588
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_b
    sget-object v12, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 601
    :cond_c
    :goto_6
    if-eqz v2, :cond_e

    .line 602
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_d

    .line 603
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 604
    :cond_d
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_e

    .line 605
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkCarrierScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 608
    :cond_e
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/settings/MobileNetworkSettings;->setMobileNetworksEnabled(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 612
    new-instance v12, Lcom/meizu/settings/MzSettingsToast;

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/meizu/settings/MzSettingsToast;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

    .line 616
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->initPreferenceUI()V

    .line 617
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataSimListPre()V

#hxs add remove network type settings begin
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
#hxs add remove network type settings end

    .line 619
    return-void

    .line 499
    .end local v1    # "isGuestUser":Z
    .end local v4    # "network_id_arry":[Ljava/lang/String;
    .end local v5    # "network_title_arry":[Ljava/lang/String;
    .end local v8    # "settingsNetworkMode":I
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    .end local v11    # "userManager":Landroid/os/UserManager;
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_choices_simple_mrvl#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 500
    .restart local v5    # "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_values_simple_mrvl#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "network_id_arry":[Ljava/lang/String;
    goto/16 :goto_3

    .line 522
    .end local v4    # "network_id_arry":[Ljava/lang/String;
    .end local v5    # "network_title_arry":[Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_choices_simple#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, #com.android.settings:array@preferred_network_mode_values_simple#t

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "network_id_arry":[Ljava/lang/String;
    goto/16 :goto_4

    .line 548
    .restart local v8    # "settingsNetworkMode":I
    .restart local v10    # "user":Landroid/content/pm/UserInfo;
    .restart local v11    # "userManager":Landroid/os/UserManager;
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 595
    .restart local v1    # "isGuestUser":Z
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_12
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredLtePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_c

    .line 596
    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mPreferredLtePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/settings/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1135
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->finish()V

    .line 1148
    const/4 v1, 0x1

    .line 1150
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 869
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->simStateReceive:Lcom/android/settings/MobileNetworkSettings$SimStateReceive;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 877
    const-string v0, "MobileNetworkSettings"

    const-string v1, "onPause: unregisterContentObserver mDataUseObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->unregisterPhoneStateListener()V

    .line 892
    :cond_1
    return-void

    .line 879
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 880
    const-string v0, "MobileNetworkSettings"

    const-string v1, "onPause: unregisterContentObserver mMultiSimDataCallSubObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget v0, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->isValidSubId(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "MobileNetworkSettings"

    const-string v1, "onPause: unregisterContentObserver mDataUseObserverUsingSub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserverUsingSub:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 23
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-object/from16 v19, v0

    const-string v20, "MobileNetworkSettings"

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v19, p2

    .line 913
    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 914
    .local v5, "buttonNetworkMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v13

    .line 919
    .local v13, "settingsNetworkMode":I
    packed-switch v5, :pswitch_data_0

    .line 955
    :pswitch_0
    sget v9, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 961
    .local v9, "modemNetworkMode":I
    :goto_0
    sget v19, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    move/from16 v0, v19

    if-ne v9, v0, :cond_0

    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v13, v0, :cond_0

    .line 963
    const/16 v19, 0x1

    .line 1066
    .end local v5    # "buttonNetworkMode":I
    .end local v9    # "modemNetworkMode":I
    .end local v13    # "settingsNetworkMode":I
    .end local p2    # "objValue":Ljava/lang/Object;
    :goto_1
    return v19

    .line 921
    .restart local v5    # "buttonNetworkMode":I
    .restart local v13    # "settingsNetworkMode":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :pswitch_1
    const/4 v9, 0x7

    .line 922
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 924
    .end local v9    # "modemNetworkMode":I
    :pswitch_2
    const/4 v9, 0x6

    .line 925
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 927
    .end local v9    # "modemNetworkMode":I
    :pswitch_3
    const/4 v9, 0x5

    .line 928
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 930
    .end local v9    # "modemNetworkMode":I
    :pswitch_4
    const/4 v9, 0x4

    .line 931
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 933
    .end local v9    # "modemNetworkMode":I
    :pswitch_5
    const/4 v9, 0x3

    .line 934
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 936
    .end local v9    # "modemNetworkMode":I
    :pswitch_6
    const/4 v9, 0x2

    .line 937
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 939
    .end local v9    # "modemNetworkMode":I
    :pswitch_7
    const/4 v9, 0x1

    .line 940
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 942
    .end local v9    # "modemNetworkMode":I
    :pswitch_8
    const/4 v9, 0x0

    .line 943
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 948
    .end local v9    # "modemNetworkMode":I
    :pswitch_9
    const/16 v9, 0x15

    .line 949
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 952
    .end local v9    # "modemNetworkMode":I
    :pswitch_a
    const/16 v9, 0x9

    .line 953
    .restart local v9    # "modemNetworkMode":I
    goto :goto_0

    .line 966
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1022
    .end local v5    # "buttonNetworkMode":I
    .end local v9    # "modemNetworkMode":I
    .end local v13    # "settingsNetworkMode":I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1026
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1028
    .local v16, "targetDataSim":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1029
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->getDefaultDataSlotId()I

    move-result v6

    .line 1030
    .local v6, "dataSimSlot":I
    const-string v19, "MobileNetworkSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onPreferenceChange dataSimSlot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "targetDataSim = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move/from16 v0, v16

    if-eq v6, v0, :cond_a

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v14

    .line 1034
    .local v14, "slot1CallState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v15

    .line 1035
    .local v15, "slot2CallState":I
    if-nez v14, :cond_2

    if-eqz v15, :cond_8

    .line 1037
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mobile_data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1039
    .local v8, "mDataUse":I
    const-string v19, "MobileNetworkSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mDataSimListPre change: mDataUse = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with sub"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mNetworkTypeProcessHandler:Lcom/android/settings/MobileNetworkSettings$MyHandler;

    move-object/from16 v20, v0

    const/16 v20, 0x4

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/settings/MobileNetworkSettings$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 1041
    .local v10, "msg":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, #com.android.settings:string@failed_sim_switch#t

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 1043
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 973
    .end local v6    # "dataSimSlot":I
    .end local v8    # "mDataUse":I
    .end local v10    # "msg":Landroid/os/Message;
    .end local v14    # "slot1CallState":I
    .end local v15    # "slot2CallState":I
    .end local v16    # "targetDataSim":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v19, p2

    .line 974
    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 975
    .local v18, "value":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 977
    if-eqz v18, :cond_4

    const/4 v5, 0x1

    .line 978
    .restart local v5    # "buttonNetworkMode":I
    :goto_3
    const-string v19, "MobileNetworkSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "user set "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v13

    .line 980
    .restart local v13    # "settingsNetworkMode":I
    if-eq v5, v13, :cond_1

    .line 982
    packed-switch v5, :pswitch_data_1

    .line 990
    sget v9, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 996
    .restart local v9    # "modemNetworkMode":I
    :goto_4
    sget v19, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v13, v0, :cond_5

    .line 998
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 977
    .end local v5    # "buttonNetworkMode":I
    .end local v9    # "modemNetworkMode":I
    .end local v13    # "settingsNetworkMode":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 984
    .restart local v5    # "buttonNetworkMode":I
    .restart local v13    # "settingsNetworkMode":I
    :pswitch_b
    const/4 v9, 0x1

    .line 985
    .restart local v9    # "modemNetworkMode":I
    goto :goto_4

    .line 987
    .end local v9    # "modemNetworkMode":I
    :pswitch_c
    const/4 v9, 0x0

    .line 988
    .restart local v9    # "modemNetworkMode":I
    goto :goto_4

    .line 1000
    :cond_5
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->get34GCapabilitySubId()I

    move-result v12

    .line 1002
    .local v12, "phoneSubId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "preferred_network_mode"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSetNetworkTypeHandler:Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/MobileNetworkSettings$SetNetworkTypeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1010
    .end local v5    # "buttonNetworkMode":I
    .end local v9    # "modemNetworkMode":I
    .end local v12    # "phoneSubId":I
    .end local v13    # "settingsNetworkMode":I
    .end local v18    # "value":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v11, p2

    .line 1012
    check-cast v11, Ljava/lang/Boolean;

    .line 1013
    .local v11, "newValue":Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->requestOpenFlyme()V

    .line 1015
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 1018
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->verifyToCloseFlymePush()V

    .line 1019
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1046
    .end local v11    # "newValue":Ljava/lang/Boolean;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v6    # "dataSimSlot":I
    .restart local v14    # "slot1CallState":I
    .restart local v15    # "slot2CallState":I
    .restart local v16    # "targetDataSim":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v17

    .line 1047
    .local v17, "targetDataSub":I
    const-string v19, "MobileNetworkSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onPreferenceChange targetDataSub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1050
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/MobileNetworkSettings;->mSetDsInprogress:Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    .line 1058
    .end local v6    # "dataSimSlot":I
    .end local v14    # "slot1CallState":I
    .end local v15    # "slot2CallState":I
    .end local v17    # "targetDataSub":I
    :cond_9
    :goto_5
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 1053
    .restart local v6    # "dataSimSlot":I
    :cond_a
    const-string v19, "MobileNetworkSettings"

    const-string v20, "onPreferenceChange same slot do nothing"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1055
    .end local v6    # "dataSimSlot":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1056
    const-string v19, "MobileNetworkSettings"

    const-string v20, "onPreferenceChange single sim case no need set data sim"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1059
    .end local v16    # "targetDataSim":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MobileNetworkSettings;->mButton4glte:Lcom/meizu/common/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-object/from16 v7, p1

    .line 1060
    check-cast v7, Lcom/meizu/common/preference/SwitchPreference;

    .line 1061
    .local v7, "ltePref":Lcom/meizu/common/preference/SwitchPreference;
    invoke-virtual {v7}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_e

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 1062
    const-string v19, "MobileNetworkSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onPreferenceChange mButton4glte isChecked: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual {v7}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 1066
    .end local v7    # "ltePref":Lcom/meizu/common/preference/SwitchPreference;
    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 1061
    .restart local v7    # "ltePref":Lcom/meizu/common/preference/SwitchPreference;
    :cond_e
    const/16 v19, 0x0

    goto :goto_6

    .line 919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 982
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 20
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v3, "MobileNetworkSettings"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 278
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->mOkClicked:Z

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 285
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #com.android.settings:string@roaming_warning#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    :goto_0
    const/4 v2, 0x1

    .line 422
    :goto_1
    return v2

    .line 294
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/MobileNetworkSettings;->setDataOnRoamingEnabled(Z)V

    goto :goto_0

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 298
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v16

    .line 303
    .local v16, "dataSubId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isValidSubId(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

    const v3, #com.android.settings:string@data_enable_forbidden#t

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/meizu/settings/MzSettingsToast;->show(II)V

    .line 314
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is radio off, dispaly toast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 330
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 311
    :cond_3
    new-instance v2, Lcom/meizu/settings/MzSettingsToast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/settings/MzSettingsToast;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimDataDisableToast:Lcom/meizu/settings/MzSettingsToast;

    const v3, #com.android.settings:string@data_enable_forbidden#t

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/meizu/settings/MzSettingsToast;->show(II)V

    goto :goto_2

    .line 315
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 316
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->getDefaultDataSlotId()I

    move-result v14

    .line 317
    .local v14, "curDataPhoneId":I
    const/16 v19, -0x5

    .line 318
    .local v19, "targetDataSub":I
    if-nez v14, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v19

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    .line 325
    :cond_5
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curDataPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetDataSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 321
    :cond_6
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v19

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    goto :goto_4

    .line 333
    .end local v14    # "curDataPhoneId":I
    .end local v16    # "dataSubId":I
    .end local v19    # "targetDataSub":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v18

    .line 335
    .local v18, "settingsNetworkMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 336
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 337
    .end local v18    # "settingsNetworkMode":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v18

    .line 339
    .restart local v18    # "settingsNetworkMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/MobileNetworkSettings;->mEnable2G:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 339
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 342
    .end local v18    # "settingsNetworkMode":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotOne:Lcom/meizu/settings/SimCardPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 343
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == PreferenceSlotOne"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v7, "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v4, "com.meizu.settings.MzSimInfoEditor"

    const v5, #com.android.settings:string@sim_management#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 348
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->PreferenceSlotTwo:Lcom/meizu/settings/SimCardPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 349
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == PreferenceSlotTwo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 351
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v4, "com.meizu.settings.MzSimInfoEditor"

    const v5, #com.android.settings:string@sim_management#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 353
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 354
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mDataManagement:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 355
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == mDataManagement"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v10, "com.meizu.settings.DataSettingManagement"

    const v11, #com.android.settings:string@data_enabled#t

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 357
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 358
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mApnManagement:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_11

    .line 359
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == mApnManagement"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v2, :cond_f

    .line 362
    const-string v10, "com.meizu.settings.ApnSettingManagement"

    const v11, #com.android.settings:string@apn_settings#t

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 373
    :cond_e
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 363
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-eqz v2, :cond_10

    .line 364
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 365
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    const-string v4, "com.android.settings.ApnSettings"

    const v5, #com.android.settings:string@apn_settings#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_6

    .line 367
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v2, :cond_e

    .line 368
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 369
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    const-string v4, "com.android.settings.ApnSettings"

    const v5, #com.android.settings:string@apn_settings#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_6

    .line 374
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mCarrierManagement:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_15

    .line 375
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == mCarrierManagement"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v2, :cond_13

    .line 378
    const-string v10, "com.meizu.settings.NetworkSettingManagement"

    const v11, #com.android.settings:string@networks#t

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 389
    :cond_12
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 379
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub1Active:Z

    if-eqz v2, :cond_14

    .line 380
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 381
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v4, "com.android.settings.NetworkSetting"

    const v5, #com.android.settings:string@networks#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_7

    .line 383
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/MobileNetworkSettings;->isSub2Active:Z

    if-eqz v2, :cond_12

    .line 384
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 385
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v2, "slot"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    const-string v4, "com.android.settings.NetworkSetting"

    const v5, #com.android.settings:string@networks#t

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_7

    .line 390
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mDataRoaming:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_16

    .line 391
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onPreferenceTreeClick: preference == mDataRoaming"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v10, "com.meizu.settings.SimDataRoamingSettings"

    const v11, #com.android.settings:string@roaming#t

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 393
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 396
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mPreferredLtePreferenceScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_17

    .line 397
    const-string v10, "com.meizu.settings.DataOnlySettings"

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/MobileNetworkSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 398
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 400
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1a

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 402
    invoke-static {}, Lcom/meizu/settings/MzMobileNetworksUtils;->getDefaultDataSlotId()I

    move-result v15

    .line 403
    .local v15, "dataSimSlot":I
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataSimListPre dataSimSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    .end local v15    # "dataSimSlot":I
    :cond_18
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 405
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 406
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataSimListPre mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/MobileNetworkSettings;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mDataSimListPre:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 411
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MobileNetworkSettings;->mButtonGlobalData:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1b

    .line 412
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.meizu.intent.action.TO_BUY_GLOBAL_DATA"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v17, "globalData":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 414
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 422
    .end local v17    # "globalData":Landroid/content/Intent;
    :cond_1b
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 736
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 744
    .local v8, "tele":Landroid/telephony/TelephonyManager;
    sget-object v10, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 747
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_choices_intl#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_values_intl_mrvl#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 796
    .end local v4    # "network_title_arry":[Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v10, Lcom/android/settings/MobileNetworkSettings$SimStateReceive;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/MobileNetworkSettings$SimStateReceive;-><init>(Lcom/android/settings/MobileNetworkSettings;Lcom/android/settings/MobileNetworkSettings$1;)V

    iput-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->simStateReceive:Lcom/android/settings/MobileNetworkSettings$SimStateReceive;

    .line 797
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 798
    .local v7, "simIntentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/MobileNetworkSettings;->simStateReceive:Lcom/android/settings/MobileNetworkSettings$SimStateReceive;

    invoke-virtual {v10, v11, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 806
    const-string v10, "MobileNetworkSettings"

    const-string v11, "onResume: simcont = 1 registerContentObserver with MOBILE_DATA"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mobile_data"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 822
    :cond_1
    :goto_1
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mSubIntentFilter:Landroid/content/IntentFilter;

    .line 823
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mSubIntentFilter:Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mSubIntentFilter:Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.ACTION_MAIN_SLOT_CHANGED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/MobileNetworkSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/settings/MobileNetworkSettings;->mSubIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    const/4 v5, 0x0

    .line 828
    .local v5, "res":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/MobileNetworkSettings;->lookForPrefererredNetworkModeFromSetting(Landroid/content/Context;)V

    .line 832
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->registerPhoneStateListener()V

    .line 837
    :cond_3
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v10}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 839
    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    const/4 v2, 0x1

    .line 840
    .local v2, "bAirState":Z
    :goto_2
    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 854
    :cond_4
    :goto_3
    iget-boolean v10, p0, Lcom/android/settings/MobileNetworkSettings;->isUnicom:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/android/settings/MobileNetworkSettings;->isChinaMobile:Z

    if-eqz v10, :cond_7

    .line 855
    :cond_5
    const/4 v9, 0x1

    .line 856
    .local v9, "valFlyme":I
    if-eqz v5, :cond_6

    .line 857
    const-string v10, "enable_sip_feature"

    const/4 v11, 0x1

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 858
    :cond_6
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v10, :cond_7

    .line 859
    iget-object v11, p0, Lcom/android/settings/MobileNetworkSettings;->mFlymePush:Lcom/meizu/common/preference/SwitchPreference;

    if-lez v9, :cond_f

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v10}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 861
    .end local v9    # "valFlyme":I
    :cond_7
    new-instance v10, Lcom/android/settings/MobileNetworkSettings$1;

    iget-object v11, p0, Lcom/android/settings/MobileNetworkSettings;->mOperatorSummaryRunner:Ljava/lang/Runnable;

    invoke-direct {v10, p0, v11}, Lcom/android/settings/MobileNetworkSettings$1;-><init>(Lcom/android/settings/MobileNetworkSettings;Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Lcom/android/settings/MobileNetworkSettings$1;->start()V

    .line 862
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->initPreferenceUI()V

    .line 863
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    iput v10, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    .line 864
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->updateDataSimListPre()V

    .line 865
    return-void

    .line 751
    .end local v2    # "bAirState":Z
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v7    # "simIntentFilter":Landroid/content/IntentFilter;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_choices_simple_mrvl#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 752
    .restart local v4    # "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_values_simple_mrvl#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "network_id_arry":[Ljava/lang/String;
    goto/16 :goto_0

    .line 772
    .end local v3    # "network_id_arry":[Ljava/lang/String;
    .end local v4    # "network_title_arry":[Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->isSupportOnly3G()Z

    move-result v10

    if-nez v10, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_choices_simple#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 774
    .restart local v4    # "network_title_arry":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #com.android.settings:array@preferred_network_mode_values_simple#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 775
    .restart local v3    # "network_id_arry":[Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 776
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    new-array v1, v10, [Ljava/lang/String;

    .line 777
    .local v1, "arrayTitle":[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 778
    .local v0, "arrayId":[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v4

    add-int/lit8 v12, v12, -0x1

    invoke-static {v4, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    move-object v4, v1

    .line 781
    move-object v3, v0

    .line 782
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v10, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 783
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v10, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 784
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getNetworkModeFromSetting()I

    move-result v6

    .line 785
    .local v6, "settingsNetworkMode":I
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0, v6}, Lcom/android/settings/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    goto/16 :goto_0

    .line 810
    .end local v0    # "arrayId":[Ljava/lang/String;
    .end local v1    # "arrayTitle":[Ljava/lang/String;
    .end local v3    # "network_id_arry":[Ljava/lang/String;
    .end local v4    # "network_title_arry":[Ljava/lang/String;
    .end local v6    # "settingsNetworkMode":I
    .restart local v7    # "simIntentFilter":Landroid/content/IntentFilter;
    :cond_a
    const-string v10, "MobileNetworkSettings"

    const-string v11, "onResume: simcont = 2 registerContentObserver with MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_sim_data_call"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 813
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    iput v10, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    .line 814
    iget v10, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    iget-object v11, p0, Lcom/android/settings/MobileNetworkSettings;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/meizu/settings/MzMobileNetworksUtils;->isValidSubId(ILandroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 815
    const-string v10, "MobileNetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume: registerContentObserver mDataUseObserverUsingSub with sub"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mobile_data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/MobileNetworkSettings;->mDefaultDataSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserverUsingSub:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 839
    .restart local v5    # "res":Landroid/content/ContentResolver;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 843
    .restart local v2    # "bAirState":Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 845
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_d

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_e

    :cond_d
    sget-boolean v10, Lcom/android/settings/MobileNetworkSettings;->isDoingNetworkMode:Z

    if-nez v10, :cond_e

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->needHidePrefNetworkMode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 849
    :cond_e
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v10, :cond_4

    .line 850
    iget-object v10, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 859
    .restart local v9    # "valFlyme":I
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_4
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 702
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 710
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 712
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataEnabled:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 713
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mButtonDataRoam:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->getDataOnRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 718
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v1, "networkModeFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEIZU_PREFERRED_NWM_PADDING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/MobileNetworkSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 728
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->registerPreferredNetworkModeObserver()V

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MobileNetworkSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v3, "MobileNetworkSettings"

    invoke-virtual {v2, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 896
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mDataUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 900
    invoke-virtual {p0}, Lcom/android/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileNetworkSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 901
    invoke-direct {p0}, Lcom/android/settings/MobileNetworkSettings;->unregisterPreferredNetworkModeObserver()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileNetworkSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "MobileNetworkSettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 904
    return-void
.end method
