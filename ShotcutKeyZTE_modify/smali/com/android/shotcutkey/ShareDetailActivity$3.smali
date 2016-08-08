.class Lcom/android/shotcutkey/ShareDetailActivity$3;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mChanged:Z
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$13(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$14(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveShareAppMode(II)Z

    .line 137
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentAppMode:I
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$14(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-virtual {v0, v1, v4, v3, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-virtual {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->finish()V

    .line 147
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$9(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$6(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/shotcutkey/ShareDetailActivity$3;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/shotcutkey/ShareDetailActivity;->access$7(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
