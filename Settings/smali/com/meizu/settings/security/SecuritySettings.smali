.class public Lcom/meizu/settings/security/SecuritySettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private mAppLock:Landroid/preference/Preference;

.field private mCreateFpExtraValue:Ljava/lang/String;

.field private mDocumentLockPreference:Landroid/preference/Preference;

.field private mFPPreference:Landroid/preference/Preference;

.field private mFPTotal:I

.field private mGuestModePreference:Landroid/preference/Preference;

.field private mIcclockSettingsChooserPref:Landroid/preference/Preference;

.field private mIcclockSettingsPref:Landroid/preference/Preference;

.field private mIsPrimary:Z

.field private mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

.field private mNeedShowPassword:Z

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPasswordCategory:Landroid/preference/PreferenceCategory;

.field private mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mRootPermissionPreference:Landroid/preference/Preference;

.field private mScreenLockPreference:Landroid/preference/Preference;

.field private mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUseFPUnlockPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 632
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$3;

    invoke-direct {v0}, Lcom/meizu/settings/security/SecuritySettings$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 114
    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    .line 123
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 619
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/SecuritySettings$2;-><init>(Lcom/meizu/settings/security/SecuritySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/SecuritySettings;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/SecuritySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/SecuritySettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/SecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/SecuritySettings$1;-><init>(Lcom/meizu/settings/security/SecuritySettings;)V

    return-object v0
.end method

.method private handleRootPermissionPreferenceClick()V
    .locals 6

    .prologue
    .line 374
    const-class v0, Lcom/meizu/settings/root/RootPermissionSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@root_permission_title#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 376
    return-void
.end method

.method private handleStartFPManagement(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/meizu/settings/security/SecuritySettings;->mCreateFpExtraValue:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/MzLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    .line 591
    :goto_0
    return-void

    .line 584
    :cond_0
    iget v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    if-lez v0, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startFPManagementFragment()V

    goto :goto_0

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startCreateFPActivity()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/MzLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    .line 136
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->registerSimInfoChangeReceiver()V

    .line 139
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->initPreference()V

    .line 140
    return-void
.end method

.method private initPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 407
    const v1, #com.android.settings:xml@keyguard_settings#t

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->addPreferencesFromResource(I)V

    .line 408
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 410
    .local v0, "root":Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    .line 411
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    .line 413
    const-string v1, "fp_management"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPPreference:Landroid/preference/Preference;

    .line 415
    const-string v1, "fp_unlock"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mUseFPUnlockPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 416
    const-string v1, "fp_payment"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 429
    const-string v1, "fp_category"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    const-string v1, "passcode_items"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    .line 435
    const-string v1, "screen_lock"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    .line 436
    const-string v1, "file_manager_lock"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    .line 437
    const-string v1, "add_password_control"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    .line 438
    const-string v1, "toggle_install_applications"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    .line 440
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 441
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 443
    const-string v1, "guest_mode"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    .line 444
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_0
    const-string v1, "manage_notification_access"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 450
    const-string v1, "root_permission"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    .line 451
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isRootPermissionOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    const-string v1, "security_items"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    .line 456
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->removePreferenceInGuestMode()V

    .line 457
    return-void

    .line 410
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private initSIMPreference(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 485
    const-string v0, "sim_lock_settings_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 488
    const-string v0, "sim_lock_chooser_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    const-string v4, "sim_lock_chooser_category"

    const-string v5, "sim_lock_settings_category"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/settings/icclock/IcclockSettingsChooser;->initIccLockSettings(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRootPermissionOpened()Z
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isDeviceRooted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerSimInfoChangeReceiver()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    return-void
.end method

.method private removePreferenceInGuestMode()V
    .locals 3

    .prologue
    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    const-string v1, "fp_category"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 463
    .local v0, "fpCategory":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "fpCategory":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reportUseFingerprintUnlock(Z)V
    .locals 5
    .param p1, "opened"    # Z

    .prologue
    .line 226
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v2, "SecuritySettings"

    const-string v3, "set_fingerprint_service"

    const-string v4, "open_type"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 226
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 260
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startApplockFragment()V
    .locals 6

    .prologue
    .line 554
    const-class v0, Lcom/meizu/settings/security/AccessPasswordSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@applock#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 556
    return-void
.end method

.method private startConfirmPasswordFragment(II)V
    .locals 2
    .param p1, "passwordFrom"    # I
    .param p2, "requestCode"    # I

    .prologue
    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "password_from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    invoke-direct {p0, v0, p2}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(Landroid/os/Bundle;I)V

    .line 612
    return-void
.end method

.method private startConfirmPasswordFragment(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "requestCode"    # I

    .prologue
    .line 615
    const-class v0, Lcom/meizu/settings/security/MzConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 617
    return-void
.end method

.method private startCreateFPActivity()V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/fingerprint/CreateFPActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent_boolean_extra"

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mCreateFpExtraValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v1, "password_confirmed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method private startEnterPasswordFragment(I)V
    .locals 6
    .param p1, "requestCode"    # I

    .prologue
    .line 601
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "password_from"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const-class v0, Lcom/meizu/settings/security/EnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@screen_lock#t

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 606
    return-void
.end method

.method private startFPManagementFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/MzSettingsActivity$MzFingerprintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v0, "it":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    const-string v1, "password_confirmed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method

.method private startScreenPasswordFragment()V
    .locals 6

    .prologue
    .line 559
    const-class v0, Lcom/meizu/settings/security/ScreenPasscodeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@screen_lock#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 561
    return-void
.end method

.method private updateAppLockSummary()V
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 508
    return-void

    .line 506
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateDocumentLockSummary()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isDocumentLockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 503
    return-void

    .line 501
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateGuestModeSummary()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

# hxs modify begin
    const/4 v0, 0x0
# hxs modify end

    if-eqz v0, :cond_3

    .line 342
    const-string v0, "guest_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/MzLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isGuestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 346
    :cond_2
    const v0, #com.android.settings:string@closed#t

    goto :goto_0

    .line 349
    :cond_3
    const-string v0, "guest_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updatePreference()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updatePreferenceInGuestMode()V

    .line 332
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateScreenLockSummary()V

    .line 333
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateDocumentLockSummary()V

    .line 334
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateAppLockSummary()V

    .line 335
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateToggleAppInstallation()V

    .line 336
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateGuestModeSummary()V

    .line 337
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateRootPermissionSummary()V

    .line 338
    return-void
.end method

.method private updatePreferenceInGuestMode()V
    .locals 4

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    const-string v2, "fp_category"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 382
    .local v0, "category":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    :cond_0
    const-string v2, "passcode_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    .end local v0    # "category":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    const-string v2, "security_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 391
    .local v1, "securityOrder":I
    const-string v2, "fp_category"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 392
    .restart local v0    # "category":Landroid/preference/Preference;
    if-nez v0, :cond_3

    .line 396
    :cond_3
    const-string v2, "passcode_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 397
    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setOrder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v0    # "category":Landroid/preference/Preference;
    .end local v1    # "securityOrder":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateRootPermissionSummary()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isRootPermissionOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "root_permission"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    const-string v0, "security_items"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v0, "root_permission"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateScreenLockSummary()V
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 498
    return-void

    .line 496
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateToggleAppInstallation()V
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 514
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no_install_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #com.android.settings:string@warning#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #com.android.settings:string@install_all_warning#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 239
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 524
    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x81

    if-ne p1, v0, :cond_3

    :cond_0
    if-ne p2, v1, :cond_3

    .line 527
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    .line 528
    iget v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    if-lez v0, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startFPManagementFragment()V

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startCreateFPActivity()V

    goto :goto_0

    .line 533
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    invoke-direct {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    .line 538
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    goto :goto_0

    .line 539
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_5

    .line 541
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    .line 544
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    goto :goto_0

    .line 545
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 546
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startApplockFragment()V

    goto :goto_0

    .line 547
    :cond_6
    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_1

    .line 548
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    .line 549
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startScreenPasswordFragment()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 271
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 272
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 273
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->init()V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 158
    const-string v0, "fp_management"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "fp_management"

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->handleStartFPManagement(Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUseFPUnlockPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_7

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUseFPUnlockPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    if-nez v0, :cond_2

    .line 163
    const-string v0, "mz_fingerprint_use_unlock"

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->handleStartFPManagement(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-boolean v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0, v3, v6}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    invoke-direct {p0, v4}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-direct {p0, v6}, Lcom/meizu/settings/security/SecuritySettings;->startEnterPasswordFragment(I)V

    goto :goto_0

    .line 179
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mNeedShowPassword:Z

    if-eqz v0, :cond_6

    .line 180
    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto :goto_0

    .line 183
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-direct {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    goto :goto_0

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_a

    .line 189
    iget v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 190
    const-string v0, "mz_fingerprint_use_payment"

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->handleStartFPManagement(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->startAccountLoginActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_payment"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_c

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 203
    :cond_b
    invoke-direct {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    if-ne p2, v0, :cond_e

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    invoke-direct {p0, v5, v5}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto/16 :goto_0

    .line 210
    :cond_d
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startApplockFragment()V

    goto/16 :goto_0

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_10

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    invoke-direct {p0, v3, v4}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto/16 :goto_0

    .line 217
    :cond_f
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startScreenPasswordFragment()V

    goto/16 :goto_0

    .line 219
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->handleRootPermissionPreferenceClick()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 295
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updatePreference()V

    .line 296
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 152
    return-void
.end method
