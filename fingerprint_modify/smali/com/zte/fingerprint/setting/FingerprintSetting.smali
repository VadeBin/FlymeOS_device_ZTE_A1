.class public abstract Lcom/zte/fingerprint/setting/FingerprintSetting;
.super Ljava/lang/Object;
.source "FingerprintSetting.java"


# instance fields
.field protected mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    .line 28
    return-void
.end method


# virtual methods
.method protected addPreferencesFromResource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 80
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->finish()V

    .line 44
    return-void
.end method

.method protected getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getFingerprintSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 128
    const-string v0, "com.zte.fingerprints_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/setting/FingerprintSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/preference/PreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected goHeartyService(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.ACTION_PRIVACY_SET_FROM_SKYEYE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 119
    const-string v2, "zone_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/setting/FingerprintSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected isAppLockEnabled()Z
    .locals 5

    .prologue
    .line 104
    const-string v3, "content://com.zte.heartyservice.privacy.provider/auth_exist_lookup/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    .local v2, "realUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 107
    .local v1, "enabled":Z
    :try_start_0
    const-string v3, "1"

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FingerprintSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResume()V
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setContentView(I)V

    .line 40
    return-void
.end method

.method protected setIndicatorColor(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setIndicatorColor(I)V

    .line 72
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected stopService(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FingerprintSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->stopService(Landroid/content/Intent;)Z

    .line 88
    return-void
.end method
