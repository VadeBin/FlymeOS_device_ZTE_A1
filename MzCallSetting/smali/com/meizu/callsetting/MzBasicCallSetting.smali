.class public Lcom/meizu/callsetting/MzBasicCallSetting;
.super Ljava/lang/Object;
.source "MzBasicCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final KEY_BASIC_SETTING_CATEGORY:Ljava/lang/String;

.field private final KEY_EXPAND_OPTION_KEY:Ljava/lang/String;

.field private mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

.field private mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

.field private mExpandOptionScreen:Landroid/preference/PreferenceScreen;

.field private mFlymeSettings:Landroid/preference/PreferenceScreen;

.field private mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

.field private mRespondViaSmsScreen:Landroid/preference/PreferenceScreen;

.field private mSpamCallPref:Landroid/preference/Preference;

.field private mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/callsetting/MzCallFeaturesSetting;)V
    .locals 2
    .param p1, "cfs"    # Lcom/meizu/callsetting/MzCallFeaturesSetting;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "category_basic_settings"

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->KEY_BASIC_SETTING_CATEGORY:Ljava/lang/String;

    .line 52
    const-string v0, "expand_option_key"

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->KEY_EXPAND_OPTION_KEY:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 62
    iput-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    .line 68
    invoke-virtual {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->onCreate()V

    .line 69
    return-void
.end method

.method private handleAutoIndentificationNumberPreferenceClick(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 284
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 286
    .local v0, "autoIndentificaitonNumber":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_indentification_number"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->notifyNumberIndentificationSettingChanged(Landroid/content/Context;I)V

    .line 290
    const-string v1, "MzBasicCallSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAutoIndentificationNumberPreferenceClick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 284
    .end local v0    # "autoIndentificaitonNumber":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 272
    const-string v0, "MzBasicCallSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTogglePowerButtonEndsCallPreferenceClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "incall_power_button_behavior"

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v0}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PhoneSettingPowerButtonEndCall"

    const-string v3, "MzCallFeaturesSetting"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/meizu/callsetting/utils/MzPhoneUsageStatsUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private initSpecialPlatformSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v2, "category_basic_settings"

    invoke-virtual {v1, v2}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

#hxs add remove flash reminder begin
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
#hxs add remove flash reminder end
    .line 118
    .local v0, "basicCategory":Landroid/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_FLYME_WEBCALL(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    .line 124
    :cond_0
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->IS_CTA:Z

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 128
    :cond_1
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_FLYME_AUTO_INDENTIFICAITON_NUMBER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_HARASSMENT_BLOCKING(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    if-eqz v0, :cond_3

    .line 135
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 139
    :cond_3
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_SPECIAL_CUSTOM:Z

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    .line 152
    :cond_4
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_COUNT_DOWN_TONE:Z

    if-nez v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_5
    return-void
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 308
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "MzBasicCallSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public static notifyNumberIndentificationSettingChanged(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "meizu.intent.action.number_indentification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "auto_indentification_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method private startSimSelectActivity(ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "activityTitle"    # I
    .param p2, "prefTitle"    # Ljava/lang/CharSequence;
    .param p3, "targetIntent"    # I

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title_str"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 266
    const-string v1, "target_intent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "com.android.phone"

    const-string v2, "com.meizu.phone.settings.MzSelectSimCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 73
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v0}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "flyme_settings"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    .line 75
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "toggle_power_button_ends_call_preference"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 80
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "auto_indentification_number"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    .line 85
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "spam_call_filter_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 89
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "button_respond_via_sms_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mRespondViaSmsScreen:Landroid/preference/PreferenceScreen;

    .line 93
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "expand_option_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    .line 94
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "delay_answer_ringing_call_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    .line 99
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "incoming_flash_reminder_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    .line 103
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "count_down_tone_play"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 108
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    :cond_7
    invoke-direct {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->initSpecialPlatformSetting()V

    .line 113
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/callsetting/MzBasicCallSetting;->log(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_0

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->handleTogglePowerButtonEndsCallPreferenceClick(Z)V

    .line 260
    :goto_0
    return v1

    .line 241
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    .line 242
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->handleAutoIndentificationNumberPreferenceClick(Z)V

    goto :goto_0

    .line 244
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_3

    .line 245
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_answer_incoming_ringing"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 249
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_5

    .line 250
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "incoming_flash_reminder"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 255
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_7

    .line 256
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "count_down_tone_play"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    move v1, v0

    .line 260
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceClick(). preferenece: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/callsetting/MzBasicCallSetting;->log(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.meizu.c2dm.service.ShowFlymePhonePreference"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "source"

    const-string v4, "com.android.phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 209
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v3}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PhoneSettingBlock"

    const-string v5, "MzCallFeaturesSetting"

    invoke-static {v3, v4, v5}, Lcom/meizu/callsetting/utils/MzPhoneUsageStatsUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    const-string v3, "android.intent.action.BLOCK_SERVICE_MAIN_ACTIVITY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "incall"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 219
    invoke-static {}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->isMultiSIMAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {p0, v3, v4, v5}, Lcom/meizu/callsetting/MzBasicCallSetting;->startSimSelectActivity(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-static {}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->getSingleAvailableSIMSlotId()I

    move-result v1

    .line 224
    .local v1, "slotId":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->putSlotIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 226
    const-string v3, "com.android.phone"

    const-string v4, "com.meizu.phone.settings.SimcardRelatedSettingActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "slotId":I
    :cond_3
    move v2, v3

    .line 231
    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 161
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_0

    .line 162
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v7}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/webcall/WebCallManager;->isFlymeCommunicationOpened(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0d0078

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 168
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_1

    .line 169
    const/16 v7, 0x1a

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "incall_power_button_behavior"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "incallPowerBehavior":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_7

    move v3, v5

    .line 174
    .local v3, "powerButtonEndsCall":Z
    :goto_1
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v7, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 177
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_1
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_2

    .line 178
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "auto_indentification_number"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "flag":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v1, v5, :cond_8

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 182
    .end local v1    # "flag":I
    :cond_2
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_3

    .line 183
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "auto_answer_incoming_ringing"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "autoanswer":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_9

    move v7, v5

    :goto_3
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 187
    .end local v0    # "autoanswer":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_4

    .line 188
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "incoming_flash_reminder"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 190
    .local v4, "state":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v4, :cond_a

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    .end local v4    # "state":I
    :cond_4
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_5

    .line 194
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "count_down_tone_play"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 195
    .restart local v4    # "state":I
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v4, :cond_b

    :goto_5
    invoke-virtual {v7, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 198
    .end local v4    # "state":I
    :cond_5
    return-void

    .line 165
    :cond_6
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0d0079

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .restart local v2    # "incallPowerBehavior":I
    :cond_7
    move v3, v6

    .line 173
    goto :goto_1

    .end local v2    # "incallPowerBehavior":I
    .restart local v1    # "flag":I
    :cond_8
    move v7, v6

    .line 180
    goto :goto_2

    .end local v1    # "flag":I
    .restart local v0    # "autoanswer":I
    :cond_9
    move v7, v6

    .line 185
    goto :goto_3

    .end local v0    # "autoanswer":I
    .restart local v4    # "state":I
    :cond_a
    move v7, v6

    .line 190
    goto :goto_4

    :cond_b
    move v5, v6

    .line 195
    goto :goto_5
.end method
