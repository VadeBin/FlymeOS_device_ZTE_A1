.class public Lcom/android/shotcutkey/SelectShareAppActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "SelectShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;,
        Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;

.field private mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

.field private mContext:Landroid/content/Context;

.field private mKeyMode:I

.field private mList:Landroid/widget/ListView;

.field private mListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

.field private sharePackageName:[Ljava/lang/String;

.field private shareString:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SelectShareAppActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 23
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 61
    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.qzone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->sharePackageName:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 67
    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->shareString:[I

    .line 23
    return-void

    .line 64
    nop

    :array_0
    .array-data 4
        0x7f09009b
        0x7f09009a
        0x7f09009c
        0x7f09009d
        0x7f09009e
        0x7f09009f
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectShareAppActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/SelectShareAppActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/SelectShareAppActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/SelectShareAppActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mKeyMode:I

    return v0
.end method

.method private isOurNeeds(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->sharePackageName:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 167
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->sharePackageName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->shareString:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x1

    goto :goto_1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super/range {p0 .. p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/android/shotcutkey/SelectShareAppActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 76
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mKeyMode:I

    .line 77
    iget v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 79
    iget v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() mode is error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->finish()V

    .line 153
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/android/shotcutkey/SelectShareAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mList:Landroid/widget/ListView;

    .line 90
    new-instance v0, Lcom/android/shotcutkey/AllAppInfo;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/shotcutkey/AllAppInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    .line 91
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/shotcutkey/AllAppInfo;->getAllAppList(I)Ljava/util/List;

    .line 93
    new-instance v13, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v13, "intent":Landroid/content/Intent;
    const-string v0, "image/*"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    const/high16 v1, 0x10000

    .line 95
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 97
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "onCreate() list = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    .local v2, "db":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;-><init>(Lcom/android/shotcutkey/SelectShareAppActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;

    invoke-direct {v0, p0}, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;-><init>(Lcom/android/shotcutkey/SelectShareAppActivity;)V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;

    .line 129
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/shotcutkey/SelectShareAppActivity$1;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/SelectShareAppActivity$1;-><init>(Lcom/android/shotcutkey/SelectShareAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 99
    .end local v2    # "db":Landroid/graphics/drawable/Drawable;
    .end local v3    # "label":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .restart local v2    # "db":Landroid/graphics/drawable/Drawable;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 102
    .local v4, "pn":Ljava/lang/String;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 103
    .local v5, "cn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .restart local v3    # "label":Ljava/lang/String;
    sget-boolean v0, Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 106
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "onCreate() pn = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",  cn = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v7, ",  label = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/shotcutkey/SelectShareAppActivity;->isOurNeeds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v7, p0, Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;-><init>(Lcom/android/shotcutkey/SelectShareAppActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-boolean v0, Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "onCreate() db = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",  pn = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    const-string v7, ",  cn = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",  label = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
