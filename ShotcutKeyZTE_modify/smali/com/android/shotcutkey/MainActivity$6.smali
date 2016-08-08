.class Lcom/android/shotcutkey/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 12
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 511
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p3, :cond_4

    .line 512
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    if-gt p3, v7, :cond_4

    .line 514
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    .line 515
    invoke-virtual {v7, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppDetailInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    move-result-object v1

    .line 516
    .local v1, "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    # getter for: Lcom/android/shotcutkey/MainActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$6()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 517
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onChildClick() detail icon = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->icon:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 518
    const-string v9, ",  info = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->info:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppDataByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v0

    .line 520
    .local v0, "ad":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v5

    .line 521
    .local v5, "pac":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    # invokes: Lcom/android/shotcutkey/MainActivity;->getAppDataByPNAndCN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    invoke-static {v7, v8, v9}, Lcom/android/shotcutkey/MainActivity;->access$16(Lcom/android/shotcutkey/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;

    move-result-object v3

    .line 523
    .local v3, "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v7}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 524
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    invoke-virtual {v7}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getGroupTitle()I

    move-result v7

    .line 523
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "title":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "title"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v7, "image"

    iget v8, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->icon:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v7, "mode"

    invoke-virtual {v4, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const-string v7, "has_button"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v2

    .line 532
    .local v2, "appid":I
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x4

    if-ne v2, v7, :cond_2

    .line 533
    const-string v7, "app"

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v9}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09006f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/shotcutkey/MainActivity$appInfo;->appname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 534
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 533
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    :goto_0
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 541
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$2(Lcom/android/shotcutkey/MainActivity;)Landroid/content/Context;

    move-result-object v7

    .line 542
    const-string v8, "com.android.shotcutkey.ShareDetailActivity"

    .line 541
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string v7, "info"

    .line 544
    iget-object v8, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v8}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->info:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 543
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v7, "packagename"

    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v7, "classname"

    iget-object v8, v5, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    :goto_1
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v7, v4}, Lcom/android/shotcutkey/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 561
    .end local v0    # "ad":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .end local v1    # "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .end local v2    # "appid":I
    .end local v3    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pac":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v7, 0x0

    return v7

    .line 537
    .restart local v0    # "ad":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .restart local v1    # "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .restart local v2    # "appid":I
    .restart local v3    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pac":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .restart local v6    # "title":Ljava/lang/String;
    :cond_2
    const-string v7, "app"

    .line 538
    iget-object v8, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v8}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 537
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 548
    :cond_3
    const-string v7, "info"

    .line 549
    iget-object v8, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v8}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v1, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;->info:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 548
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$2(Lcom/android/shotcutkey/MainActivity;)Landroid/content/Context;

    move-result-object v7

    .line 551
    const-string v8, "com.android.shotcutkey.DetailActivity"

    .line 550
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 554
    .end local v0    # "ad":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .end local v1    # "adi":Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .end local v2    # "appid":I
    .end local v3    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pac":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .end local v6    # "title":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/shotcutkey/MainActivity$6;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x3

    if-eq p3, v7, :cond_1

    .line 557
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onChildClick() grouppositon error! "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 557
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
