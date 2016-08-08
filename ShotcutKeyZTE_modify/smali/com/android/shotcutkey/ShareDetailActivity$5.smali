.class Lcom/android/shotcutkey/ShareDetailActivity$5;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"

# interfaces
.implements Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/ShareDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$5;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppChanged()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$5;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$3(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$5;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$4(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAppChanged() !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$5;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # invokes: Lcom/android/shotcutkey/ShareDetailActivity;->initData()V
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$15(Lcom/android/shotcutkey/ShareDetailActivity;)V

    .line 181
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$5;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$0(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method
