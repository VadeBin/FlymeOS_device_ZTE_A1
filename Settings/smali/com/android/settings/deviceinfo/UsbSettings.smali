.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

.field private mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

.field private mCurrentFunction:Ljava/lang/String;

.field private mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

.field private mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/settings/deviceinfo/UsbPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbPreferenceList:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private addMtpTipCategory(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 301
    new-instance v0, Lcom/meizu/settings/deviceinfo/MtpTipCategory;

    invoke-direct {v0, p1}, Lcom/meizu/settings/deviceinfo/MtpTipCategory;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "mtpTipCategory":Lcom/meizu/settings/deviceinfo/MtpTipCategory;
    const v1, #com.android.settings:string@usb_mtp_tip_normal#t

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/MtpTipCategory;->setNormalStr(I)V

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #com.android.settings:string@usb_mtp_tip_url#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/MtpTipCategory;->setUrlStr(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 104
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 107
    :cond_0
    const v2, #com.android.settings:xml@mz_usb_settings#t

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

# hxs modify begin
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->addChargeOnlyAndBicrMode(Landroid/preference/PreferenceScreen;)V
# hxs modify end
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->addMtpTipCategory(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 117
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/deviceinfo/UsbPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    .line 118
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/deviceinfo/UsbPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    .line 119
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbPreferenceList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbPreferenceList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v0, v4}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 126
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2, v4}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 131
    :cond_1
    return-object v0
.end method

.method private reportData()V
    .locals 7

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "value":I
    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    const/4 v0, 0x1

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v1

    const-string v2, "UsbSettings"

    const-string v3, "insert_into_usb_hole"

    const-string v4, "use_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 311
    :cond_1
    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const/4 v0, 0x2

    goto :goto_0

    .line 313
    :cond_2
    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    const/4 v0, 0x3

    goto :goto_0

    .line 315
    :cond_3
    const-string v1, "bicr"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateAllPrefrenceStatus(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 298
    :cond_1
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v4, "mtp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 171
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 172
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 217
    .local v1, "um":Landroid/os/UserManager;
    sget-object v4, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "persist.sys.usb.activation"

    const-string v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "sys.usb.charging"

    const-string v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    .line 221
    .local v0, "mUnActivated":Z
    :goto_1
    const-string v4, "no_usb_file_transfer"

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_c

    .line 222
    :cond_2
    const-string v2, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB is locked down, mUnActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateAllPrefrenceStatus(Z)V

    .line 232
    :goto_2
    return-void

    .line 178
    .end local v0    # "mUnActivated":Z
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_3
    const-string v4, "ptp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 180
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 181
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_4

    .line 182
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 184
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 187
    :cond_5
    const-string v4, "charging"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 189
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 190
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_6

    .line 191
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 193
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_1

    .line 194
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 196
    :cond_7
    const-string v4, "bicr"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 197
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 198
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 199
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_8

    .line 200
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 202
    :cond_8
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 206
    :cond_9
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 207
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 208
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_a

    .line 209
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 211
    :cond_a
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_b
    move v0, v3

    .line 217
    goto/16 :goto_1

    .line 224
    .restart local v0    # "mUnActivated":Z
    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v4, :cond_d

    .line 226
    const-string v3, "UsbSettings"

    const-string v4, "USB Normal Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->updateAllPrefrenceStatus(Z)V

    goto/16 :goto_2

    .line 229
    :cond_d
    const-string v2, "UsbSettings"

    const-string v4, "USB Accessory Mode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateAllPrefrenceStatus(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->reportData()V

    .line 146
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 241
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v4

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 247
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v0, "none"

    .line 252
    .local v0, "function":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    const-string v0, "mtp"

    .line 259
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    const-string v0, "charging"

    .line 264
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const-string v0, "ptp"

    goto :goto_1

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {v2}, Lcom/meizu/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const-string v0, "bicr"

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 165
    return-void
.end method

# hxs modify begin
.method private addChargeOnlyAndBicrMode(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    new-instance v0, Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    const v1, #com.android.settings:string@usb_charge_title#t

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    const v1, #com.android.settings:string@usb_charge_summary#t

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    const v1, #com.android.settings:string@usb_bicr_title#t

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    const v1, #com.android.settings:string@usb_bicr_summary#t

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/UsbPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/meizu/settings/deviceinfo/UsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
# hxs modify end
