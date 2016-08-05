.class final Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 236
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 243
    :pswitch_0
    const-string v1, "AvrcpControllerService"

    const-string v2, "MESSAGE_SEND_PASS_THROUGH_CMD"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 245
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    # invokes: Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->access$200(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->access$300(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
