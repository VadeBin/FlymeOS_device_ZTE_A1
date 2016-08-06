.class public Lcom/android/shotcutkey/ShareDetailActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "ShareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;,
        Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;,
        Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final ITEM_1:I

.field private final ITEM_2:I

.field private final MESSAGE_FLUSH_LIST:I

.field private final TAG:Ljava/lang/String;

.field private list_title:[I

.field private mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppMode:I

.field private mCurrentClassName:Ljava/lang/String;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mKeyMode:I

.field private mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

.field private mListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOK:Landroid/widget/Button;

.field private mPreAppMode:I

.field private mResources:Landroid/content/res/Resources;

.field private mSelectFun:Landroid/widget/Button;

.field private mShareDetailImage:Landroid/widget/ImageView;

.field private mShareDetailInfo:Landroid/widget/TextView;

.field private mShareSettingsList:Landroid/widget/ListView;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ShareDetailActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z

    .line 39
    iput v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->ITEM_1:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->ITEM_2:I

    .line 42
    iput v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->MESSAGE_FLUSH_LIST:I

    .line 54
    iput-boolean v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mChanged:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 70
    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->list_title:[I

    .line 73
    new-instance v0, Lcom/android/shotcutkey/ShareDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/shotcutkey/ShareDetailActivity$1;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mHandler:Landroid/os/Handler;

    .line 35
    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x7f0900a2
        0x7f0900a3
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/shotcutkey/ShareDetailActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    return-void
.end method

.method static synthetic access$11(Lcom/android/shotcutkey/ShareDetailActivity;)Z
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->checkIsFirstSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/shotcutkey/ShareDetailActivity;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mChanged:Z

    return v0
.end method

.method static synthetic access$14(Lcom/android/shotcutkey/ShareDetailActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    return v0
.end method

.method static synthetic access$15(Lcom/android/shotcutkey/ShareDetailActivity;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->initData()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/shotcutkey/ShareDetailActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/ShareDetailActivity;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mChanged:Z

    return-void
.end method

.method static synthetic access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method private checkIsFirstSelect()Z
    .locals 5

    .prologue
    .line 408
    const-string v2, "sharedpreferences"

    .line 409
    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0, v2, v3}, Lcom/android/shotcutkey/ShareDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 411
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFirstSelect"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 410
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, "isFirstSelect":Z
    iget-boolean v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkIsFirstSelect() mKeyMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    const-string v4, ",  isFirstSelect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    return v0
.end method

.method private initData()V
    .locals 15

    .prologue
    .line 206
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v8, v9}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppModeByGroupId(I)I

    move-result v8

    iput v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mPreAppMode:I

    .line 209
    iget v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mPreAppMode:I

    iget-object v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 211
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    .line 212
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    .line 213
    iget-object v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 212
    invoke-virtual {v8, v9, v10}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppDetailInfoByGroupAndMode(II)Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    move-result-object v0

    .line 221
    .local v0, "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    :goto_0
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v8, v9}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v3

    .line 222
    .local v3, "index":I
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 223
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v8, v9}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v5

    .line 224
    .local v5, "pc":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 225
    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;

    .line 237
    .end local v5    # "pc":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    :goto_1
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareDetailImage:Landroid/widget/ImageView;

    iget v9, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->icon:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareDetailInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->info:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 239
    iget-object v13, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v14, "title"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 238
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-boolean v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 242
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "initListData() mKeyMode = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 243
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  mCurrentAppMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 244
    const-string v10, ",  mCurrentPackageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 245
    const-string v10, ",  mCurrentClassName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->list_title:[I

    array-length v8, v8

    if-lt v2, v8, :cond_4

    .line 270
    return-void

    .line 216
    .end local v0    # "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_1
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    .line 217
    iget v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mPreAppMode:I

    .line 216
    invoke-virtual {v8, v9, v10}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppDetailInfoByGroupAndMode(II)Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    move-result-object v0

    .line 218
    .restart local v0    # "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    iget v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mPreAppMode:I

    iput v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    goto/16 :goto_0

    .line 227
    .restart local v3    # "index":I
    :cond_2
    iget v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    iget-object v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 228
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v8, v9}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppInfo(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v5

    .line 229
    .restart local v5    # "pc":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 230
    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;

    goto/16 :goto_1

    .line 232
    .end local v5    # "pc":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 233
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;

    goto/16 :goto_1

    .line 249
    .restart local v2    # "i":I
    :cond_4
    const/4 v6, 0x0

    .line 250
    .local v6, "subtitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->list_title:[I

    aget v8, v8, v2

    if-eqz v8, :cond_6

    .line 251
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->list_title:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "title":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->checkIsFirstSelect()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 257
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0900a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 265
    :cond_5
    :goto_4
    new-instance v4, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    .line 266
    iget v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I

    if-ne v2, v8, :cond_8

    const/4 v8, 0x1

    .line 265
    :goto_5
    invoke-direct {v4, p0, v7, v6, v8}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    .local v4, "item":Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 253
    .end local v4    # "item":Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;
    .end local v7    # "title":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "title":Ljava/lang/String;
    goto :goto_3

    .line 259
    :cond_7
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 260
    iget-object v9, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 261
    iget v10, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    invoke-virtual {v9, v10}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppIndexByGroupId(I)I

    move-result v9

    .line 260
    invoke-virtual {v8, v9}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppDrawableAndLabelByIndex(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v1

    .line 262
    .local v1, "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    iget-object v8, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v9, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 266
    .end local v1    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    :cond_8
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private setChecked(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 405
    return-void

    .line 399
    :cond_0
    if-ne v0, p1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    invoke-virtual {v1, p2}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->setChecked(Z)V

    .line 398
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f030048

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->setContentView(I)V

    .line 94
    iput-object p0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 96
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 98
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mIntent:Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    .line 102
    iget v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 103
    iget v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 104
    iget v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() mode is error!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->finish()V

    .line 185
    :goto_0
    return-void

    .line 110
    :cond_0
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mSelectFun:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mSelectFun:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mSelectFun:Landroid/widget/Button;

    new-instance v2, Lcom/android/shotcutkey/ShareDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/ShareDetailActivity$2;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_1
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mOK:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mOK:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mOK:Landroid/widget/Button;

    new-instance v2, Lcom/android/shotcutkey/ShareDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/ShareDetailActivity$3;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_2
    const v1, 0x7f060074

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareDetailImage:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareDetailInfo:Landroid/widget/TextView;

    .line 154
    invoke-direct {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->initData()V

    .line 156
    new-instance v1, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)V

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    .line 157
    const v1, 0x7f060073

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/ShareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareSettingsList:Landroid/widget/ListView;

    .line 158
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareSettingsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShareSettingsList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/shotcutkey/ShareDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/ShareDetailActivity$4;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    new-instance v1, Lcom/android/shotcutkey/ShareDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/android/shotcutkey/ShareDetailActivity$5;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    iput-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    .line 184
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->registerAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/shotcutkey/MyActivity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->mAppChangedCallback:Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->unRegisterAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 196
    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/shotcutkey/ShareDetailActivity;->finish()V

    .line 200
    const/4 v1, 0x1

    .line 202
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
