.class public Lcom/android/internal/app/ResolverShareActivity;
.super Landroid/app/Activity;
.source "ResolverShareActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverShareActivity$ResolverComparator;,
        Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverShareActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverShareActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverShareActivity"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/GridView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mLastSelected:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mResolvingHome:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 118
    new-instance v0, Lcom/android/internal/app/ResolverShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverShareActivity$1;-><init>(Lcom/android/internal/app/ResolverShareActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1197
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverShareActivity;)Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverShareActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;
    .param p1, "x1"    # Lcom/mediatek/common/media/IRCSePriorityExt;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/app/ResolverShareActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverShareActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverShareActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverShareActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 481
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 482
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v5

    .line 487
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 488
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 489
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 490
    const/4 v5, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    return-object v0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 518
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 519
    const/4 v0, 0x1

    .line 522
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 503
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverShareActivity;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 505
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 510
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    .line 365
    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 370
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 371
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ResolverShareActivity"

    const-string v3, "Couldn\'t find resources for package in getIcon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 548
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 351
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 352
    .local v1, "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 353
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 354
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    :goto_1
    return-object v2

    .line 351
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .line 356
    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 383
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverShareActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 401
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 390
    .local v2, "iconRes":I
    if-eqz v2, :cond_1

    .line 391
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverShareActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 394
    const-string v3, "ResolverShareActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadIconForResolveInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverShareActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 527
    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v1

    move v2, v1

    :goto_0
    const v1, 0x102036b

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverShareActivity;->startSelected(IZZ)V

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->dismiss()V

    .line 532
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 182
    invoke-direct {p0}, Lcom/android/internal/app/ResolverShareActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 184
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverShareActivity;->mResolvingHome:Z

    .line 192
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverShareActivity;->setSafeForwardingMode(Z)V

    .line 194
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverShareActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x603011a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->setTheme(I)V

    .line 212
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 220
    const-string/jumbo v2, "usagestats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long v20, v2, v4

    .line 223
    .local v20, "sinceTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mStats:Ljava/util/Map;

    .line 224
    const-string v2, "ResolverShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sinceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mMaxColumns:I

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 229
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    .line 231
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 232
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mIconDpi:I

    .line 233
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mIconSize:I

    .line 235
    new-instance v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    const-string v2, "ResolverShareActivity"

    const-string/jumbo v3, "resolver_list_with_default use 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const v17, 0x10900af

    .line 243
    .local v17, "layoutId":I
    const/16 p7, 0x0

    .line 244
    const/16 v22, 0x1

    .line 250
    .local v22, "useHeader":Z
    :goto_1
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 253
    .local v12, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    .line 332
    :cond_1
    :goto_2
    return-void

    .line 216
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "count":I
    .end local v17    # "layoutId":I
    .end local v20    # "sinceTime":J
    .end local v22    # "useHeader":Z
    :catch_0
    move-exception v13

    .line 217
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 246
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v20    # "sinceTime":J
    :cond_2
    const/16 v22, 0x0

    .line 247
    .restart local v22    # "useHeader":Z
    const-string v2, "ResolverShareActivity"

    const-string/jumbo v3, "resolver_grid use 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const v17, 0x608001c

    .restart local v17    # "layoutId":I
    goto :goto_1

    .line 257
    .restart local v12    # "count":I
    :cond_3
    const/4 v2, 0x1

    if-le v12, v2, :cond_b

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverShareActivity;->setContentView(I)V

    .line 259
    const v2, 0x1020369

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverShareActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverShareActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 264
    if-eqz p7, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 289
    :cond_4
    :goto_3
    const v2, 0x10202c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ResolverShareDrawerLayout;

    .line 290
    .local v18, "rdl":Lcom/android/internal/widget/ResolverShareDrawerLayout;
    if-eqz v18, :cond_5

    .line 291
    new-instance v2, Lcom/android/internal/app/ResolverShareActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/app/ResolverShareActivity$2;-><init>(Lcom/android/internal/app/ResolverShareActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverShareDrawerLayout;->setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_5
    const v2, 0x104056f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 303
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 304
    const v2, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 305
    .local v19, "titleView":Landroid/widget/TextView;
    if-eqz v19, :cond_6

    .line 306
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverShareActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    .end local v19    # "titleView":Landroid/widget/TextView;
    :cond_7
    const v2, 0x1020006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 312
    .local v16, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v15

    .line 313
    .local v15, "iconInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    if-eqz v16, :cond_8

    if-eqz v15, :cond_8

    .line 314
    new-instance v2, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    :cond_8
    if-nez p7, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 318
    :cond_9
    const v2, 0x102035a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 319
    .local v11, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v11, :cond_d

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    const v2, 0x102036b

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 322
    const v2, 0x102036a

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;

    .line 328
    .end local v11    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/app/ResolverShareActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 272
    .end local v15    # "iconInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .end local v16    # "iconView":Landroid/widget/ImageView;
    .end local v18    # "rdl":Lcom/android/internal/widget/ResolverShareDrawerLayout;
    :cond_b
    const/4 v2, 0x1

    if-ne v12, v2, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->safelyStartActivity(Landroid/content/Intent;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    goto/16 :goto_2

    .line 279
    :cond_c
    const-string v2, "ResolverShareActivity"

    const-string/jumbo v3, "resolver_grid use 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const v2, 0x608001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->setContentView(I)V

    .line 282
    const v2, 0x1020004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 283
    .local v14, "empty":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    const v2, 0x1020369

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_3

    .line 324
    .end local v14    # "empty":Landroid/widget/TextView;
    .restart local v11    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v15    # "iconInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .restart local v16    # "iconView":Landroid/widget/ImageView;
    .restart local v18    # "rdl":Lcom/android/internal/widget/ResolverShareDrawerLayout;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverShareActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 205
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 554
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 560
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 561
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 562
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 568
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 569
    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    .line 570
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 571
    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 573
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 584
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_4

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 587
    :cond_4
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 592
    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v20, :cond_6

    .line 593
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 594
    .local v26, "ssp":Ljava/lang/String;
    :cond_5
    if-eqz v26, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 595
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 596
    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 597
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 602
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 603
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_8

    .line 604
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 605
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 606
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 607
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .line 608
    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 615
    if-eqz v20, :cond_a

    .line 616
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 617
    .local v21, "path":Ljava/lang/String;
    :cond_9
    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 618
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 619
    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 620
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 628
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 633
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .line 634
    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 635
    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_d

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 639
    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    .line 641
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_b

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 635
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 574
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 575
    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 608
    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 643
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_d
    if-eqz p3, :cond_10

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 659
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_e
    :goto_4
    if-eqz p2, :cond_f

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverShareActivity;->safelyStartActivity(Landroid/content/Intent;)V

    .line 662
    :cond_f
    return-void

    .line 648
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_10
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 652
    :catch_1
    move-exception v24

    .line 653
    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 457
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v5, p3, v3}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 458
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mResolvingHome:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverShareActivity;->hasManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverShareActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10405d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 478
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 467
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    move v1, v3

    .line 468
    .local v1, "hasValidSelection":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    if-eqz v5, :cond_4

    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mLastSelected:I

    if-eq v5, v0, :cond_4

    .line 469
    :cond_1
    invoke-direct {p0, v1, v0, v3}, Lcom/android/internal/app/ResolverShareActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 470
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 471
    if-eqz v1, :cond_2

    .line 472
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 474
    :cond_2
    iput v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mLastSelected:I

    goto :goto_0

    .end local v1    # "hasValidSelection":Z
    :cond_3
    move v1, v4

    .line 467
    goto :goto_1

    .line 476
    .restart local v1    # "hasValidSelection":Z
    :cond_4
    invoke-virtual {p0, p3, v4, v3}, Lcom/android/internal/app/ResolverShareActivity;->startSelected(IZZ)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 412
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 440
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v1, v2

    .line 441
    .local v1, "hasValidSelection":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mLastSelected:I

    .line 442
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverShareActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 443
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    if-eqz v1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 448
    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_0
    return-void

    .line 440
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity;->mRegistered:Z

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    .line 433
    :cond_1
    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 665
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverShareActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    :goto_0
    return-void

    .line 670
    :cond_0
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/app/ResolverShareActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 680
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverShareActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverShareActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 676
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 677
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverShareActivity;->mSafeForwardingMode:Z

    .line 348
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 688
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 691
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 692
    return-void
.end method

.method startSelected(IZZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 539
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverShareActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    goto :goto_0
.end method
