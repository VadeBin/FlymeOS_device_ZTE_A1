.class final Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field currentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverShareActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 733
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 734
    iput-object p4, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 735
    iput-object p5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 736
    iput p6, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 737
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 739
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 740
    invoke-direct {p0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->rebuildList()V

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    .line 743
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1087
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;

    .line 1088
    .local v0, "holder":Lcom/android/internal/app/ResolverShareActivity$ViewHolder;
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1092
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSmartFit(Z)V

    .line 1093
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1096
    iget-object v4, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mShowExtended:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverShareActivity;->access$700(Lcom/android/internal/app/ResolverShareActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1097
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :goto_0
    iget-object v4, p2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 1106
    const/4 v3, 0x1

    .line 1107
    .local v3, "newTask":Z
    iget-object v4, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .line 1108
    .local v2, "loadTaskInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    const/4 v3, 0x0

    goto :goto_1

    .line 1100
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "loadTaskInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .end local v3    # "newTask":Z
    :cond_1
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1112
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "newTask":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 1114
    new-instance v4, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {v4, v5}, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverShareActivity;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v6, [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1115
    iget-object v4, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    const-string v4, "ResolverShareActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Async LoadIconTask executed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newTask":Z
    :cond_3
    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 982
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 990
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_1
    return-void

    .line 992
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/app/ResolverShareActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverShareActivity;->access$702(Lcom/android/internal/app/ResolverShareActivity;Z)Z

    .line 993
    const/4 v14, 0x0

    .line 994
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 995
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_3

    .line 996
    const/4 v14, 0x1

    .line 998
    :cond_3
    if-nez v14, :cond_6

    .line 1000
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1002
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_5

    .line 1004
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1005
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1006
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1007
    :cond_4
    const/4 v14, 0x1

    .line 1014
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1016
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_6
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_1

    .line 1017
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1018
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1024
    :cond_7
    if-eqz v14, :cond_9

    .line 1026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1010
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 27

    .prologue
    .line 794
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-interface {v1, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    .line 830
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_15

    .line 833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 834
    .local v11, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_8

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 842
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_7

    .line 844
    :cond_1
    :goto_2
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-ne v1, v2, :cond_2

    .line 846
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 848
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 849
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 797
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "N":I
    .end local v17    # "i":I
    :catch_0
    move-exception v25

    .line 798
    .local v25, "re":Landroid/os/RemoteException;
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 805
    .end local v25    # "re":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x40

    :goto_3
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    .line 813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v17, v1, -0x1

    .restart local v17    # "i":I
    :goto_4
    if-ltz v17, :cond_0

    .line 815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 816
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v16

    .line 819
    .local v16, "granted":I
    if-eqz v16, :cond_5

    .line 821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-ne v1, v2, :cond_4

    .line 822
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 824
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 814
    :cond_5
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 805
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "granted":I
    .end local v17    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 834
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "N":I
    .restart local v17    # "i":I
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 853
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v1, 0x1

    if-le v13, v1, :cond_9

    .line 854
    new-instance v22, Lcom/android/internal/app/ResolverShareActivity$ResolverComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverShareActivity$ResolverComparator;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/Context;)V

    .line 856
    .local v22, "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 858
    .end local v22    # "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    const-class v1, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-static {v1, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/media/IRCSePriorityExt;

    # setter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v2, v1}, Lcom/android/internal/app/ResolverShareActivity;->access$602(Lcom/android/internal/app/ResolverShareActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 859
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCSe Plugin initiated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v4}, Lcom/android/internal/app/ResolverShareActivity;->access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 862
    .local v19, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 863
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.orangelabs.rcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 865
    const-string v1, "ResolverShareActivity"

    const-string/jumbo v2, "rebuild list after sort"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 873
    .end local v15    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "info":Landroid/content/pm/ResolveInfo;
    :cond_b
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v21, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_f

    .line 876
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_f

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v17

    .line 878
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_c

    .line 876
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 881
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 883
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_d

    .line 884
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 887
    :cond_d
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 888
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 889
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_e

    move-object/from16 v20, v6

    .line 890
    check-cast v20, Landroid/content/pm/LabeledIntent;

    .line 891
    .local v20, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 892
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 893
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 894
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 897
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    .end local v20    # "li":Landroid/content/pm/LabeledIntent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 905
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 906
    const/16 v23, -0x1

    .line 907
    .local v23, "rcseIndex":I
    const-string v1, "ResolverShareActivity"

    const-string/jumbo v2, "mRCSePriorityExt to sort the list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$600(Lcom/android/internal/app/ResolverShareActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v1, v0}, Lcom/mediatek/common/media/IRCSePriorityExt;->sortTheListForRCSe(Ljava/util/ArrayList;)I

    move-result v23

    .line 910
    const/4 v1, -0x1

    move/from16 v0, v23

    if-eq v0, v1, :cond_10

    .line 912
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRCSePriorityExt to sort the list index is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .line 914
    .local v24, "rcseInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 918
    .end local v23    # "rcseIndex":I
    .end local v24    # "rcseInfo":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->resortList(Ljava/util/List;Landroid/content/pm/PackageManager;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 923
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 924
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 925
    .local v12, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverShareActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverShareActivity;->access$702(Lcom/android/internal/app/ResolverShareActivity;Z)Z

    .line 926
    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    if-ge v0, v13, :cond_14

    .line 927
    if-nez v12, :cond_11

    .line 928
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 930
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 931
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverShareActivity;->access$500(Lcom/android/internal/app/ResolverShareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 932
    .local v26, "riLabel":Ljava/lang/CharSequence;
    if-nez v26, :cond_12

    .line 933
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 935
    :cond_12
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 926
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 938
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v10, v17, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 939
    move-object v11, v3

    .line 940
    move-object/from16 v12, v26

    .line 941
    move/from16 v9, v17

    goto :goto_8

    .line 944
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "riLabel":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 946
    .end local v9    # "start":I
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v21    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    return-void
.end method

.method private resortList(Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 13
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 949
    new-array v7, v11, [Landroid/content/pm/ResolveInfo;

    .line 950
    .local v7, "rInfos":[Landroid/content/pm/ResolveInfo;
    new-array v5, v11, [Ljava/lang/String;

    const-string v9, "com.tencent.mm"

    aput-object v9, v5, v12

    const/4 v9, 0x1

    const-string v10, "com.sina.weibog"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "com.tencent.WBlog"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "com.qzone"

    aput-object v10, v5, v9

    .line 952
    .local v5, "packageNames":[Ljava/lang/String;
    new-array v3, v11, [I

    fill-array-data v3, :array_0

    .line 955
    .local v3, "labels":[I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 956
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 957
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 958
    .local v4, "pN":Ljava/lang/String;
    invoke-virtual {v6, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 959
    .local v8, "rL":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v8, :cond_0

    .line 962
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v9, v5

    if-ge v2, v9, :cond_0

    .line 963
    aget-object v9, v5, v2

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    aget v10, v3, v2

    invoke-virtual {v9, v10}, Lcom/android/internal/app/ResolverShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 964
    aput-object v6, v7, v2

    .line 966
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 962
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 971
    .end local v2    # "k":I
    .end local v4    # "pN":Ljava/lang/String;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "rL":Ljava/lang/String;
    :cond_2
    array-length v9, v5

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 972
    aget-object v9, v7, v0

    if-eqz v9, :cond_3

    .line 973
    aget-object v9, v7, v0

    invoke-interface {p1, v12, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 971
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 976
    :cond_4
    return-void

    .line 952
    nop

    :array_0
    .array-data 4
        0x6040032
        0x6040033
        0x6040031
        0x6040030
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1056
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    .line 1057
    add-int/lit8 v0, v0, -0x1

    .line 1059
    :cond_0
    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .line 774
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 779
    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 1064
    add-int/lit8 p1, p1, 0x1

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1070
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1074
    move-object v1, p2

    .line 1075
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x608001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1079
    new-instance v0, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverShareActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1080
    .local v0, "holder":Lcom/android/internal/app/ResolverShareActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1082
    .end local v0    # "holder":Lcom/android/internal/app/ResolverShareActivity$ViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V

    .line 1083
    return-object v1
.end method

.method public handlePackagesChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 747
    .local v3, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->rebuildList()V

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 750
    .local v2, "newItemCount":I
    if-nez v2, :cond_1

    .line 752
    iget-object v4, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    if-eq v2, v3, :cond_0

    .line 756
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mAlwaysUseOption:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverShareActivity;->access$100(Lcom/android/internal/app/ResolverShareActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 757
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mListView:Landroid/widget/GridView;
    invoke-static {v5}, Lcom/android/internal/app/ResolverShareActivity;->access$200(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 758
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v1, 0x1

    .line 759
    .local v1, "enabled":Z
    :goto_1
    if-eqz v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 760
    const-string v5, "ResolverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePackagesChanged: checkedPos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= newItemCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disable buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mAlwaysButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverShareActivity;->access$300(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 762
    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mOnceButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverShareActivity;->access$400(Lcom/android/internal/app/ResolverShareActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v4

    .line 758
    goto :goto_1
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intentForPosition(IZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1042
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v1

    .line 1044
    .local v1, "dri":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1046
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1048
    iget-object v3, v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1049
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1051
    return-object v2

    .line 1042
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "dri":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-object v1, v3

    goto :goto_0

    .line 1044
    .restart local v1    # "dri":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    iget-object v4, v1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverShareActivity;->getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1038
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    goto :goto_0
.end method
