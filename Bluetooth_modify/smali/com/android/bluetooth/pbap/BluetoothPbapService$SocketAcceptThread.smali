.class Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 1

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p2, "x1"    # Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 631
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    if-nez v4, :cond_3

    .line 632
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 659
    .local v3, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v5, 0x7f050087

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    .line 665
    .local v2, "permission":I
    const-string v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhonebookAccessPermission() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-ne v2, v8, :cond_6

    .line 669
    const-string v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming connection accepted from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " automatically as already allowed device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1392

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v2    # "permission":I
    .end local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    if-nez v4, :cond_0

    .line 639
    :try_start_1
    const-string v4, "BluetoothPbapService"

    const-string v5, "Accepting socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    .line 641
    .restart local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v3, :cond_4

    .line 642
    const-string v4, "BluetoothPbapService"

    const-string v5, "mServerSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 709
    .end local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 716
    const-string v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accept exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 645
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 646
    const-string v4, "BluetoothPbapService"

    const-string v5, "Accepted socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 649
    :try_start_3
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-nez v4, :cond_5

    .line 650
    const-string v4, "BluetoothPbapService"

    const-string v6, "mConnSocket is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    monitor-exit v5

    goto/16 :goto_0

    .line 654
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 653
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$002(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 654
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    :try_start_6
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 656
    const-string v4, "BluetoothPbapService"

    const-string v5, "getRemoteDevice() = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    .restart local v2    # "permission":I
    :cond_6
    if-ne v2, v9, :cond_7

    .line 677
    const-string v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming connection rejected from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " automatically as already rejected device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto/16 :goto_1

    .line 683
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    const-string v4, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v4, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v5, 0x1

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$902(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 694
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 696
    const-string v4, "BluetoothPbapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 723
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->interrupt()V

    .line 724
    return-void
.end method
