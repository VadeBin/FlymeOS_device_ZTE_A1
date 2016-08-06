.class Lcom/android/shotcutkey/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/DetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/DetailActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/DetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    # getter for: Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/shotcutkey/DetailActivity;->access$0(Lcom/android/shotcutkey/DetailActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    # getter for: Lcom/android/shotcutkey/DetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/shotcutkey/DetailActivity;->access$1(Lcom/android/shotcutkey/DetailActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    iget-object v1, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    # getter for: Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/shotcutkey/DetailActivity;->access$0(Lcom/android/shotcutkey/DetailActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/shotcutkey/DetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/android/shotcutkey/DetailActivity$1;->this$0:Lcom/android/shotcutkey/DetailActivity;

    invoke-virtual {v0}, Lcom/android/shotcutkey/DetailActivity;->finish()V

    .line 81
    return-void
.end method
