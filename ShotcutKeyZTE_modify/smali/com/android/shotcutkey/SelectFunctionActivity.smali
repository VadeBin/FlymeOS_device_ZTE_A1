.class public Lcom/android/shotcutkey/SelectFunctionActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "SelectFunctionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;,
        Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;,
        Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final CLICK_MODE:I

.field private final DOUBLE_CLICK_MODE:I

.field private final INVALID_MODE:I

.field private final ITEM_HEIGHT:I

.field private final LONG_PRESS_MODE:I

.field private mCamouflageCallsDialog:Lcom/zte/mifavor/widget/AlertDialog;

.field private mContactName:Landroid/widget/EditText;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGridData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mKeyMode:I

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mResources:Landroid/content/res/Resources;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SelectFunctionActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 38
    const/16 v0, 0x176

    iput v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->ITEM_HEIGHT:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->INVALID_MODE:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->CLICK_MODE:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->DOUBLE_CLICK_MODE:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->LONG_PRESS_MODE:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectFunctionActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/shotcutkey/SelectFunctionActivity;Lcom/zte/mifavor/widget/AlertDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mCamouflageCallsDialog:Lcom/zte/mifavor/widget/AlertDialog;

    return-void
.end method

.method static synthetic access$13(Lcom/android/shotcutkey/SelectFunctionActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$14(Lcom/android/shotcutkey/SelectFunctionActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mPhoneNumber:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$15(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/zte/mifavor/widget/AlertDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mCamouflageCallsDialog:Lcom/zte/mifavor/widget/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/SelectFunctionActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/SelectFunctionActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I

    return v0
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContactName:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v3, 0x7f030045

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SelectFunctionActivity;->setContentView(I)V

    .line 67
    iput-object p0, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mResources:Landroid/content/res/Resources;

    .line 71
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SelectFunctionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 74
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "mode"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I

    .line 76
    iget v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 77
    iget v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mKeyMode:I

    if-eqz v3, :cond_0

    .line 78
    sget-object v3, Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() mode is error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    .line 243
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 91
    new-instance v0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity;Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;)V

    .line 92
    .local v0, "adapter":Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;
    const v3, 0x7f06006f

    invoke-virtual {p0, v3}, Lcom/android/shotcutkey/SelectFunctionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridView:Landroid/widget/GridView;

    .line 93
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/android/shotcutkey/SelectFunctionActivity$1;

    invoke-direct {v4, p0}, Lcom/android/shotcutkey/SelectFunctionActivity$1;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 87
    .end local v0    # "adapter":Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;
    :cond_1
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v3, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppDataLauncherById(I)Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;

    move-result-object v1

    .line 88
    .local v1, "adl":Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;
    iget-object v3, p0, Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;

    new-instance v4, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;

    iget v5, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;->appicon:I

    iget v6, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;->appname:I

    invoke-direct {v4, p0, v5, v6}, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 248
    .local v0, "id":I
    sget-boolean v1, Lcom/android/shotcutkey/SelectFunctionActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/android/shotcutkey/SelectFunctionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/shotcutkey/SelectFunctionActivity;->finish()V

    .line 252
    const/4 v1, 0x1

    .line 254
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
