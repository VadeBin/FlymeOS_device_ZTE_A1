.class Lcom/android/shotcutkey/SelectShareAppDialog$2;
.super Ljava/lang/Object;
.source "SelectShareAppDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectShareAppDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppDialog;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 142
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$3()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$4()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onItemClick() arg2 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v3}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getChecked()Z

    move-result v0

    .line 146
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v3}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getEnabled()Z

    move-result v1

    .line 148
    .local v1, "enabled":Z
    if-nez v1, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$1(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/Context;

    move-result-object v3

    .line 150
    iget-object v5, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$10(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_1
    if-nez v0, :cond_3

    .line 154
    if-eqz v0, :cond_4

    move v0, v4

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # invokes: Lcom/android/shotcutkey/SelectShareAppDialog;->setChecked(IZ)V
    invoke-static {v3, p3, v0}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$5(Lcom/android/shotcutkey/SelectShareAppDialog;IZ)V

    .line 156
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    invoke-virtual {v3, v0}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->setChecked(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # invokes: Lcom/android/shotcutkey/SelectShareAppDialog;->setFirstSelect()V
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$6(Lcom/android/shotcutkey/SelectShareAppDialog;)V

    .line 159
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    .line 161
    .local v2, "info":Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$3()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$4()Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onItemClick() packagename = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    const-string v6, ",  classname = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$8(Lcom/android/shotcutkey/SelectShareAppDialog;)I

    move-result v4

    .line 168
    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveShareAppInfo(III)Z

    .line 169
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    iget-object v4, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mKeyMode:I
    invoke-static {v4}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$8(Lcom/android/shotcutkey/SelectShareAppDialog;)I

    move-result v4

    .line 170
    iget-object v6, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v6}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$7(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    .line 174
    .end local v2    # "info":Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$2;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mSelectDialog:Lcom/zte/mifavor/widget/AlertDialog;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$9(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/AlertDialog;->dismiss()V

    goto/16 :goto_0

    :cond_4
    move v0, v5

    .line 154
    goto/16 :goto_1
.end method
