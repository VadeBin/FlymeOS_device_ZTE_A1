.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapService$1;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 887
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "[MapBroadcastReceiver] onReceive"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 890
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x80000000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 892
    .local v7, "state":I
    const/16 v9, 0xd

    if-ne v7, v9, :cond_1

    .line 893
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "STATE_TURNING_OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 1000
    .end local v7    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 895
    .restart local v7    # "state":I
    :cond_1
    const/16 v9, 0xc

    if-ne v7, v9, :cond_0

    .line 896
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "[MapBroadcastReceiver] STATE_ON"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 901
    .end local v7    # "state":I
    :cond_2
    const-string v9, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 902
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "USER_CONFIRM_TIMEOUT ACTION Received."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectTimeoutMessage()V
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    .line 905
    :cond_3
    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 906
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 908
    .local v5, "requestType":I
    const-string v9, "[MAP]BluetoothMapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MapBroadcastReceiver] Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isWaitingAuthorization:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    if-ne v5, v9, :cond_0

    .line 916
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$502(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 917
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 918
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$700(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 920
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x0

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 923
    :cond_4
    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 927
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 928
    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 929
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v6

    .line 932
    .local v6, "result":Z
    const-string v9, "[MAP]BluetoothMapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setMessageAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v6    # "result":Z
    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, -0x1

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1700(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto/16 :goto_0

    .line 940
    :cond_6
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x2

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    .line 941
    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 942
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v6

    .line 945
    .restart local v6    # "result":Z
    const-string v9, "[MAP]BluetoothMapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setMessageAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v6    # "result":Z
    :cond_7
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1800(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0

    .line 951
    .end local v5    # "requestType":I
    :cond_8
    const-string v9, "android.btmap.intent.action.SHOW_MAPS_EMAIL_SETTINGS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 952
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "Received ACTION_SHOW_MAPS_EMAIL_SETTINGS."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/android/bluetooth/map/BluetoothMapEmailSettings;

    invoke-direct {v3, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 955
    .local v3, "in":Landroid/content/Intent;
    const/high16 v9, 0x14000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 956
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 957
    .end local v3    # "in":Landroid/content/Intent;
    :cond_9
    const-string v9, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 958
    const/4 v4, 0x0

    .line 959
    .local v4, "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->getResultCode()I

    move-result v6

    .line 960
    .local v6, "result":I
    const/4 v2, 0x0

    .line 961
    .local v2, "handled":Z
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .restart local v4    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    if-eqz v4, :cond_a

    .line 962
    const-string v9, "result"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    invoke-virtual {v4, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 965
    const/4 v2, 0x1

    .line 968
    :cond_a
    if-nez v2, :cond_0

    .line 972
    invoke-static {p1, p2, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 974
    .end local v2    # "handled":Z
    .end local v4    # "masInst":Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .end local v6    # "result":I
    :cond_b
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 976
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 978
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-eqz v9, :cond_c

    if-nez v1, :cond_d

    .line 979
    :cond_c
    const-string v9, "[MAP]BluetoothMapService"

    const-string v10, "Unexpected error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 983
    :cond_d
    const-string v9, "[MAP]BluetoothMapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACL disconnected for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 987
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 989
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    .local v8, "timeoutIntent":Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 992
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v8, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 995
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$502(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 996
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1402(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    goto/16 :goto_0
.end method
