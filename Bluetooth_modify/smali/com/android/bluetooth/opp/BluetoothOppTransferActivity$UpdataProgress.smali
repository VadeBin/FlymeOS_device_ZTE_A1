.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;
.super Ljava/lang/Object;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdateProgressCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdataProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method public updateProgress(II)V
    .locals 6
    .param p1, "totalBytes"    # I
    .param p2, "currentBytes"    # I

    .prologue
    const/16 v5, 0x64

    .line 161
    const-string v2, "[Bluetooth.OPP]BluetoothOppTransferActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgress ++, totalBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez p1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 174
    .local v1, "params":[Ljava/lang/Object;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 175
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void

    .line 168
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0
.end method
