.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_CONNECT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    # invokes: Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->access$000(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] connectPanNative return false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 223
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_DISCONNECT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$100(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] disconnectPanNative return false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 239
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[mHandler.handleMessage] message : MESSAGE_CONNECT_STATE_CHANGED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 241
    .local v6, "cs":Lcom/android/bluetooth/pan/PanService$ConnectState;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    # invokes: Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$300(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 244
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v0, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_CONNECT_STATE_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    # invokes: Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I
    invoke-static {v3}, Lcom/android/bluetooth/pan/PanService;->access$400(I)I

    move-result v3

    iget v4, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v5, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
