.class Lcom/android/shotcutkey/ShareDetailActivity$4;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/ShareDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$4;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$4;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$3(Lcom/android/shotcutkey/ShareDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$4;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$4(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemClick() arg2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 169
    new-instance v0, Lcom/android/shotcutkey/SelectShareAppDialog;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$4;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$12(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/shotcutkey/ShareDetailActivity$4;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mKeyMode:I
    invoke-static {v2}, Lcom/android/shotcutkey/ShareDetailActivity;->access$5(Lcom/android/shotcutkey/ShareDetailActivity;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/shotcutkey/SelectShareAppDialog;-><init>(Landroid/content/Context;I)V

    .line 171
    :cond_1
    return-void
.end method
