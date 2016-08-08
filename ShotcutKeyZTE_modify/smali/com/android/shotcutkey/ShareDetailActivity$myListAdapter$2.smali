.class Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, "position":I
    if-ne v1, v4, :cond_0

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v4, v3

    .line 388
    :goto_1
    return v4

    .line 355
    :pswitch_1
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # invokes: Lcom/android/shotcutkey/ShareDetailActivity;->checkIsFirstSelect()Z
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$11(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    new-instance v2, Lcom/android/shotcutkey/SelectShareAppDialog;

    iget-object v3, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/shotcutkey/ShareDetailActivity;->access$12(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v5

    invoke-direct {v2, v3, v5}, Lcom/android/shotcutkey/SelectShareAppDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    .line 360
    invoke-virtual {v2}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getChecked()Z

    move-result v0

    .line 361
    .local v0, "checked":Z
    if-nez v0, :cond_0

    .line 362
    if-eqz v0, :cond_3

    move v0, v3

    .line 364
    :goto_2
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$3(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$4(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onTouch() mKeyMode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    const-string v6, ",  packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$6(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    const-string v6, ",  classname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

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

    .line 365
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/shotcutkey/ShareDetailActivity;->access$8(Lcom/android/shotcutkey/ShareDetailActivity;Z)V

    .line 373
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/android/shotcutkey/ShareDetailActivity;->access$10(Lcom/android/shotcutkey/ShareDetailActivity;I)V

    .line 374
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v5

    .line 375
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    invoke-virtual {v2, v5, v4}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveShareAppMode(II)Z

    .line 376
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    iget-object v5, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v5

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v5}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v5

    .line 377
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    iget-object v6, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/shotcutkey/ShareDetailActivity;->access$6(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v6

    .line 379
    iget-object v7, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;->this$1:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;
    invoke-static {v7}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;

    move-result-object v7

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/shotcutkey/ShareDetailActivity;->access$7(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v7

    .line 376
    invoke-virtual {v2, v5, v4, v6, v7}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 362
    goto/16 :goto_2

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
