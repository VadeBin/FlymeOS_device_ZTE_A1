.class public Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;
.super Ljava/lang/Object;
.source "BluetoothMapEmailAppObserver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapEmailAppObserver"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

.field mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mObserverMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapService"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    .line 59
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mResolver:Landroid/content/ContentResolver;

    .line 67
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->createReceiver()V

    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->initObservers()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->handleAccountChanges(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v0

    return-object v0
.end method

.method private createReceiver()V
    .locals 5

    .prologue
    .line 197
    const-string v1, "[MAP]BluetoothMapEmailAppObserver"

    const-string v2, "createReceiver()\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void
.end method

.method private deinitObservers()V
    .locals 4

    .prologue
    .line 190
    const-string v2, "[MAP]BluetoothMapEmailAppObserver"

    const-string v3, "deinitObservers()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 192
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    goto :goto_0

    .line 194
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    return-void
.end method

.method private getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 78
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x84

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "[MAP]BluetoothMapEmailAppObserver"

    const-string v2, "Error getting package metadata"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleAccountChanges(Ljava/lang/String;)V
    .locals 16
    .param p1, "packageNameWithProvider"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v13, "[MAP]BluetoothMapEmailAppObserver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAccountChanges (packageNameWithProvider: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v13, "\\.[^\\.]+$"

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    move-result-object v3

    .line 92
    .local v3, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    if-eqz v3, :cond_6

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;

    invoke-virtual {v13, v3}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)Ljava/util/ArrayList;

    move-result-object v7

    .line 94
    .local v7, "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 95
    .local v9, "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 97
    .local v2, "addedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 99
    .local v12, "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v3, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 101
    .local v6, "newAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 102
    .local v8, "oldAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getId()Ljava/lang/String;

    move-result-object v14

    if-ne v13, v14, :cond_1

    .line 104
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-boolean v13, v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eqz v13, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 111
    :cond_2
    iget-boolean v13, v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    iget-boolean v14, v8, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eq v13, v14, :cond_0

    .line 113
    iget-boolean v13, v6, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eqz v13, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    goto :goto_0

    .line 119
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    goto :goto_0

    .line 128
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "newAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v8    # "oldAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 129
    .local v11, "removedAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    goto :goto_1

    .line 133
    .end local v11    # "removedAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 134
    .local v1, "addedAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    goto :goto_2

    .line 139
    .end local v1    # "addedAcc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v2    # "addedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "newAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v9    # "oldAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v12    # "removedAccountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    :cond_6
    const-string v13, "[MAP]BluetoothMapEmailAppObserver"

    const-string v14, "Received change notification on package not registered for notifications!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_7
    return-void
.end method

.method private initObservers()V
    .locals 4

    .prologue
    .line 183
    const-string v2, "[MAP]BluetoothMapEmailAppObserver"

    const-string v3, "initObservers()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 185
    .local v0, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V

    goto :goto_0

    .line 187
    .end local v0    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    return-void
.end method

.method private removeReceiver()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "[MAP]BluetoothMapEmailAppObserver"

    const-string v1, "removeReceiver()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method


# virtual methods
.method public getAllAccountItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    const-string v4, "[MAP]BluetoothMapEmailAppObserver"

    const-string v5, "getAllAccountItems()\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 278
    .local v1, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 281
    .end local v0    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v1    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    :cond_0
    return-object v3
.end method

.method public getEnabledAccountItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v6, "[MAP]BluetoothMapEmailAppObserver"

    const-string v7, "getEnabledAccountItems()\n"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 260
    .local v2, "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 261
    .local v1, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 262
    .local v0, "acc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-boolean v6, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-eqz v6, :cond_1

    .line 263
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v0    # "acc":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v1    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;>;"
    .end local v2    # "app":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v5
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V
    .locals 4
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Landroid/os/Handler;)V

    .line 171
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->deinitObservers()V

    .line 290
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->removeReceiver()V

    .line 291
    return-void
.end method

.method public unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V
    .locals 4
    .param p1, "app"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method
