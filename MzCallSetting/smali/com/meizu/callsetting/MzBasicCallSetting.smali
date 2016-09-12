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

.field private mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

.field private mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

.field private mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "category_basic_settings"

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->KEY_BASIC_SETTING_CATEGORY:Ljava/lang/String;

    .line 56
    const-string v0, "expand_option_key"

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->KEY_EXPAND_OPTION_KEY:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 66
    iput-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    iput-object p1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    .line 81
    invoke-virtual {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->onCreate()V

    .line 82
    return-void
.end method

.method private getResourseIdByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v4, 0x0

    .line 422
    .local v4, "id":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 423
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 425
    .local v1, "desireClass":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 426
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    aget-object v1, v0, v3

    .line 431
    :cond_0
    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 445
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return v4

    .line 425
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v1    # "desireClass":Ljava/lang/Class;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 435
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 437
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 439
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 441
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleAutoIndentificationNumberPreferenceClick(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 318
    .local v0, "autoIndentificaitonNumber":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_indentification_number"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->notifyNumberIndentificationSettingChanged(Landroid/content/Context;I)V

    .line 322
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

    .line 324
    return-void

    .line 316
    .end local v0    # "autoIndentificaitonNumber":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 304
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

    .line 305
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "incall_power_button_behavior"

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v0}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PhoneSettingPowerButtonEndCall"

    const-string v3, "MzCallFeaturesSetting"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/meizu/callsetting/utils/MzPhoneUsageStatsUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private initFlymeTelecomSettings(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "basicCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/flyme/telecom/sdk/FlymeTelecomManager;->hasCallbackPackage(Landroid/content/Context;)Z

    move-result v0

    .line 350
    .local v0, "hasCallback":Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->IS_CTA:Z

    if-eqz v1, :cond_3

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    iput-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    iput-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    iput-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    .line 364
    :cond_3
    if-nez v0, :cond_4

    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->IS_CTA:Z

    if-eqz v1, :cond_5

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    iput-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    .line 372
    :cond_5
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_C2B:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/flyme/telecom/sdk/FlymeC2bCallAdapter;->isC2bServerOpened(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 374
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    iput-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    .line 378
    :cond_7
    return-void
.end method

.method private initSpecialPlatformSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v2, "category_basic_settings"

    invoke-virtual {v1, v2}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

#hxs add remove flash reminder begin
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
#hxs add remove flash reminder end
    .line 138
    .local v0, "basicCategory":Landroid/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_FLYME_WEBCALL(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    .line 144
    :cond_0
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->IS_CTA:Z

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 148
    :cond_1
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_FLYME_AUTO_INDENTIFICAITON_NUMBER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1}, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_HARASSMENT_BLOCKING(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    if-eqz v0, :cond_3

    .line 155
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 159
    :cond_3
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_SUPPORT_SPECIAL_CUSTOM:Z

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    iput-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    .line 172
    :cond_4
    sget-boolean v1, Lcom/meizu/callsetting/utils/MzFeatures;->FEATURE_COUNT_DOWN_TONE:Z

    if-nez v1, :cond_5

    .line 173
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_5
    invoke-direct {p0, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->initFlymeTelecomSettings(Landroid/preference/PreferenceGroup;)V

    .line 181
    return-void
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 340
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
    .line 344
    const-string v0, "MzBasicCallSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public static notifyNumberIndentificationSettingChanged(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "meizu.intent.action.number_indentification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "auto_indentification_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method private startSimSelectActivity(ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "activityTitle"    # I
    .param p2, "prefTitle"    # Ljava/lang/CharSequence;
    .param p3, "targetIntent"    # I

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title_str"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 298
    const-string v1, "target_intent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v1, "com.android.phone"

    const-string v2, "com.meizu.phone.settings.MzSelectSimCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v1, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method private updateC2bPrefSummary()V
    .locals 7

    .prologue
    .line 381
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 387
    :try_start_0
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v5, "com.meizu.flyme.telecom"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 389
    .local v2, "flymeTelecomContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 391
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.meizu.flyme.telecom.R"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 392
    .local v0, "cls":Ljava/lang/Class;
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    const-string v5, "string"

    const-string v6, "c2b_settings_title"

    invoke-direct {p0, v0, v5, v6}, Lcom/meizu/callsetting/MzBasicCallSetting;->getResourseIdByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    const-string v5, "string"

    const-string v6, "c2b_settings_summary"

    invoke-direct {p0, v0, v5, v6}, Lcom/meizu/callsetting/MzBasicCallSetting;->getResourseIdByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 405
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "flymeTelecomContext":Landroid/content/Context;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const v1, #com.meizu.callsetting:xml@basic_category_setting#t

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 86
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v0}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "flyme_settings"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    .line 88
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "flyme_telecom_callback_settings"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    .line 93
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "flyme_telecom_webcall_settings"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "flyme_telecom_c2b_settings"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    .line 98
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "toggle_power_button_ends_call_preference"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 100
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "auto_indentification_number"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    .line 105
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "spam_call_filter_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    .line 109
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "button_respond_via_sms_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mRespondViaSmsScreen:Landroid/preference/PreferenceScreen;

    .line 113
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "expand_option_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    .line 114
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "delay_answer_ringing_call_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    .line 119
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "incoming_flash_reminder_key"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    .line 123
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    const-string v1, "count_down_tone_play"

    invoke-virtual {v0, v1}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 128
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    :cond_7
    invoke-direct {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->initSpecialPlatformSetting()V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 268
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

    .line 270
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_0

    .line 271
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->handleTogglePowerButtonEndsCallPreferenceClick(Z)V

    .line 292
    :goto_0
    return v1

    .line 273
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    .line 274
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/callsetting/MzBasicCallSetting;->handleAutoIndentificationNumberPreferenceClick(Z)V

    goto :goto_0

    .line 276
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_3

    .line 277
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

    .line 281
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_5

    .line 282
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

    .line 287
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p1, :cond_7

    .line 288
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

    .line 292
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 230
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

    .line 231
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.meizu.c2dm.service.ShowFlymePhonePreference"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "source"

    const-string v4, "com.android.phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mSpamCallPref:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 237
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v3}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PhoneSettingBlock"

    const-string v5, "MzCallFeaturesSetting"

    invoke-static {v3, v4, v5}, Lcom/meizu/callsetting/utils/MzPhoneUsageStatsUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .restart local v0    # "intent":Landroid/content/Intent;

    .line 242
    const-string v3, "android.intent.action.BLOCK_SERVICE_MAIN_ACTIVITY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "incall"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mExpandOptionScreen:Landroid/preference/PreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 247
    invoke-static {}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->isMultiSIMAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {p0, v3, v4, v5}, Lcom/meizu/callsetting/MzBasicCallSetting;->startSimSelectActivity(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->getSingleAvailableSIMSlotId()I

    move-result v1

    .line 252
    .local v1, "slotId":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/meizu/callsetting/utils/MzMultiPhonesUtil;->putSlotIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 254
    const-string v3, "com.android.phone"

    const-string v4, "com.meizu.phone.settings.SimcardRelatedSettingActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v3, v0}, Lcom/meizu/callsetting/utils/MzCallSettingUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "slotId":I
    :cond_3
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomCallbackSettings:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_5

    .line 259
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v2}, Lcom/meizu/flyme/telecom/sdk/FlymeTelecomManager;->launchCallback(Landroid/content/Context;)V

    :cond_4
    :goto_1
    move v2, v3

    .line 263
    goto :goto_0

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomWebCallSettings:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-static {v2}, Lcom/meizu/flyme/telecom/sdk/FlymeTelecomManager;->launchWebCall(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 184
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_0

    .line 185
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCfs:Lcom/meizu/callsetting/MzCallFeaturesSetting;

    invoke-virtual {v7}, Lcom/meizu/callsetting/MzCallFeaturesSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/webcall/WebCallManager;->isFlymeCommunicationOpened(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 186
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    const v8, #com.meizu.callsetting:string@flyme_settings_open#t

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 192
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeTelecomC2bSettings:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->updateC2bPrefSummary()V

    .line 196
    :cond_1
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_2

    .line 197
    const/16 v7, 0x1a

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/meizu/callsetting/MzBasicCallSetting;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 198
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "incall_power_button_behavior"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "incallPowerBehavior":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    move v3, v5

    .line 202
    .local v3, "powerButtonEndsCall":Z
    :goto_1
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mTogglePowerButtonEndsCallPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v7, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 205
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_2
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_3

    .line 206
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "auto_indentification_number"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, "flag":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mAutoIndentificationNumber:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v1, v5, :cond_9

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    .end local v1    # "flag":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_4

    .line 211
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "auto_answer_incoming_ringing"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "autoanswer":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mDelayAutoAnswer:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_a

    move v7, v5

    :goto_3
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    .end local v0    # "autoanswer":I
    :cond_4
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_5

    .line 216
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "incoming_flash_reminder"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 218
    .local v4, "state":I
    iget-object v8, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mIncomingFlashReminder:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v4, :cond_b

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 221
    .end local v4    # "state":I
    :cond_5
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v7, :cond_6

    .line 222
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "count_down_tone_play"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 223
    .restart local v4    # "state":I
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mCountDownPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v4, :cond_c

    :goto_5
    invoke-virtual {v7, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    .end local v4    # "state":I
    :cond_6
    return-void

    .line 188
    :cond_7
    iget-object v7, p0, Lcom/meizu/callsetting/MzBasicCallSetting;->mFlymeSettings:Landroid/preference/PreferenceScreen;

    const v8, #com.meizu.callsetting:string@flyme_settings_close#t

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .restart local v2    # "incallPowerBehavior":I
    :cond_8
    move v3, v6

    .line 201
    goto :goto_1

    .end local v2    # "incallPowerBehavior":I
    .restart local v1    # "flag":I
    :cond_9
    move v7, v6

    .line 208
    goto :goto_2

    .end local v1    # "flag":I
    .restart local v0    # "autoanswer":I
    :cond_a
    move v7, v6

    .line 213
    goto :goto_3

    .end local v0    # "autoanswer":I
    .restart local v4    # "state":I
    :cond_b
    move v7, v6

    .line 218
    goto :goto_4

    :cond_c
    move v5, v6

    .line 223
    goto :goto_5
.end method
