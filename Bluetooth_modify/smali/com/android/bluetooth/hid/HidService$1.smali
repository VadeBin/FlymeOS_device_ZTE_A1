.class Lcom/android/bluetooth/hid/HidService$1;
.super Landroid/os/Handler;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 158
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->connectHidNative([B)Z
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$000(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v13

    if-nez v13, :cond_1

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v14, 0x3

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v14, 0x0

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v13, v4}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 168
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 169
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$300(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v13

    if-nez v13, :cond_0

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v14, 0x3

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v14, 0x0

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 178
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v13}, Lcom/android/bluetooth/hid/HidService;->access$400(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 179
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 180
    .local v5, "halState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # getter for: Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/bluetooth/hid/HidService;->access$500(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 181
    .local v7, "prevStateInteger":Ljava/lang/Integer;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 183
    .local v6, "prevState":I
    :goto_1
    const-string v13, "HidService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MESSAGE_CONNECT_STATE_CHANGED newState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I
    invoke-static {v5}, Lcom/android/bluetooth/hid/HidService;->access$600(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", prevState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->okToBroadcastConnectState(Landroid/bluetooth/BluetoothDevice;II)Z
    invoke-static {v13, v4, v5, v6}, Lcom/android/bluetooth/hid/HidService;->access$700(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I
    invoke-static {v5}, Lcom/android/bluetooth/hid/HidService;->access$600(I)I

    move-result v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 188
    :cond_2
    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # getter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v13}, Lcom/android/bluetooth/hid/HidService;->access$200(Lcom/android/bluetooth/hid/HidService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # getter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v13}, Lcom/android/bluetooth/hid/HidService;->access$200(Lcom/android/bluetooth/hid/HidService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v14, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 193
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 194
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    goto/16 :goto_0

    .line 181
    .end local v1    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    .end local v6    # "prevState":I
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 200
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "halState":I
    .end local v7    # "prevStateInteger":Ljava/lang/Integer;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->getProtocolModeNative([B)Z
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$800(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v13

    if-nez v13, :cond_0

    .line 202
    const-string v13, "HidService"

    const-string v14, "Error: get protocol mode native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v13}, Lcom/android/bluetooth/hid/HidService;->access$900(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 210
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 211
    .local v8, "protocolMode":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v8}, Lcom/android/bluetooth/hid/HidService;->access$1000(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 216
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "protocolMode":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 217
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->virtualUnPlugNative([B)Z
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$1100(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v13

    if-nez v13, :cond_0

    .line 218
    const-string v13, "HidService"

    const-string v14, "Error: virtual unplug native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    int-to-byte v8, v13

    .line 226
    .local v8, "protocolMode":B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sending set protocol mode("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/bluetooth/hid/HidService;->access$1200(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->setProtocolModeNative([BB)Z
    invoke-static {v13, v14, v8}, Lcom/android/bluetooth/hid/HidService;->access$1300(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v13

    if-nez v13, :cond_0

    .line 228
    const-string v13, "HidService"

    const-string v14, "Error: set protocol mode native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "protocolMode":B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 236
    .local v3, "data":Landroid/os/Bundle;
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    .line 237
    .local v11, "reportType":B
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    .line 238
    .local v10, "reportId":B
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->getReportNative([BBBI)Z
    invoke-static {v13, v14, v11, v10, v2}, Lcom/android/bluetooth/hid/HidService;->access$1400(Lcom/android/bluetooth/hid/HidService;[BBBI)Z

    move-result v13

    if-nez v13, :cond_0

    .line 240
    const-string v13, "HidService"

    const-string v14, "Error: get report native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    .end local v2    # "bufferSize":I
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "reportId":B
    .end local v11    # "reportType":B
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v13}, Lcom/android/bluetooth/hid/HidService;->access$1500(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 247
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 248
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 249
    .local v9, "report":[B
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 250
    .restart local v2    # "bufferSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V
    invoke-static {v13, v4, v9, v2}, Lcom/android/bluetooth/hid/HidService;->access$1600(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;[BI)V

    goto/16 :goto_0

    .line 255
    .end local v2    # "bufferSize":I
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "report":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v13}, Lcom/android/bluetooth/hid/HidService;->access$1700(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 256
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 257
    .local v12, "status":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v12}, Lcom/android/bluetooth/hid/HidService;->access$1800(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 262
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "status":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 263
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 264
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    .line 265
    .restart local v11    # "reportType":B
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->setReportNative([BBLjava/lang/String;)Z
    invoke-static {v13, v14, v11, v9}, Lcom/android/bluetooth/hid/HidService;->access$1900(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 267
    const-string v13, "HidService"

    const-string v14, "Error: set report native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "report":Ljava/lang/String;
    .end local v11    # "reportType":B
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 275
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v13, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 276
    .restart local v9    # "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z
    invoke-static {v13, v14, v9}, Lcom/android/bluetooth/hid/HidService;->access$2000(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 277
    const-string v13, "HidService"

    const-string v14, "Error: send data native returns false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "report":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v13}, Lcom/android/bluetooth/hid/HidService;->access$2100(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 284
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 285
    .restart local v12    # "status":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v13, v4, v12}, Lcom/android/bluetooth/hid/HidService;->access$2200(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method
