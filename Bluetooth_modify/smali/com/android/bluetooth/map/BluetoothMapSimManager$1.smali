.class Lcom/android/bluetooth/map/BluetoothMapSimManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSimManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$100()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$002(Lcom/android/bluetooth/map/BluetoothMapSimManager;Ljava/util/List;)Ljava/util/List;

    .line 65
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I
    invoke-static {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$202(Lcom/android/bluetooth/map/BluetoothMapSimManager;I)I

    .line 67
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method
