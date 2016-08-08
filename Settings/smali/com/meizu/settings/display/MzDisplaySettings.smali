.class public Lcom/meizu/settings/display/MzDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MzDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
# hxs modify begin
.field private mButtonBackLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;
# hxs modify end

.field private mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

.field private mOldAutomatic:I

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$3;

    invoke-direct {v0}, Lcom/meizu/settings/display/MzDisplaySettings$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/MzDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 84
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/MzDisplaySettings$1;-><init>(Lcom/meizu/settings/display/MzDisplaySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 330
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/display/MzDisplaySettings$2;-><init>(Lcom/meizu/settings/display/MzDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/MzDisplaySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/display/MzDisplaySettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/MzDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/display/MzDisplaySettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private getBlurState()Z
    .locals 3

    .prologue
    .line 377
    const-string v2, "persist.sys.disable_blur_view"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "blurViewState":Ljava/lang/String;
    const-string v2, "persist.sys.static_blur_mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "blurModeState":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const/4 v2, 0x0

    .line 383
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 253
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAutoRotatePreference()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "auto_rotate"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 148
    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 152
    :goto_1
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "auto_rotate"

    invoke-virtual {p0, v1}, Lcom/meizu/settings/display/MzDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 288
    const v0, 0x112001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onBrightnessModeChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, "brightnessMode":I
    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 328
    .end local v0    # "brightnessMode":I
    :cond_1
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->onBrightnessModeChanged()V

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getBlurState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 262
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 264
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 266
    const-string v4, ""

    .line 284
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 268
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 270
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 271
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 274
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 275
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 276
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 277
    move v0, v2

    .line 274
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, #com.android.settings:string@screen_timeout_summary#t

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/MzFontPreference;->readFontScale()V

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    const v5, #com.android.settings:string@diaplay_and_brightness#t

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 106
    const v5, #com.android.settings:xml@mz_display_settings#t

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->addPreferencesFromResource(I)V

    .line 108
    const-string v5, "brightness_meizu"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/display/BrightnessPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

# hxs modify begin
    const-string v5, "button_backlight"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mButtonBackLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    :try_start_hxs_0
    const-string v5, "button_backlight"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5
    :try_end_hxs_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_hxs_0 .. :try_end_hxs_0} :catch_hxs_0

    :goto_hxs_0
    iget-object v7, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mButtonBackLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v7, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V
# hxs modify end

    .line 110
    const-string v5, "screen_timeout"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 111
    const-string v5, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v1, v5, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 113
    .local v2, "currentTimeout":J
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-direct {p0, v2, v3}, Lcom/meizu/settings/display/MzDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 117
    const-string v5, "font_size_meizu"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/display/MzFontPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    .line 118
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    invoke-virtual {v5, p0}, Lcom/meizu/settings/display/MzFontPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_0
    const-string v5, "automatic_brightnessr_meizu"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 125
    :try_start_0
    const-string v5, "screen_brightness_mode"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v7, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    const-string v5, "blur_view_effect"

    invoke-virtual {p0, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v5, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    .line 135
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "color_temperature"

    invoke-virtual {p0, v6}, Lcom/meizu/settings/display/MzDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->initAutoRotatePreference()V

    .line 142
    return-void

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput v6, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I

    goto :goto_0

    .end local v4    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v5, v6

    .line 130
    goto :goto_1

# hxs modify begin
    :catch_hxs_0
    const/4 v5, 0x1
    goto :goto_hxs_0
# hxs modify end
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BrightnessPreference;->onPause()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 195
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v4, "MzDisplaySettings"

    invoke-virtual {v3, v4, v1, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 207
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/meizu/settings/display/MzDisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "value":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MzDisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v3, "font_size_meizu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    invoke-virtual {v3, p2}, Lcom/meizu/settings/display/MzFontPreference;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 223
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v5, "MzDisplaySettings"

    invoke-virtual {v3, v5, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 225
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 227
    .local v0, "auto":Z
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    .end local v0    # "auto":Z
    :goto_1
    return v4

    .line 227
    .restart local v0    # "auto":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 230
    .end local v0    # "auto":Z
    :cond_1
# hxs modify begin
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mButtonBackLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_hxs_0

    const-string v5, "hxs"

    const-string v6, "button_backlight change"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mButtonBackLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_backlight"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_hxs_0
# hxs modify end

    const-string v3, "color_temperature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/settings/display/MzDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 235
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_5

    .line 236
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    const-string v3, "persist.sys.disable_blur_view"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "persist.sys.static_blur_mode"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1

    .line 240
    :cond_4
    const-string v3, "persist.sys.disable_blur_view"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "persist.sys.static_blur_mode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 243
    :cond_5
    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 157
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updateState()V

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BrightnessPreference;->onResume()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mMeizuFontSizePref:Lcom/meizu/settings/display/MzFontPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/MzFontPreference;->readFontScale()V

    .line 166
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 181
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "MzDisplaySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 199
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "MzDisplaySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 200
    return-void
.end method
