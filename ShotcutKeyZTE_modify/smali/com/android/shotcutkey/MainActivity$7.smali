.class Lcom/android/shotcutkey/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/MainActivity;->showPopupMenu(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$7;->this$0:Lcom/android/shotcutkey/MainActivity;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 611
    # getter for: Lcom/android/shotcutkey/MainActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$6()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v2

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onMenuItemClick id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 634
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 617
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "zte.com.cn.filer"

    .line 619
    const-string v3, "zte.com.cn.filer.FilerListActivity"

    .line 618
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v2, "_file"

    .line 621
    const-string v3, "/storage/sdcard0/Pictures/Screenshots"

    .line 620
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v2, "_mode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$7;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v2, v0}, Lcom/android/shotcutkey/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v1, "intentSettings":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$7;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$2(Lcom/android/shotcutkey/MainActivity;)Landroid/content/Context;

    move-result-object v2

    .line 628
    const-string v3, "com.android.shotcutkey.SettingsActivity"

    .line 627
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$7;->this$0:Lcom/android/shotcutkey/MainActivity;

    invoke-virtual {v2, v1}, Lcom/android/shotcutkey/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 615
    :pswitch_data_0
    .packed-switch 0x7f060079
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
