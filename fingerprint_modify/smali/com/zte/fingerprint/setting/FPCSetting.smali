.class public Lcom/zte/fingerprint/setting/FPCSetting;
.super Lcom/zte/fingerprint/setting/FingerprintSetting;
.source "FPCSetting.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private addFingerId:I

.field private dataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/datatype/DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprintNames:[Ljava/lang/String;

.field private fromCreate:Z

.field private mgr:Lcom/fingerprints/service/FingerprintManager;

.field private preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/setting/FingerprintSetting;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    .line 46
    const v0, 0xf69bf

    iput v0, p0, Lcom/zte/fingerprint/setting/FPCSetting;->addFingerId:I

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fingerprintNames:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/setting/FPCSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/setting/FPCSetting;
    .param p1, "x1"    # Lcom/zte/mifavor/preference/SwitchPreference;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/setting/FPCSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    return-void
.end method

.method private findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v0, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v1, v0

    .line 260
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 261
    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    .line 264
    .end local v0    # "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initComponent()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 74
    const v6, 0x7f03003c

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/FPCSetting;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v1

    .line 76
    .local v1, "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/FPCSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/zte/fingerprint/setting/FPCSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 77
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->initPrefference()V

    .line 79
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 81
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 82
    .local v0, "currentCount":I
    const-string v6, "lock_for_application"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 83
    .local v2, "prfAppLock":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v6, "lock_for_secret_zone"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 84
    .local v4, "prfSecretZone":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v6, "lock_for_screen"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 85
    .local v3, "prfScreenLock":Lcom/zte/mifavor/preference/SwitchPreference;
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->isAppLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "lock_for_application"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    #invoke-virtual {v2, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->isAppLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "lock_for_secret_zone"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    #invoke-virtual {v4, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    if-lez v0, :cond_2

    const-string v6, "lock_for_screen"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v3, v7}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 89
    new-instance v6, Lcom/zte/fingerprint/setting/FPCSetting$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/zte/fingerprint/setting/FPCSetting$1;-><init>(Lcom/zte/fingerprint/setting/FPCSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    new-instance v6, Lcom/zte/fingerprint/setting/FPCSetting$2;

    invoke-direct {v6, p0, v0, v2}, Lcom/zte/fingerprint/setting/FPCSetting$2;-><init>(Lcom/zte/fingerprint/setting/FPCSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    #invoke-virtual {v2, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    new-instance v6, Lcom/zte/fingerprint/setting/FPCSetting$3;

    invoke-direct {v6, p0, v0, v4}, Lcom/zte/fingerprint/setting/FPCSetting$3;-><init>(Lcom/zte/fingerprint/setting/FPCSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    #invoke-virtual {v4, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    invoke-virtual {v3, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    #invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    #invoke-virtual {v4, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    return-void

    :cond_0
    move v6, v8

    .line 85
    goto :goto_0

    :cond_1
    move v6, v8

    .line 86
    goto :goto_1

    :cond_2
    move v7, v8

    .line 87
    goto :goto_2
.end method

.method private showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 4
    .param p1, "witch"    # Lcom/zte/mifavor/preference/SwitchPreference;

    .prologue
    .line 215
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 217
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090058

    new-instance v3, Lcom/zte/fingerprint/setting/FPCSetting$5;

    invoke-direct {v3, p0, p1}, Lcom/zte/fingerprint/setting/FPCSetting$5;-><init>(Lcom/zte/fingerprint/setting/FPCSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 218
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090059

    new-instance v3, Lcom/zte/fingerprint/setting/FPCSetting$4;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/setting/FPCSetting$4;-><init>(Lcom/zte/fingerprint/setting/FPCSetting;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 230
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 231
    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 69
    return-void
.end method

.method protected initPrefference()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 149
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-static {v8}, Lcom/zte/fingerprint/utils/StringUtils;->hasChildren(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 151
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fingerprintNames:[Ljava/lang/String;

    array-length v8, v8

    if-eq v2, v8, :cond_0

    .line 152
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fingerprintNames:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v8, :cond_3

    .line 158
    const-string v8, "FingerPrint"

    const-string v9, "getIds"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v8}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v4

    .line 160
    .local v4, "ids":[I
    if-eqz v4, :cond_1

    .line 161
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 163
    :cond_1
    const-string v8, "pref:finger_count"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/zte/fingerprint/setting/FPCSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "key:finger_count"

    if-nez v4, :cond_2

    move v8, v7

    :goto_1
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    if-eqz v4, :cond_4

    array-length v8, v4

    if-lez v8, :cond_4

    .line 165
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, "index":I
    array-length v8, v4

    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-ge v7, v8, :cond_4

    aget v3, v4, v7

    .line 168
    .local v3, "id":I
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-direct {v1}, Lcom/zte/fingerprint/datatype/FingerData;-><init>()V

    .line 169
    .local v1, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    invoke-virtual {v1, v3}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 170
    const-string v9, "FingerPrint"

    const-string v10, "getIdName"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v9, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v9, v3}, Lcom/fingerprints/service/FingerprintManager;->getIdName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 172
    iget-object v9, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fingerprintNames:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 173
    iget-object v9, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    .line 163
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v3    # "id":I
    .end local v6    # "index":I
    :cond_2
    array-length v8, v4

    goto :goto_1

    .line 177
    .end local v4    # "ids":[I
    :cond_3
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    if-nez v7, :cond_5

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    .line 185
    :cond_5
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    const v7, 0x7f090056

    invoke-virtual {p0, v7}, Lcom/zte/fingerprint/setting/FPCSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/zte/fingerprint/datatype/FingerData;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    iget v7, p0, Lcom/zte/fingerprint/setting/FPCSetting;->addFingerId:I

    invoke-virtual {v1, v7}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 187
    iget-object v7, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void

    .line 179
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fromCreate:Z

    .line 54
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-static {v1, v2}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 55
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_sb"

    const v3, -0x959455

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v0, 4287734701

    .line 57
    .local v0, "bg":I
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->initActionBar()V

    .line 59
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/setting/FPCSetting;->setIndicatorColor(I)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-static {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock_for_screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock_for_application:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock_for_secret_zone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "lock_for_screen"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock_for_application"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock_for_secret_zone"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    const-string v2, "STOP SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    const-class v3, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/setting/FPCSetting;->stopService(Landroid/content/Intent;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 146
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/zte/mifavor/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 269
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "key":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 289
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/setting/FPCSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return v3

    .line 272
    :sswitch_0
    const-string v4, "lock_for_screen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "lock_for_application"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "lock_for_secret_zone"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object v2, p0, Lcom/zte/fingerprint/setting/FPCSetting;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_screen"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 279
    :pswitch_1
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_application"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 284
    :pswitch_2
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_secret_zone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fcd903a -> :sswitch_1
        -0x55c359af -> :sswitch_2
        -0x26efdbca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/zte/fingerprint/setting/FPCSetting;->findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v0

    .line 239
    .local v0, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v3

    iget v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->addFingerId:I

    if-ne v3, v4, :cond_2

    .line 241
    iget-object v3, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_0
    :goto_0
    return v6

    .line 246
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fingerNames"

    iget-object v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fingerprintNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/setting/FPCSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "finger_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/setting/FPCSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v3

    .line 193
    .local v3, "screen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->removeAll()V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/zte/fingerprint/setting/FPCSetting;->initComponent()V

    .line 197
    iget-object v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/FPCSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v0, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v1, v0

    .line 199
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    .line 200
    .local v1, "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    new-instance v2, Lcom/zte/mifavor/preference/Preference;

    iget-object v5, p0, Lcom/zte/fingerprint/setting/FPCSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {v2, v5}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 201
    .local v2, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/mifavor/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/zte/fingerprint/setting/FPCSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Lcom/zte/mifavor/preference/PreferenceCategory;->addPreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 206
    .end local v0    # "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    .end local v1    # "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v2    # "preference":Lcom/zte/mifavor/preference/Preference;
    :cond_1
    iget-boolean v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fromCreate:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    .line 208
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/setting/FPCSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 210
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/zte/fingerprint/setting/FPCSetting;->fromCreate:Z

    .line 211
    return-void
.end method
