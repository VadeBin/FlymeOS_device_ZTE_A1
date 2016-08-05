.class public Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsLoader.java"


# static fields
.field private static final D:Z = true

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapEmailSettingsLoader"

.field private static final V:Z


# instance fields
.field private mAccountsEnabledCount:I

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    .line 56
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public createAppItem(Landroid/content/pm/ResolveInfo;Z)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .locals 7
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "includeIcon"    # Z

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 124
    .local v4, "provider":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "name":Ljava/lang/String;
    const-string v1, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - meta-data(provider = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    const-string v1, "0"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-nez p2, :cond_0

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 136
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 127
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v0, v5

    .line 136
    goto :goto_1
.end method

.method public getAccountsEnabledCount()I
    .locals 3

    .prologue
    .line 193
    const-string v0, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled Accounts count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    return v0
.end method

.method public parseAccounts(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v8, 0x0

    .line 148
    .local v8, "c":Landroid/database/Cursor;
    const-string v0, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v9, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to acquire provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catch_0
    move-exception v10

    .line 179
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not establish ContentProviderClient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - returning empty account list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v9

    .line 157
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Account"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 162
    :goto_1
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "account_display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 170
    .local v2, "child":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    const-string v0, "flag_expose"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 172
    iget-boolean v0, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eqz v0, :cond_2

    .line 174
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    .line 176
    :cond_2
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 182
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "child":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 170
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "child":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 182
    .end local v2    # "child":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_5
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public parsePackages(Z)Ljava/util/LinkedHashMap;
    .locals 13
    .param p1, "includeIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 74
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .local v3, "groups":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v8, "searchIntent":Landroid/content/Intent;
    iput v12, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mAccountsEnabledCount:I

    .line 82
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 86
    .local v7, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_4

    .line 87
    const-string v9, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " applications"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 90
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-nez v9, :cond_3

    .line 91
    invoke-virtual {p0, v6, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->createAppItem(Landroid/content/pm/ResolveInfo;Z)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v2

    .line 92
    .local v2, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 98
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 101
    .local v0, "acc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-boolean v9, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-nez v9, :cond_1

    .line 103
    iput-boolean v12, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    .line 107
    .end local v0    # "acc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_2
    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    .end local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v2    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v9, "[MAP]BluetoothMapEmailSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring force-stopped authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v9, "[MAP]BluetoothMapEmailSettingsLoader"

    const-string v10, "Found no applications"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_5
    return-object v3
.end method
