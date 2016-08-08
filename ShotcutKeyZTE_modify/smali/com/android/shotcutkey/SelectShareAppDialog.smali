.class public Lcom/android/shotcutkey/SelectShareAppDialog;
.super Ljava/lang/Object;
.source "SelectShareAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;,
        Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MESSAGE_FLUSH_LIST:I

.field private mAdapter:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

.field private mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyMode:I

.field private mList:Landroid/widget/ListView;

.field private mListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;

.field private mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

.field private mView:Landroid/view/View;

.field private sharePackageName:[Ljava/lang/String;

.field private shareString:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SelectShareAppDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->MESSAGE_FLUSH_LIST:I

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    .line 56
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.tencent.mm"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.tencent.mm"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 57
    const-string v4, "com.sina.weibo"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.tencent.mobileqq"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.qzone"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->sharePackageName:[Ljava/lang/String;

    .line 59
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 61
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->shareString:[I

    .line 64
    new-instance v2, Lcom/android/shotcutkey/SelectShareAppDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/shotcutkey/SelectShareAppDialog$1;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mHandler:Landroid/os/Handler;

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    .line 84
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030044

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mView:Landroid/view/View;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mView:Landroid/view/View;

    const v3, 0x7f06006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mList:Landroid/widget/ListView;

    .line 95
    new-instance v2, Lcom/android/shotcutkey/AllAppInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/shotcutkey/AllAppInfo;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/shotcutkey/AllAppInfo;->getAllAppList(I)Ljava/util/List;

    .line 98
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    const/high16 v3, 0x10000

    .line 100
    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAppList:Ljava/util/List;

    .line 103
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->sharePackageName:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_0

    .line 134
    new-instance v2, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAdapter:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAdapter:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/shotcutkey/SelectShareAppDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/shotcutkey/SelectShareAppDialog$2;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    new-instance v16, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v16, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setCancelable(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 182
    const v2, 0x7f0900aa

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 184
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setCancelable(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 187
    invoke-virtual/range {v16 .. v16}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 189
    return-void

    .line 104
    .end local v16    # "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->sharePackageName:[Ljava/lang/String;

    aget-object v2, v2, v18

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->shareString:[I

    aget v4, v4, v18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->isExistInAppList(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 107
    .local v21, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 108
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppDrawableAndLabelByIndex(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v22

    .line 110
    .local v22, "shareAppInfo":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    if-eqz v21, :cond_2

    .line 111
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 112
    .local v17, "db":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 113
    .local v6, "pn":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 114
    .local v7, "cn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 116
    .local v20, "label":Ljava/lang/String;
    sget-boolean v2, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 117
    sget-object v2, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SelectShareAppDialog() pn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    .line 121
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appicon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    .line 122
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    .line 123
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/shotcutkey/SelectShareAppDialog;->isChecked(I)Z

    move-result v9

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v6    # "pn":Ljava/lang/String;
    .end local v7    # "cn":Ljava/lang/String;
    .end local v17    # "db":Landroid/graphics/drawable/Drawable;
    .end local v20    # "label":Ljava/lang/String;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    .line 128
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appicon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    .line 129
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 130
    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 127
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :array_0
    .array-data 4
        0x7f09009a
        0x7f09009b
        0x7f09009f
        0x7f09009d
        0x7f09009e
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAdapter:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/shotcutkey/SelectShareAppDialog;IZ)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/shotcutkey/SelectShareAppDialog;->setChecked(IZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/android/shotcutkey/SelectShareAppDialog;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/shotcutkey/SelectShareAppDialog;->setFirstSelect()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/shotcutkey/SelectShareAppDialog;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I

    return v0
.end method

.method static synthetic access$9(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/zte/mifavor/widget/AlertDialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;

    return-object v0
.end method

.method private isChecked(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget v1, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I

    invoke-virtual {v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppIndexByGroupId(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExistInAppList(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "sharesting"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-boolean v3, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 215
    sget-object v3, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isExistInAppList() packagename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 218
    .local v2, "pn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "label":Ljava/lang/String;
    sget-boolean v4, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 221
    sget-object v4, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isExistInAppList() pn = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  label = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method private setChecked(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 211
    return-void

    .line 205
    :cond_0
    if-ne v0, p1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v1, p2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->setEnabled(Z)V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private setFirstSelect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    iget-object v2, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;

    .line 193
    const-string v3, "sharedpreferences"

    .line 192
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-boolean v2, Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setFirstSelect() mKeyMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFirstSelect"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method
