.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 130
    const/4 v6, 0x1

    .line 136
    .local v6, "serverOK":Z
    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->sServerObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$100()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 138
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0xa

    if-ge v3, v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    if-nez v8, :cond_0

    .line 140
    :try_start_1
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v10, "Starting RFCOMM listener...."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$400(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    const-string v11, "OBEX Object Push"

    sget-object v12, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v12}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v10

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$302(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 142
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v10, "Started RFCOMM listener...."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :goto_1
    if-nez v6, :cond_0

    .line 149
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :try_start_3
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v10, "Wait 300 ms"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-wide/16 v10, 0x12c

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e1":Ljava/io/IOException;
    :try_start_5
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error create RfcommServerSocket "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    const/4 v6, 0x0

    goto :goto_1

    .line 153
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v10, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$202(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v8

    .line 162
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v8

    :cond_0
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 163
    if-nez v6, :cond_1

    .line 164
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v9, "Error start listening after 10 try"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v13}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$202(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    .line 167
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 168
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v9, "Accept thread started."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 173
    :try_start_9
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v9, "Accepting connection..."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    if-nez v8, :cond_3

    .line 177
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    .line 178
    .local v5, "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v5, :cond_4

    .line 179
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v9, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$202(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 193
    .end local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_2
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error accept connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-wide/16 v8, 0x1f4

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 197
    :catch_3
    move-exception v8

    goto :goto_3

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :try_start_b
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 183
    .local v0, "clientSocket":Landroid/bluetooth/BluetoothSocket;
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Accepted connection from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v7, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-direct {v7, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 187
    .local v7, "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 188
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$500(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 189
    const/16 v8, 0x64

    iput v8, v4, Landroid/os/Message;->what:I

    .line 190
    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    .line 200
    .end local v0    # "clientSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v7    # "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :cond_5
    const-string v8, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v9, "BluetoothSocket listen thread finished"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method
