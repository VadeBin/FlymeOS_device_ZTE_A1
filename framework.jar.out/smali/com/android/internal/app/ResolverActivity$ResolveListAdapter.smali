.class final Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
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

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
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

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 819
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 824
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 825
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 826
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 827
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 829
    iput-boolean p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 830
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    .line 833
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1152
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_0

    .line 1155
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1159
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1203
    const-string v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1205
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->dataId:I

    if-nez v4, :cond_1

    .line 1206
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1213
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSmartFit(Z)V

    .line 1214
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1217
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1218
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_1
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 1227
    const/4 v3, 0x1

    .line 1228
    .local v3, "newTask":Z
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1229
    .local v2, "loadTaskInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1230
    const/4 v3, 0x0

    goto :goto_2

    .line 1208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "loadTaskInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v3    # "newTask":Z
    :cond_1
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->dataId:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1221
    :cond_2
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1233
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "newTask":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 1235
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadIconTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v4, v5}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v8, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1236
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLoadTaskList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Async LoadIconTask executed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newTask":Z
    :cond_4
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 20
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
    .line 1069
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v2, p3, p2

    add-int/lit8 v14, v2, 0x1

    .line 1070
    .local v14, "num":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    .line 1072
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 1074
    .local v17, "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 1075
    .local v16, "procCount":I
    const/4 v15, 0x0

    .local v15, "p":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 1076
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    :cond_0
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1075
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1082
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1141
    .end local v15    # "p":I
    .end local v16    # "procCount":I
    :cond_3
    return-void

    .line 1084
    .end local v17    # "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->access$1002(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1085
    const/16 v19, 0x0

    .line 1086
    .local v19, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1087
    .local v18, "startApp":Ljava/lang/CharSequence;
    if-nez v18, :cond_5

    .line 1088
    const/16 v19, 0x1

    .line 1090
    :cond_5
    if-nez v19, :cond_8

    .line 1092
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1094
    .local v9, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1095
    add-int/lit8 v10, p2, 0x1

    .local v10, "j":I
    :goto_1
    move/from16 v0, p3

    if-gt v10, v0, :cond_7

    .line 1096
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1097
    .local v12, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1098
    .local v11, "jApp":Ljava/lang/CharSequence;
    if-eqz v11, :cond_6

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1099
    :cond_6
    const/16 v19, 0x1

    .line 1106
    .end local v11    # "jApp":Ljava/lang/CharSequence;
    .end local v12    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1108
    .end local v9    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v10    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 1109
    .restart local v17    # "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move/from16 v13, p2

    .local v13, "k":I
    :goto_2
    move/from16 v0, p3

    if-gt v13, v0, :cond_3

    .line 1110
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1111
    .local v4, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v19, :cond_c

    .line 1113
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1115
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 1116
    .restart local v16    # "procCount":I
    const/4 v15, 0x0

    .restart local v15    # "p":I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 1117
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    if-eqz v2, :cond_a

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1120
    :cond_9
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1116
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1102
    .end local v4    # "add":Landroid/content/pm/ResolveInfo;
    .end local v13    # "k":I
    .end local v15    # "p":I
    .end local v16    # "procCount":I
    .end local v17    # "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v9    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v10    # "j":I
    .restart local v11    # "jApp":Ljava/lang/CharSequence;
    .restart local v12    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1095
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1126
    .end local v9    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v10    # "j":I
    .end local v11    # "jApp":Ljava/lang/CharSequence;
    .end local v12    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "k":I
    .restart local v17    # "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_c
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1128
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 1129
    .restart local v16    # "procCount":I
    const/4 v15, 0x0

    .restart local v15    # "p":I
    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 1130
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    if-eqz v2, :cond_e

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1133
    :cond_d
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1129
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1138
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1109
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method private rebuildList()V
    .locals 32

    .prologue
    .line 886
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "rebuildList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-interface {v2, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 898
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(mBaseResolveList size is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    .line 928
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "N":I
    if-lez v14, :cond_19

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 932
    .local v12, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_8

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 940
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v12, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v12, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_7

    .line 942
    :cond_1
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_7

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-ne v2, v3, :cond_2

    .line 944
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 946
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 947
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 892
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v14    # "N":I
    .end local v18    # "i":I
    :catch_0
    move-exception v29

    .line 893
    .local v29, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 901
    .end local v29    # "re":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x40

    :goto_3
    or-int/2addr v2, v6

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    .line 905
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(currentResolveList size is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .restart local v18    # "i":I
    :goto_4
    if-ltz v18, :cond_0

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 914
    .local v15, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v15, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v2, v3, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v17

    .line 917
    .local v17, "granted":I
    if-eqz v17, :cond_5

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    if-ne v2, v3, :cond_4

    .line 920
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 922
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 912
    :cond_5
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 901
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v17    # "granted":I
    .end local v18    # "i":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 932
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "N":I
    .restart local v18    # "i":I
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 951
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v2, 0x1

    if-le v14, v2, :cond_9

    .line 952
    new-instance v25, Lcom/android/internal/app/ResolverActivity$ResolverComparator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolverComparator;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 954
    .local v25, "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 956
    .end local v25    # "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-class v2, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, v5}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/media/IRCSePriorityExt;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v3, v2}, Lcom/android/internal/app/ResolverActivity;->access$802(Lcom/android/internal/app/ResolverActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 957
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RCSe Plugin initiated "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 960
    .local v20, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .line 961
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.orangelabs.rcs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 963
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "rebuild list after sort"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 971
    .end local v16    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "info":Landroid/content/pm/ResolveInfo;
    :cond_b
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v23, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_13

    .line 974
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v7, v2, v18

    .line 976
    .local v7, "ii":Landroid/content/Intent;
    if-nez v7, :cond_d

    .line 974
    :cond_c
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 979
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 981
    .restart local v15    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v15, :cond_e

    .line 982
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 985
    :cond_e
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 986
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/UserManager;

    .line 989
    .local v31, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v31 .. v31}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 990
    const/4 v2, 0x1

    iput-boolean v2, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 992
    :cond_f
    instance-of v2, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_10

    move-object/from16 v21, v7

    .line 993
    check-cast v21, Landroid/content/pm/LabeledIntent;

    .line 994
    .local v21, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 995
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 996
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 997
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1000
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    .end local v21    # "li":Landroid/content/pm/LabeledIntent;
    :cond_10
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v26

    .line 1006
    .local v26, "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v24

    .line 1007
    .local v24, "procCount":I
    const/16 v22, 0x0

    .local v22, "p":I
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 1008
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    if-eqz v2, :cond_12

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1011
    :cond_11
    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->dataId:I

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1007
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1018
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ii":Landroid/content/Intent;
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v22    # "p":I
    .end local v24    # "procCount":I
    .end local v26    # "rappProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v31    # "userManager":Landroid/os/UserManager;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1019
    const/16 v27, -0x1

    .line 1020
    .local v27, "rcseIndex":I
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mRCSePriorityExt to sort the list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Lcom/mediatek/common/media/IRCSePriorityExt;->sortTheListForRCSe(Ljava/util/ArrayList;)I

    move-result v27

    .line 1023
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_14

    .line 1025
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRCSePriorityExt to sort the list index is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1027
    .local v28, "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1033
    .end local v27    # "rcseIndex":I
    .end local v28    # "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1034
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 1035
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1036
    .local v13, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->access$1002(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1037
    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    if-ge v0, v14, :cond_18

    .line 1038
    if-nez v13, :cond_15

    .line 1039
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1041
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1042
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1043
    .local v30, "riLabel":Ljava/lang/CharSequence;
    if-nez v30, :cond_16

    .line 1044
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1046
    :cond_16
    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1037
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 1049
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v11, v18, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 1050
    move-object v12, v4

    .line 1051
    move-object/from16 v13, v30

    .line 1052
    move/from16 v10, v18

    goto :goto_9

    .line 1055
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v30    # "riLabel":Ljava/lang/CharSequence;
    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v11, v14, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 1060
    .end local v10    # "start":I
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "r0Label":Ljava/lang/CharSequence;
    .end local v14    # "N":I
    .end local v18    # "i":I
    .end local v23    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v2, :cond_1a

    .line 1061
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1062
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1064
    :cond_1a
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1149
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1172
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    .line 1173
    add-int/lit8 v0, v0, -0x1

    .line 1175
    :cond_0
    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 864
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 873
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 875
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 1180
    add-int/lit8 p1, p1, 0x1

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1190
    move-object v1, p2

    .line 1191
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x10900ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1195
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1196
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1198
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1199
    return-object v1
.end method

.method public handlePackagesChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 837
    .local v3, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 838
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 840
    .local v2, "newItemCount":I
    if-nez v2, :cond_1

    .line 842
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    if-eq v2, v3, :cond_0

    .line 846
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 847
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 848
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v1, 0x1

    .line 849
    .local v1, "enabled":Z
    :goto_1
    if-eqz v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 850
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

    .line 851
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 852
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v4

    .line 848
    goto :goto_1
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intentForPosition(IZ)Landroid/content/Intent;
    .locals 2
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1166
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 1167
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity;->intentForDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 1166
    .end local v0    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object v0, v1

    goto :goto_0
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1162
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    goto :goto_0
.end method
