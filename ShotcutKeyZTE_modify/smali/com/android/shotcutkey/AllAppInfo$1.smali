.class Lcom/android/shotcutkey/AllAppInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "AllAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/AllAppInfo;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/AllAppInfo;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/AllAppInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/AllAppInfo$1;->this$0:Lcom/android/shotcutkey/AllAppInfo;

    .line 170
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 174
    # getter for: Lcom/android/shotcutkey/AllAppInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/AllAppInfo;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    # getter for: Lcom/android/shotcutkey/AllAppInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/AllAppInfo;->access$1()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPackageChangedReceiver arg1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo$1;->this$0:Lcom/android/shotcutkey/AllAppInfo;

    # invokes: Lcom/android/shotcutkey/AllAppInfo;->getAllMainAppInfo()V
    invoke-static {v0}, Lcom/android/shotcutkey/AllAppInfo;->access$2(Lcom/android/shotcutkey/AllAppInfo;)V

    .line 180
    iget-object v0, p0, Lcom/android/shotcutkey/AllAppInfo$1;->this$0:Lcom/android/shotcutkey/AllAppInfo;

    # invokes: Lcom/android/shotcutkey/AllAppInfo;->notifyObservers()V
    invoke-static {v0}, Lcom/android/shotcutkey/AllAppInfo;->access$3(Lcom/android/shotcutkey/AllAppInfo;)V

    .line 181
    return-void
.end method
