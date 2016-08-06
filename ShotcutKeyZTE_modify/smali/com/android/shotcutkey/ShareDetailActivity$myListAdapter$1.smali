.class Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 323
    .local v1, "position":I
    if-nez v1, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    invoke-virtual {v2}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getChecked()Z

    move-result v0

    .line 325
    .local v0, "checked":Z
    if-nez v0, :cond_1

    .line 326
    if-eqz v0, :cond_2

    move v0, v3

    .line 328
    :goto_0
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$3(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$4(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onClick() mKeyMode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 330
    const-string v6, ",  packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 331
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$6(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 332
    const-string v6, ",  classname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$7(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/shotcutkey/ShareDetailActivity;->access$8(Lcom/android/shotcutkey/ShareDetailActivity;Z)V

    .line 335
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/shotcutkey/ShareDetailActivity;->access$10(Lcom/android/shotcutkey/ShareDetailActivity;I)V

    .line 337
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v5

    .line 338
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    invoke-virtual {v2, v5, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveShareAppMode(II)Z

    .line 339
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    iget-object v3, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v3}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v3

    .line 340
    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-virtual {v2, v3, v4, v7, v7}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    .line 343
    .end local v0    # "checked":Z
    :cond_1
    return-void

    .restart local v0    # "checked":Z
    :cond_2
    move v0, v4

    .line 326
    goto/16 :goto_0
.end method
