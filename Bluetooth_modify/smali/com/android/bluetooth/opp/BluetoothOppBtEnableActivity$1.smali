.class Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppBtEnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v1, "BluetoothOppBtEnableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz v0, :cond_0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
