.class Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/BondStateMachine$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v2, "Entering PendingCommandState State"

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$800(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 160
    .local v4, "dev":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;
    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$900(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v5

    .line 161
    .local v5, "devProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    const/4 v11, 0x0

    .line 162
    .local v11, "result":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processMessage: msg = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mDevices.contains(dev) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v13, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1000(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V

    .line 167
    const/4 v13, 0x1

    .line 253
    :goto_0
    return v13

    .line 170
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 248
    const-string v13, "BluetoothBondStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received unhandled event:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v13, 0x0

    goto :goto_0

    .line 174
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x0

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;IZ)Z
    invoke-static {v13, v4, v14, v15}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$300(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v11

    .line 251
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_2
    const/4 v13, 0x1

    goto :goto_0

    .line 177
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v14, 0x0

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v13, v4, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v11

    .line 178
    goto :goto_1

    .line 180
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v13, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1100(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    .line 181
    goto :goto_1

    .line 183
    :pswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 184
    .local v7, "newState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I
    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1200(Lcom/android/bluetooth/btservice/BondStateMachine;I)I

    move-result v10

    .line 185
    .local v10, "reason":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v13, v4, v7, v10}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 186
    const/16 v13, 0xb

    if-eq v7, v13, :cond_6

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v11, 0x1

    .line 190
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 195
    const/4 v11, 0x0

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    invoke-static {v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    move-result-object v14

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1400(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    .line 198
    :cond_3
    const/16 v13, 0xa

    if-ne v7, v13, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v13, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 189
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 207
    :cond_5
    const/16 v13, 0xc

    if-ne v7, v13, :cond_1

    goto/16 :goto_1

    .line 216
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 217
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 220
    .end local v7    # "newState":I
    .end local v10    # "reason":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 221
    .local v8, "passkey":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 222
    .local v12, "variant":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V
    invoke-static {v13, v14, v8, v12}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1700(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_1

    .line 225
    .end local v8    # "passkey":I
    .end local v12    # "variant":I
    :pswitch_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 226
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 227
    .local v3, "btDeviceClass":I
    const/16 v13, 0x540

    if-eq v3, v13, :cond_7

    const/16 v13, 0x5c0

    if-ne v3, v13, :cond_8

    .line 236
    :cond_7
    const v13, 0x186a0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide v16, 0x412b773e00000000L    # 899999.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int v9, v13, v14

    .line 237
    .local v9, "pin":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    const/4 v15, 0x5

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V
    invoke-static {v13, v14, v9, v15}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1700(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_1

    .line 243
    .end local v9    # "pin":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V
    invoke-static/range {v13 .. v16}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1700(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
