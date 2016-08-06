.class public Lcom/android/shotcutkey/AllAppInfo;
.super Ljava/lang/Object;
.source "AllAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field public final FILTER_ALL_APP:I

.field public final FILTER_SDCARD_APP:I

.field public final FILTER_SYSTEM_APP:I

.field public final FILTER_THIRD_APP:I

.field private mContext:Landroid/content/Context;

.field private mListAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageChangedObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AllAppInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/shotcutkey/AllAppInfo;->FILTER_ALL_APP:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/shotcutkey/AllAppInfo;->FILTER_SYSTEM_APP:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/shotcutkey/AllAppInfo;->FILTER_THIRD_APP:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/shotcutkey/AllAppInfo;->FILTER_SDCARD_APP:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mReceiverObject:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->getAllMainAppInfo()V

    .line 70
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->registerBroadcastReceiver()V

    .line 71
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/AllAppInfo;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->getAllMainAppInfo()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/shotcutkey/AllAppInfo;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->notifyObservers()V

    return-void
.end method

.method private getAllApplicationInfo()V
    .locals 13

    .prologue
    .line 224
    sget-boolean v10, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 225
    sget-object v10, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mListAppInfo = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v10, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    if-nez v10, :cond_1

    .line 228
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    .line 230
    iget-object v10, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 233
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x2000

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v10, v9}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 234
    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 256
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 237
    .restart local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 238
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 239
    .local v7, "path":Ljava/lang/String;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 240
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, "appLabel":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 242
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 243
    .local v3, "clsName":Ljava/lang/String;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 245
    .local v4, "flags":I
    new-instance v6, Lcom/android/shotcutkey/AppInfo;

    invoke-direct {v6}, Lcom/android/shotcutkey/AppInfo;-><init>()V

    .line 246
    .local v6, "info":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v6, v1}, Lcom/android/shotcutkey/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v6, v8}, Lcom/android/shotcutkey/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6, v7}, Lcom/android/shotcutkey/AppInfo;->setPath(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v6, v5}, Lcom/android/shotcutkey/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-virtual {v6, v4}, Lcom/android/shotcutkey/AppInfo;->setAppFlags(I)V

    .line 251
    invoke-virtual {v6, v3}, Lcom/android/shotcutkey/AppInfo;->setClassName(Ljava/lang/String;)V

    .line 253
    iget-object v11, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAllMainAppInfo()V
    .locals 13

    .prologue
    .line 124
    sget-boolean v9, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 125
    sget-object v9, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getAllMainAppInfo() mListAppInfo = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v9, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    if-nez v9, :cond_1

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    .line 133
    :goto_0
    iget-object v9, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 135
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 139
    .local v5, "mResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 156
    return-void

    .line 130
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v9, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 139
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "mResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v8, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 141
    .local v6, "pkgName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 142
    sget-object v10, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getAllMainAppInfo() pkgName = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 143
    const-string v12, ",  appname = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 142
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "appLabel":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 146
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 148
    .local v1, "clsName":Ljava/lang/String;
    new-instance v3, Lcom/android/shotcutkey/AppInfo;

    invoke-direct {v3}, Lcom/android/shotcutkey/AppInfo;-><init>()V

    .line 149
    .local v3, "info":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v3, v0}, Lcom/android/shotcutkey/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v6}, Lcom/android/shotcutkey/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v2}, Lcom/android/shotcutkey/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {v3, v1}, Lcom/android/shotcutkey/AppInfo;->setClassName(Ljava/lang/String;)V

    .line 154
    iget-object v10, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    .line 62
    .local v0, "observer":Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;
    invoke-interface {v0}, Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;->onPackageChanged()V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    .prologue
    .line 160
    sget-boolean v1, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerBroadcastReceiver()1 mPackageChangedReceiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mReceiverObject:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 167
    monitor-exit v2

    .line 196
    :goto_0
    return-void

    .line 170
    :cond_1
    new-instance v1, Lcom/android/shotcutkey/AllAppInfo$1;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/AllAppInfo$1;-><init>(Lcom/android/shotcutkey/AllAppInfo;)V

    iput-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    sget-boolean v1, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 192
    sget-object v1, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerBroadcastReceiver()2 mPackageChangedReceiver = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unRegisterBroadcastReceiver()1 mPackageChangedReceiver = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mReceiverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    sget-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegisterBroadcastReceiver()2 mPackageChangedReceiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    monitor-exit v1

    .line 220
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public attach(Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach() mPackageChangedReceiver = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->registerBroadcastReceiver()V

    .line 47
    :cond_1
    return-void
.end method

.method public detach(Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    sget-boolean v0, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach() mPackageChangedObserver.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mPackageChangedObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/android/shotcutkey/AllAppInfo;->unRegisterBroadcastReceiver()V

    .line 58
    :cond_1
    return-void
.end method

.method public getAllAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    return-object v0
.end method

.method public getAllAppList(I)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-boolean v2, Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 87
    sget-object v2, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllAppList() filter = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "listAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/shotcutkey/AppInfo;>;"
    packed-switch p1, :pswitch_data_0

    .line 118
    sget-object v2, Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;

    const-string v3, "getAllAppList() filter is error!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    .end local v1    # "listAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/shotcutkey/AppInfo;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 93
    .restart local v1    # "listAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/shotcutkey/AppInfo;>;"
    :pswitch_0
    iget-object v1, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AppInfo;

    .line 96
    .local v0, "app":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v0    # "app":Lcom/android/shotcutkey/AppInfo;
    :pswitch_2
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AppInfo;

    .line 103
    .restart local v0    # "app":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_4

    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    .end local v0    # "app":Lcom/android/shotcutkey/AppInfo;
    :pswitch_3
    iget-object v2, p0, Lcom/android/shotcutkey/AllAppInfo;->mListAppInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AppInfo;

    .line 112
    .restart local v0    # "app":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppFlags()I

    move-result v3

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
