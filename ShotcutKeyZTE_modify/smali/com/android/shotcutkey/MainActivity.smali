.class public Lcom/android/shotcutkey/MainActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/MainActivity$appInfo;,
        Lcom/android/shotcutkey/MainActivity$childViewHolder;,
        Lcom/android/shotcutkey/MainActivity$groupViewHolder;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private groupArrow:[I

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

.field private mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mExpandableList:Landroid/widget/ExpandableListView;

.field private mGetAppThread:Ljava/lang/Thread;

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$groupData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

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

.field private mOverflow:Landroid/widget/ImageView;

.field private mPackageChangedObserver:Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

.field private mResources:Landroid/content/res/Resources;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/MainActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/shotcutkey/MainActivity;->groupArrow:[I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/android/shotcutkey/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/shotcutkey/MainActivity$1;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    iput-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mGetAppThread:Ljava/lang/Thread;

    .line 45
    return-void

    .line 51
    :array_0
    .array-data 4
        0x7f0201ec
        0x7f0201ee
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/android/shotcutkey/MainActivity;)Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/shotcutkey/MainActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/shotcutkey/MainActivity;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/MainActivity;->getGroupArrowByIndex(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/shotcutkey/MainActivity;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/MainActivity;->getAppDataByPN(Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/shotcutkey/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/shotcutkey/MainActivity;->getAppDataByPNAndCN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/shotcutkey/MainActivity;Lcom/android/shotcutkey/AllAppInfo;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    return-void
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/shotcutkey/MainActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/MainActivity;Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity;->mPackageChangedObserver:Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    return-void
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mPackageChangedObserver:Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method private getAppDataByPN(Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    .locals 5
    .param p1, "pn"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    monitor-exit v2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AppInfo;

    .line 96
    .local v0, "info":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v1, Lcom/android/shotcutkey/MainActivity$appInfo;

    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/shotcutkey/MainActivity$appInfo;-><init>(Lcom/android/shotcutkey/MainActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    .line 94
    .end local v0    # "info":Lcom/android/shotcutkey/AppInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppDataByPNAndCN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    .locals 5
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    monitor-exit v2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/AppInfo;

    .line 83
    .local v0, "info":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v1, Lcom/android/shotcutkey/MainActivity$appInfo;

    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/shotcutkey/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/shotcutkey/MainActivity$appInfo;-><init>(Lcom/android/shotcutkey/MainActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    .line 81
    .end local v0    # "info":Lcom/android/shotcutkey/AppInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGroupArrowByIndex(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isExpanded"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->groupArrow:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getShareAppDataByPackageNameAndClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    .locals 9
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/android/shotcutkey/MainActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/shotcutkey/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 111
    const v7, 0x7f02022a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "db":Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/shotcutkey/MainActivity$appInfo;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/shotcutkey/MainActivity$appInfo;-><init>(Lcom/android/shotcutkey/MainActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 137
    .end local v0    # "db":Landroid/graphics/drawable/Drawable;
    .end local v4    # "name":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/shotcutkey/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 117
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/high16 v6, 0x10000

    .line 119
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v6, Lcom/android/shotcutkey/MainActivity;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 122
    sget-object v6, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getShareAppDataByPackageNameAndClassName() size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 137
    const/4 v6, 0x0

    goto :goto_0

    .line 124
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 125
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .restart local v4    # "name":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .restart local v0    # "db":Landroid/graphics/drawable/Drawable;
    sget-boolean v6, Lcom/android/shotcutkey/MainActivity;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 131
    sget-object v6, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "name = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  icon = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    new-instance v6, Lcom/android/shotcutkey/MainActivity$appInfo;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/shotcutkey/MainActivity$appInfo;-><init>(Lcom/android/shotcutkey/MainActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 605
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 607
    new-instance v1, Lcom/android/shotcutkey/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/MainActivity$7;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 637
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 638
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 170
    sget-object v2, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/MainActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/shotcutkey/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 178
    const/16 v2, 0x19

    .line 180
    const/16 v3, 0x1f

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 187
    :cond_0
    iput-object p0, p0, Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 189
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 191
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mOverflow:Landroid/widget/ImageView;

    .line 192
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mOverflow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 193
    const v4, 0x7f020213

    .line 192
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mOverflow:Landroid/widget/ImageView;

    const/16 v3, 0x10

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 195
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mOverflow:Landroid/widget/ImageView;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    .line 197
    const v4, 0x800015

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 200
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mOverflow:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/shotcutkey/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/android/shotcutkey/MainActivity$2;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/shotcutkey/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 215
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->getGroupData()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;

    .line 218
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mGetAppThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 220
    new-instance v2, Lcom/android/shotcutkey/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/MainActivity$3;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    .line 230
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-virtual {v2, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->registerAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V

    .line 232
    new-instance v2, Lcom/android/shotcutkey/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/MainActivity$4;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 483
    const v2, 0x7f06005a

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    .line 484
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 486
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/android/shotcutkey/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/android/shotcutkey/MainActivity$5;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 505
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/android/shotcutkey/MainActivity$6;

    invoke-direct {v3, p0}, Lcom/android/shotcutkey/MainActivity$6;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 564
    return-void

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 576
    invoke-super {p0}, Lcom/android/shotcutkey/MyActivity;->onDestroy()V

    .line 577
    sget-object v0, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->unRegisterAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V

    .line 579
    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity;->mPackageChangedObserver:Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    invoke-virtual {v0, v2}, Lcom/android/shotcutkey/AllAppInfo;->detach(Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V

    .line 579
    monitor-exit v1

    .line 582
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Lcom/android/shotcutkey/MyActivity;->onResume()V

    .line 569
    sget-object v0, Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume() start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 572
    return-void
.end method
