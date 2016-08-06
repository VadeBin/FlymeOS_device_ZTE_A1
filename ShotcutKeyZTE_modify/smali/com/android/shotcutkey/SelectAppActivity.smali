.class public Lcom/android/shotcutkey/SelectAppActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;,
        Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

.field private mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

.field private mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyMode:I

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

.field private mListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListInfoBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SelectAppActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListAppInfo:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAppName:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/shotcutkey/SelectAppActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAppName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/SelectAppActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/shotcutkey/SelectAppActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/shotcutkey/SelectAppActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I

    return v0
.end method


# virtual methods
.method public initActionbar()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 148
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 149
    const v3, 0x7f090063

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 151
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SelectAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 152
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03003d

    .line 153
    const/4 v4, 0x0

    .line 152
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "mTitleView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 156
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x1

    .line 157
    const/4 v6, -0x2

    .line 156
    invoke-direct {v4, v5, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 158
    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/shotcutkey/SelectAppActivity;->mSearchView:Landroid/widget/SearchView;

    .line 159
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/android/shotcutkey/SelectAppActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->initActionbar()V

    .line 68
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 69
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    iget-object v2, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I

    .line 70
    iget v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v10, :cond_0

    .line 71
    iget v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I

    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() mode is error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->finish()V

    .line 142
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mContext:Landroid/content/Context;

    .line 79
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/android/shotcutkey/SelectAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;

    .line 82
    new-instance v0, Lcom/android/shotcutkey/AllAppInfo;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/shotcutkey/AllAppInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    .line 83
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    invoke-virtual {v0}, Lcom/android/shotcutkey/AllAppInfo;->getAllAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListAppInfo:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    invoke-direct {v0, p0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;-><init>(Lcom/android/shotcutkey/SelectAppActivity;)V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    .line 99
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/shotcutkey/SelectAppActivity$1;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/SelectAppActivity$1;-><init>(Lcom/android/shotcutkey/SelectAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/shotcutkey/SelectAppActivity$2;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/SelectAppActivity$2;-><init>(Lcom/android/shotcutkey/SelectAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/shotcutkey/AppInfo;

    .line 85
    .local v7, "info":Lcom/android/shotcutkey/AppInfo;
    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v9, p0, Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;-><init>(Lcom/android/shotcutkey/SelectAppActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/android/shotcutkey/FirstLetterUtil;->getFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "appNameToChar":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate() appname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/shotcutkey/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string v2, ",  appNameToChar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 51
    .local v0, "id":I
    sget-boolean v1, Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectAppActivity;->finish()V

    .line 55
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
