.class Lcom/android/bluetooth/btservice/AdapterService$2;
.super Landroid/os/Handler;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 630
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() - Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 632
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 670
    :goto_0
    return-void

    .line 634
    :sswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_PROFILE_SERVICE_STATE_CHANGED"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V
    invoke-static {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V

    goto :goto_0

    .line 639
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_PROFILE_CONNECTION_STATE_CHANGED"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "prevState"

    const/high16 v8, -0x80000000

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 644
    :sswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_PROFILE_INIT_PRIORITIES"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 645
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-array v1, v2, [Landroid/os/ParcelUuid;

    .line 646
    .local v1, "mUuids":[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    invoke-static {v3, v2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    .end local v1    # "mUuids":[Landroid/os/ParcelUuid;
    :sswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_CONNECT_OTHER_PROFILES"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 655
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->access$400(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 659
    :sswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_SET_WAKE_ALARM"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 660
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processSetWakeAlarm(JI)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;JI)V

    goto/16 :goto_0

    .line 664
    :sswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "handleMessage() - MESSAGE_RELEASE_WAKE_ALARM"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->access$602(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 666
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->alarmFiredNative()V
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$700(Lcom/android/bluetooth/btservice/AdapterService;)V

    goto/16 :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_3
        0x28 -> :sswitch_2
        0x64 -> :sswitch_4
        0x6e -> :sswitch_5
    .end sparse-switch
.end method
