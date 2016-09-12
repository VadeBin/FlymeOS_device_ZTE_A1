.class public Lcom/meizu/settings/accessibility/MZAccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MZAccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final sIgonoreInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
# hxs modify begin
.field private mKeyexchangeSettingsIntent:Landroid/content/Intent;

.field private mGestureSettingsIntent:Landroid/content/Intent;

.field private mScreenEffectSettingsIntent:Landroid/content/Intent;

.field private mScheduledPowerSettingsIntent:Landroid/content/Intent;

.field private mKeyexchangeSettingsPreference:Landroid/preference/Preference;

.field private mGestureSettingsPreference:Landroid/preference/Preference;

.field private mScreenEffectSettingsPreference:Landroid/preference/Preference;

.field private mScheduledPowerSettingsPreference:Landroid/preference/Preference;
# hxs modify end

.field private mAdditionalSettingsIntent:Landroid/content/Intent;

.field private mAdditionalSettingsPreference:Landroid/preference/Preference;

.field private mClassicModePref:Landroid/preference/Preference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDriveMode:Landroid/preference/Preference;

.field private mGuestureWakeupPreference:Landroid/preference/Preference;

.field private mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

.field private mRedEnvelopeAssistantPref:Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSearchPreference:Landroid/preference/Preference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->sIgonoreInstalledServices:Ljava/util/Set;

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.luckymoney"

    const-string v2, "com.meizu.luckymoney.LuckyMoneyAccessibilityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "cmp":Landroid/content/ComponentName;
    sget-object v1, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->sIgonoreInstalledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$1;

    invoke-direct {v1}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$1;-><init>()V

    sput-object v1, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkIfNeedRemovePreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    .line 147
    .local v0, "isGuestUser":Z
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.meizu.voiceassistant"

    invoke-static {v2, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 148
    .local v1, "isVoiceAssistentExist":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_1
    if-eqz v0, :cond_2

    .line 153
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "development_settings"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_2
    const-string v2, "persist.sys.gesture.wakeup"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGuestureWakeupPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_4
    const-string v2, "persist.sys.scheduled.power"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "scheduled_power"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    const-string v3, "com.meizu.net.search"

    invoke-static {v2, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 174
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_6
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->canShowBottomBtnStyleFeature()Z

    move-result v2

    if-nez v2, :cond_7

    .line 178
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "classic_mode"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    :cond_7
    return-void
.end method

.method private initAdditionalSettingsPreference()V
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isAdditionalSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "additional_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsPreference:Landroid/preference/Preference;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "additional_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    .line 114
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 116
    return-void
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "quick_wakeup"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGuestureWakeupPreference:Landroid/preference/Preference;

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "drive_mode"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "search_settings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "red_envelope_assistant"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "quick_reply_assistant"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

    .line 125
    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_notification_reply_assistant_switch"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "classic_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mClassicModePref:Landroid/preference/Preference;

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->checkIfNeedRemovePreference()V

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0
.end method

.method private isAdditionalSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 194
    const-string v0, "com.android.settings.ADDITIONAL_APPLICATION_SETTING"

    .line 195
    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 198
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 199
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/4 v4, 0x1

    .line 204
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private updateOtherPreferenceSummary()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_drive_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, #com.android.settings:string@accessibility_feature_state_on#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 236
    return-void

    .line 233
    :cond_0
    const v0, #com.android.settings:string@accessibility_feature_state_off#t

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 4

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateOtherPreferenceSummary()V

    .line 215
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateRedEnvelopePreference()V

    .line 217
    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mClassicModePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "classic_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, #com.android.settings:string@accessibility_feature_state_on#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 220
    return-void

    .line 217
    :cond_0
    const v0, #com.android.settings:string@accessibility_feature_state_off#t

    goto :goto_0
.end method

.method private updateRedEnvelopePreference()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 223
    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_red_envelope_assistant_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 227
    .local v0, "on":Z
    :goto_0
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    const v1, #com.android.settings:string@accessibility_feature_state_on#t

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 230
    .end local v0    # "on":Z
    :cond_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    .restart local v0    # "on":Z
    :cond_2
    const v1, #com.android.settings:string@accessibility_feature_state_off#t

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 271
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, #com.android.settings:xml@mz_accessibility_settings#t

    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->addPreferencesFromResource(I)V

    .line 105
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initData()V

    .line 106
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initPreference()V

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initAdditionalSettingsPreference()V

# hxs modify begin
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initKeyexchangeSettingsPreference()V

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initGestureSettingsPreference()V

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initScreenEffectSettingsPreference()V

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initScheduledPowerSettingsPreference()V
# hxs modify end

    .line 108
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v4, "AccessibilitySettings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 248
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSearchPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.meizu.net.search.setting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_1
    return v3

    .line 254
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "ActivityNotFoundException for search preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 258
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_notification_reply_assistant_switch"

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mQucklyReplyPref:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 262
    :cond_3
# hxs modify begin
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mKeyexchangeSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_hxs_0

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mKeyexchangeSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_hxs_0
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGestureSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_hxs_1

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGestureSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_hxs_1
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScreenEffectSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_hxs_2

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScreenEffectSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_hxs_2
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScheduledPowerSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_hxs_3

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScheduledPowerSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_hxs_3
# hxs modify end

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updatePreference()V

    .line 211
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 137
    return-void
.end method

# hxs modify begin
.method private isKeyexchangeSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.android.keyexchange.EXCHANGE_KEY"

    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mKeyexchangeSettingsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mKeyexchangeSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private isGestureSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.zte.zgesture.MainSettingActivity"

    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGestureSettingsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGestureSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private isScreenEffectSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.zte.miravision.action.setting"

    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScreenEffectSettingsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScreenEffectSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private isScheduledPowerSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.android.settings.SCHEDULE_POWER_ON_OFF_SETTING"

    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScheduledPowerSettingsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScheduledPowerSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private initKeyexchangeSettingsPreference()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isKeyexchangeSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "keyexchange_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mKeyexchangeSettingsPreference:Landroid/preference/Preference;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "keyexchange_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initGestureSettingsPreference()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isGestureSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "gesture_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGestureSettingsPreference:Landroid/preference/Preference;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "gesture_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initScreenEffectSettingsPreference()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isScreenEffectSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "screen_effect_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScreenEffectSettingsPreference:Landroid/preference/Preference;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "screen_effect_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initScheduledPowerSettingsPreference()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isScheduledPowerSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "scheduled_power_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mScheduledPowerSettingsPreference:Landroid/preference/Preference;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "scheduled_power_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
# hxs modify end
