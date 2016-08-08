.class Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothMapMasInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapMasInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapMasInstance$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 124
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    if-nez v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->initSocket()Z
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$100(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 156
    .local v2, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$400(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$300(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z

    move-result v1

    .line 158
    .local v1, "isValid":Z
    if-nez v1, :cond_5

    .line 160
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "RemoteDevice is invalid - closing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$200(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 162
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$202(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "isValid":Z
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->stopped:Z

    if-nez v3, :cond_0

    .line 132
    :try_start_1
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "Accepting socket connection..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 134
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v2, :cond_3

    .line 135
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "mServerSocket is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->stopped:Z

    .line 169
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "Accept exception: (expected at shutdown)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 138
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$202(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 139
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "Accepted socket connection..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    monitor-enter v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$200(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-nez v3, :cond_4

    .line 143
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v5, "mConnSocket is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v4

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$200(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$302(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 147
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :try_start_6
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$300(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 150
    const-string v3, "[MAP]BluetoothMapMasInstance"

    const-string v4, "getRemoteDevice() = null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .restart local v1    # "isValid":Z
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->stopped:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method shutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    const-string v1, "[MAP]BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->stopped:Z

    .line 177
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$000(Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$002(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->interrupt()V

    .line 187
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "[MAP]BluetoothMapMasInstance"

    const-string v2, "Exception while thread shurdown:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$002(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->access$002(Lcom/android/bluetooth/map/BluetoothMapMasInstance;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    throw v1
.end method
