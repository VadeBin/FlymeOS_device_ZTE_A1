.class Lcom/android/server/wifi/WifiApConfigStore$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$1;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$1;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$1;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/WifiApConfigStore;->mStrCurrentDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$002(Lcom/android/server/wifi/WifiApConfigStore;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$1;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)V

    .line 100
    return-void
.end method
