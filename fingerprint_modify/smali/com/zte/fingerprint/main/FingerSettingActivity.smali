.class public Lcom/zte/fingerprint/main/FingerSettingActivity;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "FingerSettingActivity.java"


# instance fields
.field private mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v0, "com.zte.fingerprints_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprint_enabled"

    const/4 v2, 0x1

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_FPC:I

    if-ne v0, v1, :cond_1

    .line 31
    new-instance v0, Lcom/zte/fingerprint/setting/FPCSetting;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/setting/FPCSetting;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/setting/FingerprintSetting;->onCreate(Landroid/os/Bundle;)V

    .line 42
    :goto_1
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->getFingerprintType()I

    move-result v0

    sget v1, Lcom/zte/fingerprint/utils/FingerprintTypeUtil;->FINGERPRINT_GOODIX:I

    if-ne v0, v1, :cond_0

    .line 33
    new-instance v0, Lcom/zte/fingerprint/setting/GoodixSetting;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/setting/GoodixSetting;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    invoke-virtual {v0}, Lcom/zte/fingerprint/setting/FingerprintSetting;->onDestroy()V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onDestroy()V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 47
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->finish()V

    .line 49
    const/4 v1, 0x1

    .line 51
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mFInFingerprintSetting:Lcom/zte/fingerprint/setting/FingerprintSetting;

    invoke-virtual {v0}, Lcom/zte/fingerprint/setting/FingerprintSetting;->onResume()V

    .line 70
    :cond_0
    return-void
.end method
