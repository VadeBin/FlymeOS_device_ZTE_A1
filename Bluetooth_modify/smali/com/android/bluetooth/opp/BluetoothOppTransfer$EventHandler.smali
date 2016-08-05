.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 148
    :sswitch_0
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "receive SOCKET_ERROR_RETRY msg"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v13, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v11, v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v12, v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto :goto_0

    .line 159
    :sswitch_1
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "receive RFCOMM_ERROR msg"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/4 v12, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v12, 0x1f1

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    const/4 v12, 0x3

    iput v12, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0

    .line 170
    :sswitch_2
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "Transfer receive RFCOMM_CONNECTED msg"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/4 v12, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljavax/obex/ObexTransport;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v12, v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_0

    .line 184
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 185
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v11, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    iget v12, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v13, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v11, v12, v13}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->updateShareState(II)V

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v12

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 192
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continue session for info "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 197
    :cond_1
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v11, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v11}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    .line 207
    .end local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 208
    .local v4, "info1":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    const/4 v12, 0x2

    iput v12, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v11, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 218
    .end local v4    # "info1":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :sswitch_5
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 220
    .local v5, "info2":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    sget-object v11, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v11}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    const/4 v12, 0x3

    iput v12, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v12, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v12

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 227
    .end local v5    # "info2":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :sswitch_6
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 229
    .local v6, "info3":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v11, :cond_0

    .line 231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v11

    if-nez v11, :cond_2

    .line 232
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "mTransport closed "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    const/4 v12, 0x3

    iput v12, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 241
    if-eqz v6, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v12, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 246
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v12

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 234
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v11

    invoke-interface {v11}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "failed to close mTransport"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_2

    .line 251
    .end local v6    # "info3":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :sswitch_7
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v11

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v11, :cond_5

    .line 257
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v11

    if-nez v11, :cond_4

    .line 258
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    :goto_3
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "mTransport closed "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v11

    invoke-interface {v11}, Ljavax/obex/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 262
    :catch_1
    move-exception v1

    .line 263
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "failed to close mTransport"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 275
    .local v8, "nm":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v11

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 277
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v12

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 285
    .end local v2    # "in":Landroid/content/Intent;
    .end local v8    # "nm":Landroid/app/NotificationManager;
    :sswitch_8
    const-string v11, "[Bluetooth.OPP]BtOppTransfer"

    const-string v12, "Transfer receive MSG_UPDATE_PROGRESS msg"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v10, "updateValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    move-object v9, v11

    check-cast v9, [Ljava/lang/Object;

    .line 289
    .local v9, "param":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v7, v9, v11

    check-cast v7, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 290
    .local v7, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/bluetooth/opp/BluetoothOppManager;->notifyOppProgress(Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;)V

    goto/16 :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xd -> :sswitch_0
        0x64 -> :sswitch_8
    .end sparse-switch
.end method
