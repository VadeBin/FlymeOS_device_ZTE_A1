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

.field private mDocumentLockPreference:Landroid/preference/Preference;

.field private mFPCategory:Landroid/preference/PreferenceCategory;

.field private mFPPreference:Landroid/preference/Preference;

.field private mFPTotal:I

.field private mGuestModePreference:Landroid/preference/Preference;

.field private mIcclockSettingsChooserPref:Landroid/preference/Preference;

.field private mIcclockSettingsPref:Landroid/preference/Preference;

.field private mIsPrimary:Z

.field private mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

.field private mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPasswordCategory:Landroid/preference/PreferenceCategory;

.field private mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mRootPermissionPreference:Landroid/preference/Preference;

.field private mScreenLockPreference:Landroid/preference/Preference;

.field private mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$3;

    invoke-direct {v0}, Lcom/meizu/settings/security/SecuritySettings$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 100
    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    .line 107
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 555
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/SecuritySettings$2;-><init>(Lcom/meizu/settings/security/SecuritySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/SecuritySettings;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/SecuritySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/SecuritySettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/security/SecuritySettings;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/SecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/meizu/settings/security/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/SecuritySettings$1;-><init>(Lcom/meizu/settings/security/SecuritySettings;)V

    return-object v0
.end method

.method private handleRootPermissionPreferenceClick()V
    .locals 7

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isRootPermissionOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-class v0, Lcom/meizu/settings/root/RootPermissionSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@root_permission_title#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isFlymeAccountLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.meizu.action.ROOT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v6, "it":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/meizu/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleStartFPManagement(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startFPManagementFragment()V

    .line 542
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/MzLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    .line 119
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/MzLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    .line 120
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 122
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->registerSimInfoChangeReceiver()V

    .line 123
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->initPreference()V

    .line 124
    return-void
.end method

.method private initPreference()V
    .locals 4

    .prologue
    .line 390
    const v2, #com.android.settings:xml@keyguard_settings#t

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->addPreferencesFromResource(I)V

    .line 391
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 393
    .local v1, "root":Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    .line 395
    const-string v2, "fp_management"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPPreference:Landroid/preference/Preference;

    .line 396
    const-string v2, "fp_payment"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 397
    const-string v2, "fp_summary"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 398
    .local v0, "fpSummary":Landroid/preference/Preference;
    const-string v2, "fp_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    .line 399
    const-string v2, "screen_lock"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    .line 408
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    const v3, #com.android.settings:string@phone_pwd#t

    invoke-virtual {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    const v3, #com.android.settings:string@phone_pwd_summary_no_fp#t

    invoke-virtual {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    const-string v2, "passcode_items"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    .line 417
    const-string v2, "file_manager_lock"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    .line 418
    const-string v2, "add_password_control"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    .line 419
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    .line 421
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 422
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 424
    const-string v2, "guest_mode"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    .line 425
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->needRemoveGuestModePreference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    :cond_0
    const-string v2, "manage_notification_access"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 431
    const-string v2, "root_permission"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    .line 432
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->needShowRootPreference()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    const-string v2, "security_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_1
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    .line 437
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->removePreferenceInGuestMode()V

    .line 438
    return-void

    .line 393
    .end local v0    # "fpSummary":Landroid/preference/Preference;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private initSIMPreference(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 457
    const-string v0, "sim_lock_settings_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 460
    const-string v0, "sim_lock_chooser_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    const-string v4, "sim_lock_chooser_category"

    const-string v5, "sim_lock_settings_category"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/settings/icclock/IcclockSettingsChooser;->initIccLockSettings(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private isFlymeAccountLogined()Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 210
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
    .line 342
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isDeviceRooted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private needRemoveGuestModePreference()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
# hxs modify begin
    const/4 v0, 0x1
# hxs modify end
    goto :goto_0
.end method

.method private needShowRootPreference()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isRootPermissionOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isFlymeAccountLogined()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.meizu.account"

    const-string v4, "com.meizu.action.ROOT"

    invoke-static {v2, v3, v4}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private registerSimInfoChangeReceiver()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method private removePreferenceInGuestMode()V
    .locals 3

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const-string v1, "fp_category"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 444
    .local v0, "fpCategory":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v0    # "fpCategory":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reportUseFingerprintUnlock(Z)V
    .locals 5
    .param p1, "opened"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v2, "SecuritySettings"

    const-string v3, "set_fingerprint_service"

    const-string v4, "open_type"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 182
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 216
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 220
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
    .line 520
    const-class v0, Lcom/meizu/settings/security/AccessPasswordSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@applock#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 522
    return-void
.end method

.method private startConfirmPasswordFragment(II)V
    .locals 2
    .param p1, "passwordFrom"    # I
    .param p2, "requestCode"    # I

    .prologue
    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "password_from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-direct {p0, v0, p2}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(Landroid/os/Bundle;I)V

    .line 548
    return-void
.end method

.method private startConfirmPasswordFragment(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "requestCode"    # I

    .prologue
    .line 551
    const-class v0, Lcom/meizu/settings/security/MzConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 553
    return-void
.end method

.method private startFPManagementFragment()V
    .locals 3

    .prologue
    .line 529
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/MzSettingsActivity$MzFingerprintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v0, "it":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment_as_subsetting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    const-string v1, "password_confirmed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private startScreenPasswordFragment()V
    .locals 6

    .prologue
    .line 525
    const-class v0, Lcom/meizu/settings/security/ScreenPasscodeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, #com.android.settings:string@phone_pwd#t

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/security/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 526
    return-void
.end method

.method private updateAppLockSummary()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 480
    return-void

    .line 478
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateDocumentLockSummary()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isDocumentLockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 475
    return-void

    .line 473
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateGuestModeSummary()V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->needRemoveGuestModePreference()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    const-string v0, "guest_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 304
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

    .line 311
    :cond_1
    :goto_1
    return-void

    .line 304
    :cond_2
    const v0, #com.android.settings:string@closed#t

    goto :goto_0

    .line 307
    :cond_3
    const-string v0, "guest_mode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updatePreference()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updatePreferenceInGuestMode()V

    .line 285
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateScreenLockSummary()V

    .line 286
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateDocumentLockSummary()V

    .line 287
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateAppLockSummary()V

    .line 288
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateToggleAppInstallation()V

    .line 289
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateGuestModeSummary()V

    .line 290
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updateRootPermissionSummary()V

    .line 291
    return-void
.end method

.method private updatePreferenceInGuestMode()V
    .locals 4

    .prologue
    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    const-string v2, "fp_category"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 365
    .local v0, "category":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_0
    const-string v2, "passcode_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    .end local v0    # "category":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    const-string v2, "security_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 374
    .local v1, "securityOrder":I
    const-string v2, "fp_category"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 375
    .restart local v0    # "category":Landroid/preference/Preference;
    if-nez v0, :cond_3

    .line 379
    :cond_3
    const-string v2, "passcode_items"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 380
    if-nez v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 382
    iget-object v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setOrder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v0    # "category":Landroid/preference/Preference;
    .end local v1    # "securityOrder":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateRootPermissionSummary()V
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->needShowRootPreference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const-string v0, "root_permission"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    const-string v0, "security_items"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 332
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string v0, "root_permission"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateScreenLockSummary()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #com.android.settings:string@opened#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 470
    return-void

    .line 468
    :cond_0
    const v0, #com.android.settings:string@closed#t

    goto :goto_0
.end method

.method private updateToggleAppInstallation()V
    .locals 3

    .prologue
    .line 483
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 486
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no_install_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/meizu/settings/security/SecuritySettings;->mIsPrimary:Z

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 187
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

    .line 195
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 496
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startFPManagementFragment()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    goto :goto_0

    .line 504
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_unlock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    invoke-direct {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->reportUseFingerprintUnlock(Z)V

    goto :goto_0

    .line 509
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startApplockFragment()V

    goto :goto_0

    .line 511
    :cond_4
    if-ne p1, v2, :cond_5

    if-ne p2, v1, :cond_5

    .line 512
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startScreenPasswordFragment()V

    goto :goto_0

    .line 513
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startFPManagementFragment()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 228
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 229
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
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
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->init()V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/SecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 142
    const-string v0, "fp_management"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "fp_management"

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->handleStartFPManagement(Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_4

    .line 145
    iget v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mFPTotal:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "mz_fingerprint_use_payment"

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/SecuritySettings;->handleStartFPManagement(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->startAccountLoginActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/settings/security/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_payment"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mToggleAppInstallation:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->warnAppInstallation()V

    goto :goto_0

    .line 159
    :cond_5
    invoke-direct {p0, v3}, Lcom/meizu/settings/security/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mAppLock:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mMZLockUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    invoke-direct {p0, v4, v4}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto :goto_0

    .line 166
    :cond_7
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startApplockFragment()V

    goto :goto_0

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/MzLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/MzLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/security/SecuritySettings;->startConfirmPasswordFragment(II)V

    goto :goto_0

    .line 173
    :cond_9
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->startScreenPasswordFragment()V

    goto :goto_0

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->handleRootPermissionPreferenceClick()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 251
    invoke-direct {p0}, Lcom/meizu/settings/security/SecuritySettings;->updatePreference()V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/security/SecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "SecuritySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 136
    return-void
.end method
