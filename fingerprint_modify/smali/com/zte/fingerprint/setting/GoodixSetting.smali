.class public Lcom/zte/fingerprint/setting/GoodixSetting;
.super Lcom/zte/fingerprint/setting/FingerprintSetting;
.source "GoodixSetting.java"

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

.field private maxFingerprintHint:Landroid/widget/Toast;

.field private preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/setting/FingerprintSetting;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->TAG:Ljava/lang/String;

    .line 39
    const v0, 0xf69bf

    iput v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->addFingerId:I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fingerprintNames:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/zte/fingerprint/setting/GoodixSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/fingerprint/setting/GoodixSetting;
    .param p1, "x1"    # Lcom/zte/mifavor/preference/SwitchPreference;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/setting/GoodixSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    return-void
.end method

.method private findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

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

    .line 264
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 265
    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    .line 268
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

    .line 72
    const v6, 0x7f03003c

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/GoodixSetting;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v1

    .line 74
    .local v1, "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/GoodixSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 75
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->initPrefference()V

    .line 76
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 78
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 79
    .local v0, "currentCount":I
    const-string v6, "lock_for_application"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 80
    .local v2, "prfAppLock":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v6, "lock_for_secret_zone"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 81
    .local v4, "prfSecretZone":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v6, "lock_for_screen"

    invoke-virtual {v1, v6}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 82
    .local v3, "prfScreenLock":Lcom/zte/mifavor/preference/SwitchPreference;
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->isAppLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "lock_for_application"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    #invoke-virtual {v2, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 83
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->isAppLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "lock_for_secret_zone"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    #invoke-virtual {v4, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    if-lez v0, :cond_2

    const-string v6, "lock_for_screen"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v3, v7}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    new-instance v6, Lcom/zte/fingerprint/setting/GoodixSetting$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/zte/fingerprint/setting/GoodixSetting$1;-><init>(Lcom/zte/fingerprint/setting/GoodixSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    new-instance v6, Lcom/zte/fingerprint/setting/GoodixSetting$2;

    invoke-direct {v6, p0, v0, v2}, Lcom/zte/fingerprint/setting/GoodixSetting$2;-><init>(Lcom/zte/fingerprint/setting/GoodixSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    #invoke-virtual {v2, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    new-instance v6, Lcom/zte/fingerprint/setting/GoodixSetting$3;

    invoke-direct {v6, p0, v0, v4}, Lcom/zte/fingerprint/setting/GoodixSetting$3;-><init>(Lcom/zte/fingerprint/setting/GoodixSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V

    #invoke-virtual {v4, v6}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    invoke-virtual {v3, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    #invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    #invoke-virtual {v4, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    return-void

    :cond_0
    move v6, v8

    .line 82
    goto :goto_0

    :cond_1
    move v6, v8

    .line 83
    goto :goto_1

    :cond_2
    move v7, v8

    .line 84
    goto :goto_2
.end method

.method private showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 4
    .param p1, "witch"    # Lcom/zte/mifavor/preference/SwitchPreference;

    .prologue
    .line 212
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 214
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090058

    new-instance v3, Lcom/zte/fingerprint/setting/GoodixSetting$5;

    invoke-direct {v3, p0, p1}, Lcom/zte/fingerprint/setting/GoodixSetting$5;-><init>(Lcom/zte/fingerprint/setting/GoodixSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 215
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090059

    new-instance v3, Lcom/zte/fingerprint/setting/GoodixSetting$4;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/setting/GoodixSetting$4;-><init>(Lcom/zte/fingerprint/setting/GoodixSetting;)V

    .line 223
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setCancelable(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 229
    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 68
    return-void
.end method

.method protected initPrefference()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 140
    iget-object v11, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-static {v11}, Lcom/zte/fingerprint/utils/StringUtils;->hasChildren(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 141
    iget-object v11, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fingerprintNames:[Ljava/lang/String;

    array-length v11, v11

    if-eq v2, v11, :cond_0

    .line 143
    iget-object v11, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fingerprintNames:[Ljava/lang/String;

    aput-object v12, v11, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/fingerprint/FingerprintManager;->open()Lcom/zte/fingerprint/FingerprintManager;

    move-result-object v7

    .line 149
    .local v7, "mgr":Lcom/zte/fingerprint/FingerprintManager;
    if-eqz v7, :cond_5

    .line 150
    invoke-virtual {v7}, Lcom/zte/fingerprint/FingerprintManager;->getFpIds()[I

    move-result-object v4

    .line 151
    .local v4, "ids":[I
    const-string v11, "pref:finger_count"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/zte/fingerprint/setting/GoodixSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "key:finger_count"

    if-nez v4, :cond_2

    move v11, v10

    :goto_1
    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    const-string v11, "pref:fingerprint"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/zte/fingerprint/setting/GoodixSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 153
    .local v9, "spFingerprintInfo":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_3

    array-length v11, v4

    if-lez v11, :cond_3

    .line 154
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    .line 155
    const/4 v5, 0x0

    .line 156
    .local v5, "index":I
    array-length v11, v4

    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-ge v10, v11, :cond_3

    aget v3, v4, v10

    .line 157
    .local v3, "id":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "name":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 159
    invoke-virtual {v7, v3}, Lcom/zte/fingerprint/FingerprintManager;->getFpName(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    :cond_1
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-direct {v1}, Lcom/zte/fingerprint/datatype/FingerData;-><init>()V

    .line 163
    .local v1, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    invoke-virtual {v1, v3}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 164
    invoke-virtual {v1, v8}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 165
    const-string v12, "csx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Settings Activity id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v12, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fingerprintNames:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    .line 167
    iget-object v12, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v10, v10, 0x1

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    .line 151
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v3    # "id":I
    .end local v6    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "spFingerprintInfo":Landroid/content/SharedPreferences;
    :cond_2
    array-length v11, v4

    goto :goto_1

    .line 171
    .restart local v9    # "spFingerprintInfo":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v10, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.zte.fingerprints.EnrolActivityFinished"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v4    # "ids":[I
    .end local v7    # "mgr":Lcom/zte/fingerprint/FingerprintManager;
    .end local v9    # "spFingerprintInfo":Landroid/content/SharedPreferences;
    :goto_3
    iget-object v10, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    if-nez v10, :cond_4

    .line 180
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    .line 182
    :cond_4
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    const v10, 0x7f090056

    invoke-virtual {p0, v10}, Lcom/zte/fingerprint/setting/GoodixSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/zte/fingerprint/datatype/FingerData;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    iget v10, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->addFingerId:I

    invoke-virtual {v1, v10}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 184
    iget-object v10, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void

    .line 173
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .restart local v7    # "mgr":Lcom/zte/fingerprint/FingerprintManager;
    :cond_5
    :try_start_1
    const-string v10, "csx"

    const-string v11, "FingerSettingActivity manager = null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 176
    .end local v7    # "mgr":Lcom/zte/fingerprint/FingerprintManager;
    :catch_0
    move-exception v0

    .line 177
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

    iput-boolean v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fromCreate:Z

    .line 54
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_sb"

    const v3, -0x959455

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v0, 4287734701

    .line 56
    .local v0, "bg":I
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->initActionBar()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/setting/GoodixSetting;->setIndicatorColor(I)V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-static {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->TAG:Ljava/lang/String;

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

    .line 130
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->TAG:Ljava/lang/String;

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

    .line 131
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->TAG:Ljava/lang/String;

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

    .line 132
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

    .line 133
    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->TAG:Ljava/lang/String;

    const-string v2, "STOP SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    const-class v3, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/setting/GoodixSetting;->stopService(Landroid/content/Intent;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/zte/mifavor/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "key":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 291
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/setting/GoodixSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    return v3

    .line 275
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

    .line 277
    :pswitch_0
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_screen"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 281
    :pswitch_1
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_application"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 286
    :pswitch_2
    const-string v2, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_secret_zone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v2, "SETTING_CHANGED_VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 275
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

    .line 236
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/zte/fingerprint/setting/GoodixSetting;->findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v0

    .line 238
    .local v0, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v3

    iget v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->addFingerId:I

    if-ne v3, v4, :cond_3

    .line 240
    iget-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_2

    .line 241
    iget-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->maxFingerprintHint:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->maxFingerprintHint:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->maxFingerprintHint:Landroid/widget/Toast;

    .line 247
    iget-object v3, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->maxFingerprintHint:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 259
    :cond_1
    :goto_0
    return v6

    .line 250
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fingerNames"

    iget-object v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fingerprintNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/setting/GoodixSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "finger_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/setting/GoodixSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v3

    .line 190
    .local v3, "screen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->removeAll()V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/zte/fingerprint/setting/GoodixSetting;->initComponent()V

    .line 194
    iget-object v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/setting/GoodixSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

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

    .line 195
    iget-object v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

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

    .line 196
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    .line 197
    .local v1, "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    new-instance v2, Lcom/zte/mifavor/preference/Preference;

    iget-object v5, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->mActivity:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {v2, v5}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 198
    .local v2, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
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

    .line 200
    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    iget-object v5, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Lcom/zte/mifavor/preference/PreferenceCategory;->addPreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0

    .line 203
    .end local v0    # "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    .end local v1    # "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v2    # "preference":Lcom/zte/mifavor/preference/Preference;
    :cond_1
    iget-boolean v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fromCreate:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->dataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    .line 205
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/zte/fingerprint/setting/GoodixSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 207
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/zte/fingerprint/setting/GoodixSetting;->fromCreate:Z

    .line 208
    return-void
.end method
