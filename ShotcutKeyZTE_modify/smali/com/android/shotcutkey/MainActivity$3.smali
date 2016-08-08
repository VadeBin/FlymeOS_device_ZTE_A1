.class Lcom/android/shotcutkey/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;


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
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$3;->this$0:Lcom/android/shotcutkey/MainActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppChanged()V
    .locals 2

    .prologue
    .line 224
    # getter for: Lcom/android/shotcutkey/MainActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAppChanged() !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$3;->this$0:Lcom/android/shotcutkey/MainActivity;

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$3;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getGroupData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/shotcutkey/MainActivity;->access$10(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$3;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$11(Lcom/android/shotcutkey/MainActivity;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method
