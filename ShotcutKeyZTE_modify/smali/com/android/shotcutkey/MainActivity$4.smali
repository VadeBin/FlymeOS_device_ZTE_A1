.class Lcom/android/shotcutkey/MainActivity$4;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MainActivity.java"


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
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    .line 232
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    invoke-virtual {v0}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildData()Ljava/util/ArrayList;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 476
    :cond_0
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getChild() grouppositon error! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 467
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 324
    if-nez p4, :cond_0

    .line 325
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$12(Lcom/android/shotcutkey/MainActivity;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 326
    const v10, 0x7f03003c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 327
    new-instance v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;

    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-direct {v7, v9}, Lcom/android/shotcutkey/MainActivity$childViewHolder;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    .line 329
    .local v7, "mChildViewHolder":Lcom/android/shotcutkey/MainActivity$childViewHolder;
    const v9, 0x7f06005d

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 328
    iput-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->image:Landroid/widget/ImageView;

    .line 331
    const v9, 0x7f06003c

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 330
    iput-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->title:Landroid/widget/TextView;

    .line 333
    const v9, 0x7f06005e

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 332
    iput-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    .line 335
    const v9, 0x7f06005f

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/zte/mifavor/widget/SwitchZTE;

    .line 334
    iput-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 336
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    :goto_0
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 343
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 344
    .local v4, "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    invoke-virtual {v4}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildData()Ljava/util/ArrayList;

    move-result-object v2

    .line 345
    .local v2, "cdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/shotcutkey/ShotcutKeyDB$childData;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    .line 347
    .local v1, "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->image:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getTitleId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getSubTitleId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 351
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 354
    new-instance v10, Lcom/android/shotcutkey/MainActivity$4$1;

    invoke-direct {v10, p0}, Lcom/android/shotcutkey/MainActivity$4$1;-><init>(Lcom/android/shotcutkey/MainActivity$4;)V

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 462
    .end local v1    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    .end local v2    # "cdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/shotcutkey/ShotcutKeyDB$childData;>;"
    .end local v4    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    .end local p4    # "convertView":Landroid/view/View;
    :goto_1
    return-object p4

    .line 338
    .end local v7    # "mChildViewHolder":Lcom/android/shotcutkey/MainActivity$childViewHolder;
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;

    .restart local v7    # "mChildViewHolder":Lcom/android/shotcutkey/MainActivity$childViewHolder;
    goto :goto_0

    .line 371
    :cond_1
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_9

    .line 372
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    if-gt p1, v9, :cond_9

    .line 374
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    .line 377
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 378
    .restart local v4    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    invoke-virtual {v4}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildData()Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    .restart local v2    # "cdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/shotcutkey/ShotcutKeyDB$childData;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    .line 381
    .restart local v1    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v5

    .line 382
    .local v5, "index":I
    # getter for: Lcom/android/shotcutkey/MainActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$6()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 383
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getChildView() groupPosition = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",  index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 383
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_2
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x4

    if-eq v5, v9, :cond_3

    .line 387
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    .line 388
    :cond_3
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 389
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/shotcutkey/MainActivity;->getAppDataByPN(Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    invoke-static {v9, v10}, Lcom/android/shotcutkey/MainActivity;->access$15(Lcom/android/shotcutkey/MainActivity;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;

    move-result-object v6

    .line 390
    .local v6, "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    if-nez v6, :cond_4

    .line 391
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->initKeyValueByGroup(I)V

    .line 392
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    iget-object v10, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v10}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/shotcutkey/ShotcutKeyDB;->getGroupData()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/shotcutkey/MainActivity;->access$10(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V

    .line 393
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    check-cast v4, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 394
    .restart local v4    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    invoke-virtual {v4}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildData()Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    .line 400
    .end local v6    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    .restart local v1    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    :cond_4
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x4

    if-ne v5, v9, :cond_6

    .line 401
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 402
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 401
    # invokes: Lcom/android/shotcutkey/MainActivity;->getAppDataByPNAndCN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;
    invoke-static {v9, v10, v11}, Lcom/android/shotcutkey/MainActivity;->access$16(Lcom/android/shotcutkey/MainActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/shotcutkey/MainActivity$appInfo;

    move-result-object v6

    .line 403
    .restart local v6    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    if-eqz v6, :cond_5

    .line 404
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->image:Landroid/widget/ImageView;

    .line 405
    iget-object v10, v6, Lcom/android/shotcutkey/MainActivity$appInfo;->appicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->title:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v11}, Lcom/android/shotcutkey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 407
    const v12, 0x7f09006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    const-string v11, "   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 409
    iget-object v11, v6, Lcom/android/shotcutkey/MainActivity$appInfo;->appname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 406
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .end local v6    # "info":Lcom/android/shotcutkey/MainActivity$appInfo;
    :cond_5
    :goto_2
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    .line 441
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 442
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setTag(Ljava/lang/Object;)V

    .line 443
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->switchButton:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 444
    new-instance v10, Lcom/android/shotcutkey/MainActivity$4$2;

    invoke-direct {v10, p0}, Lcom/android/shotcutkey/MainActivity$4$2;-><init>(Lcom/android/shotcutkey/MainActivity$4;)V

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 411
    :cond_6
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    .line 413
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    .line 414
    invoke-virtual {v9, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppModeByGroupId(I)I

    move-result v3

    .line 415
    .local v3, "currentShareMode":I
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_7

    .line 416
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    .line 417
    invoke-virtual {v9, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppDataByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v8

    .line 418
    .local v8, "mShareAppDrawableAndLabel":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    .line 419
    const v10, 0x7f0900b2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 429
    :goto_3
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->image:Landroid/widget/ImageView;

    .line 430
    iget v10, v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appicon:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->title:Landroid/widget/TextView;

    .line 432
    const v10, 0x7f090066

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 433
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 421
    .end local v8    # "mShareAppDrawableAndLabel":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    :cond_7
    iget-object v9, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v9}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v9

    .line 422
    iget-object v10, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v10}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v10

    .line 423
    invoke-virtual {v10, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppIndexByGroupId(I)I

    move-result v10

    .line 422
    invoke-virtual {v9, v10}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppDrawableAndLabelByIndex(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v8

    .line 424
    .restart local v8    # "mShareAppDrawableAndLabel":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Share app name is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget v11, v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 424
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->subTitle:Landroid/widget/TextView;

    .line 427
    iget v10, v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 435
    .end local v3    # "currentShareMode":I
    .end local v8    # "mShareAppDrawableAndLabel":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    :cond_8
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->image:Landroid/widget/ImageView;

    .line 436
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getImageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v9, v7, Lcom/android/shotcutkey/MainActivity$childViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->getTitleId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 457
    .end local v1    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    .end local v2    # "cdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/shotcutkey/ShotcutKeyDB$childData;>;"
    .end local v4    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    .end local v5    # "index":I
    :cond_9
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getChild() grouppositon error! "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 457
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 p4, 0x0

    goto/16 :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    invoke-virtual {v0}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildDataSize()I

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 312
    :cond_0
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getChildrenCount() groupPosition is error !"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 293
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 251
    if-nez p3, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$12(Lcom/android/shotcutkey/MainActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 253
    const v2, 0x7f030040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 254
    new-instance v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-direct {v0, v1}, Lcom/android/shotcutkey/MainActivity$groupViewHolder;-><init>(Lcom/android/shotcutkey/MainActivity;)V

    .line 256
    .local v0, "mGroupViewHolder":Lcom/android/shotcutkey/MainActivity$groupViewHolder;
    const v1, 0x7f06003c

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 255
    iput-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->title:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f06005d

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 257
    iput-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->image:Landroid/widget/ImageView;

    .line 260
    const v1, 0x7f060060

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 259
    iput-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->arrow:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    :goto_0
    iget-object v2, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 273
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getGroupTitle()I

    move-result v1

    .line 272
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v2, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 275
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getGroupImage()I

    move-result v1

    .line 274
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/MainActivity$4;->getChildrenCount(I)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 278
    if-eqz p2, :cond_1

    .line 279
    iget-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->arrow:Landroid/widget/ImageView;

    .line 280
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    # invokes: Lcom/android/shotcutkey/MainActivity;->getGroupArrowByIndex(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v4}, Lcom/android/shotcutkey/MainActivity;->access$14(Lcom/android/shotcutkey/MainActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_1
    return-object p3

    .line 263
    .end local v0    # "mGroupViewHolder":Lcom/android/shotcutkey/MainActivity$groupViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;

    .restart local v0    # "mGroupViewHolder":Lcom/android/shotcutkey/MainActivity$groupViewHolder;
    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->arrow:Landroid/widget/ImageView;

    .line 283
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;

    const/4 v3, 0x0

    # invokes: Lcom/android/shotcutkey/MainActivity;->getGroupArrowByIndex(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/android/shotcutkey/MainActivity;->access$14(Lcom/android/shotcutkey/MainActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 286
    :cond_2
    iget-object v1, v0, Lcom/android/shotcutkey/MainActivity$groupViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method
