.class public Lcom/android/shotcutkey/SettingsActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;,
        Lcom/android/shotcutkey/SettingsActivity$myListAdapter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LIST_RESPONSE_SPEED:I

.field private final LIST_SHAKE:I

.field private final LIST_SWITCH:I

.field private final MIN_SEEKBAR_VALUE:I

.field private list_title:[[I

.field private mAdapter:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mResources:Landroid/content/res/Resources;

.field private mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SettingsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 35
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 53
    iput v4, p0, Lcom/android/shotcutkey/SettingsActivity;->LIST_RESPONSE_SPEED:I

    .line 54
    iput v5, p0, Lcom/android/shotcutkey/SettingsActivity;->LIST_SHAKE:I

    .line 55
    iput v3, p0, Lcom/android/shotcutkey/SettingsActivity;->LIST_SWITCH:I

    .line 57
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/shotcutkey/SettingsActivity;->MIN_SEEKBAR_VALUE:I

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v3, [I

    const v2, 0x7f090093

    aput v2, v1, v4

    aput-object v1, v0, v4

    .line 60
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    .line 61
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    .line 35
    return-void

    .line 60
    nop

    :array_0
    .array-data 4
        0x7f090096
        0x7f090097
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x7f090098
        0x7f090099
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SettingsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/SettingsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/SettingsActivity;Lcom/zte/mifavor/widget/SeekBarZTE;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;

    return-void
.end method

.method static synthetic access$3(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/SettingsActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/SettingsActivity;)Lcom/zte/mifavor/widget/SeekBarZTE;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mSeekbar:Lcom/zte/mifavor/widget/SeekBarZTE;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/SettingsActivity;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v3, 0x7f030046

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SettingsActivity;->setContentView(I)V

    .line 69
    iput-object p0, p0, Lcom/android/shotcutkey/SettingsActivity;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/shotcutkey/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    invoke-virtual {p0}, Lcom/android/shotcutkey/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mResources:Landroid/content/res/Resources;

    .line 72
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 75
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/shotcutkey/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 78
    invoke-virtual {p0}, Lcom/android/shotcutkey/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 85
    const v3, 0x7f090050

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 88
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 100
    new-instance v3, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/shotcutkey/SettingsActivity$myListAdapter;-><init>(Lcom/android/shotcutkey/SettingsActivity;Lcom/android/shotcutkey/SettingsActivity$myListAdapter;)V

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mAdapter:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    .line 101
    const v3, 0x7f060070

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity;->mAdapter:Lcom/android/shotcutkey/SettingsActivity$myListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void

    .line 90
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    aget-object v3, v3, v1

    aget v3, v3, v6

    if-eqz v3, :cond_2

    .line 92
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    aget-object v5, v5, v1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    aget-object v3, v3, v1

    aget v3, v3, v7

    if-eqz v3, :cond_3

    .line 96
    const-string v3, "subTitle"

    iget-object v4, p0, Lcom/android/shotcutkey/SettingsActivity;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/shotcutkey/SettingsActivity;->list_title:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/android/shotcutkey/SettingsActivity;->mListData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    .local v0, "id":I
    sget-boolean v1, Lcom/android/shotcutkey/SettingsActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/android/shotcutkey/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/shotcutkey/SettingsActivity;->finish()V

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
