.class Lcom/android/shotcutkey/SelectAppActivity$1;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectAppActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/android/shotcutkey/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 107
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick() arg2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectAppActivity;->access$7(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    .line 112
    .local v0, "info":Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick() pn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    const-string v3, ",  cn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/SelectAppActivity;->access$8(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    iget-object v2, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mKeyMode:I
    invoke-static {v2}, Lcom/android/shotcutkey/SelectAppActivity;->access$9(Lcom/android/shotcutkey/SelectAppActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v3}, Lcom/android/shotcutkey/SelectAppActivity;->access$8(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    .line 117
    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    .line 119
    iget-object v1, p0, Lcom/android/shotcutkey/SelectAppActivity$1;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectAppActivity;->finish()V

    .line 120
    return-void
.end method
