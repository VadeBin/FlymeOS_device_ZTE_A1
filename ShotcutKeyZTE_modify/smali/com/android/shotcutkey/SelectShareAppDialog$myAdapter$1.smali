.class Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;
.super Ljava/lang/Object;
.source "SelectShareAppDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    .local v3, "position":I
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getChecked()Z

    move-result v0

    .line 367
    .local v0, "checked":Z
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getEnabled()Z

    move-result v1

    .line 369
    .local v1, "enabled":Z
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$3()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$4()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onClick() checked = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 371
    const-string v7, ",  enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    if-eqz v1, :cond_3

    .line 374
    if-nez v0, :cond_1

    .line 375
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 376
    :goto_0
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # invokes: Lcom/android/shotcutkey/SelectShareAppDialog;->setChecked(IZ)V
    invoke-static {v4, v3, v0}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$5(Lcom/android/shotcutkey/SelectShareAppDialog;IZ)V

    .line 377
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v4, v0}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->setChecked(Z)V

    .line 378
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # invokes: Lcom/android/shotcutkey/SelectShareAppDialog;->setFirstSelect()V
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$6(Lcom/android/shotcutkey/SelectShareAppDialog;)V

    .line 380
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    .line 382
    .local v2, "info":Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v4

    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$8(Lcom/android/shotcutkey/SelectShareAppDialog;)I

    move-result v6

    .line 383
    iget-object v7, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v7

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    invoke-virtual {v4, v6, v5, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveShareAppInfo(III)Z

    .line 384
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v4

    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$8(Lcom/android/shotcutkey/SelectShareAppDialog;)I

    move-result v6

    .line 385
    iget-object v7, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v7

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v7}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 384
    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    .line 389
    .end local v2    # "info":Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$9(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/AlertDialog;->dismiss()V

    .line 397
    :goto_1
    return-void

    :cond_2
    move v0, v5

    .line 375
    goto/16 :goto_0

    .line 392
    :cond_3
    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$1(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/Context;

    move-result-object v4

    .line 393
    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;->this$1:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;

    move-result-object v6

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$10(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/res/Resources;

    move-result-object v6

    .line 394
    const v7, 0x7f0900ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
