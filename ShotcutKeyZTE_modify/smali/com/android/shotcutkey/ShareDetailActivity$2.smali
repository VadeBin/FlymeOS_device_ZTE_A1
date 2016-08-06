.class Lcom/android/shotcutkey/ShareDetailActivity$2;
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
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$2;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$2;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$2;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$12(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$2;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/shotcutkey/ShareDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$2;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->finish()V

    .line 125
    return-void
.end method
