.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field public mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mNumShares:I

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transport"    # Ljavax/obex/ObexTransport;
    .param p4, "initialNumShares"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 169
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 164
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 170
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 172
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 173
    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 174
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 176
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0
.end method

.method private connect(I)V
    .locals 7
    .param p1, "numShares"    # I

    .prologue
    const/4 v6, 0x0

    .line 264
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 267
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_0

    .line 272
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 273
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 274
    .local v2, "hs":Ljavax/obex/HeaderSet;
    const/16 v3, 0xc0

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 275
    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 277
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 280
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 287
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 288
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e1":Ljava/io/IOException;
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 282
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 234
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    const-string v2, "disconnect ++"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 239
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 240
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 248
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 255
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 261
    :cond_2
    :goto_2
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "[Bluetooth.OPP]BtOppObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 292
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "doSend ++"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v2, 0xc8

    .line 297
    .local v2, "status":I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_0

    .line 299
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 302
    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 306
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "doSend::connect fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v2, 0x1f1

    .line 309
    :cond_1
    if-ne v2, v6, :cond_3

    .line 311
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 312
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 317
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 322
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 323
    if-ne v2, v6, :cond_4

    .line 324
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 326
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 335
    :goto_3
    return-void

    .line 315
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 319
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 329
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 330
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 331
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 332
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v0, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 341
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client thread processShareInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 344
    .local v1, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 345
    :cond_0
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 366
    :goto_0
    return-object v1

    .line 350
    :cond_1
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v2, "updateValues":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 359
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 34
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 370
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "sendFile ++, fileName = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v11, 0x0

    .line 372
    .local v11, "error":Z
    const/16 v24, -0x1

    .line 373
    .local v24, "responseCode":I
    const/16 v25, 0xc8

    .line 374
    .local v25, "status":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 377
    .local v6, "contentUri":Landroid/net/Uri;
    new-instance v23, Ljavax/obex/HeaderSet;

    invoke-direct/range {v23 .. v23}, Ljavax/obex/HeaderSet;-><init>()V

    .line 378
    .local v23, "request":Ljavax/obex/HeaderSet;
    const/16 v29, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 379
    const/16 v29, 0x42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    const/16 v31, 0xc0

    invoke-static/range {v29 .. v31}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 385
    const/16 v29, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 386
    const/16 v19, 0x0

    .line 387
    .local v19, "putOperation":Ljavax/obex/ClientOperation;
    const/16 v17, 0x0

    .line 388
    .local v17, "outputStream":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 390
    .local v12, "inputStream":Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 391
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 392
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :try_start_2
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "put headerset for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object/from16 v19, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 403
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 404
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 405
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    if-nez v11, :cond_0

    .line 409
    :try_start_5
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openOutputStream "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 411
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v12

    .line 419
    :cond_0
    :goto_1
    if-nez v11, :cond_1

    .line 420
    :try_start_6
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v28, "updateValues":Landroid/content/ContentValues;
    const-string v29, "current_bytes"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v29, "status"

    const/16 v30, 0xc0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    .end local v28    # "updateValues":Landroid/content/ContentValues;
    :cond_1
    if-nez v11, :cond_1e

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$402(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I

    .line 430
    const/16 v22, 0x0

    .line 431
    .local v22, "readLength":I
    const/4 v15, 0x0

    .line 432
    .local v15, "okToProceed":Z
    const-wide/16 v26, 0x0

    .line 433
    .local v26, "timestamp":J
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v16

    .line 434
    .local v16, "outputBufferSize":I
    move/from16 v0, v16

    new-array v5, v0, [B

    .line 435
    .local v5, "buffer":[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x4000

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 437
    .local v4, "a":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v29

    if-nez v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_3

    .line 438
    move/from16 v0, v16

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v4, v5, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Ljava/io/InputStream;[BI)I

    move-result v22

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v30, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v30

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    const-wide/32 v32, 0x1d4c0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 444
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 445
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 448
    const/16 v29, 0x0

    :try_start_8
    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    # += operator for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$412(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_17

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    monitor-enter p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 455
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 456
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 467
    :goto_2
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 469
    const/16 v29, 0x90

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 471
    :cond_2
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Remote accept"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v15, 0x1

    .line 473
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .restart local v28    # "updateValues":Landroid/content/ContentValues;
    const-string v29, "current_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v30, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    .end local v28    # "updateValues":Landroid/content/ContentValues;
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 483
    .local v20, "preTime":J
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v29

    if-nez v29, :cond_1c

    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_1c

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 487
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v22

    .line 488
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 491
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 492
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 493
    const/16 v29, 0x90

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_19

    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_19

    .line 496
    const/4 v15, 0x0

    goto :goto_4

    .line 392
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v15    # "okToProceed":Z
    .end local v16    # "outputBufferSize":I
    .end local v20    # "preTime":J
    .end local v22    # "readLength":I
    .end local v26    # "timestamp":J
    :catchall_0
    move-exception v29

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v29
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 565
    :catch_0
    move-exception v10

    .line 566
    .local v10, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 574
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 575
    if-nez v11, :cond_7

    .line 576
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 577
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_27

    .line 578
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Get response code "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 580
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response error code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v25, 0x1ef

    .line 582
    const/16 v29, 0xcf

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 583
    const/16 v25, 0x196

    .line 585
    :cond_5
    const/16 v29, 0xc3

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    const/16 v29, 0xc6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 587
    :cond_6
    const/16 v25, 0x193

    .line 596
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 598
    if-eqz v12, :cond_8

    .line 599
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_8
    if-eqz v19, :cond_9

    .line 602
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 608
    .end local v10    # "e":Ljava/io/IOException;
    :cond_9
    :goto_6
    return v25

    .line 396
    :catch_1
    move-exception v10

    .line 397
    .restart local v10    # "e":Ljava/io/IOException;
    const/16 v25, 0x1f0

    .line 398
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 400
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when put HeaderSet "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 401
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 405
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v29

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v29
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 567
    :catch_2
    move-exception v10

    .line 568
    .local v10, "e":Ljava/lang/NullPointerException;
    :try_start_12
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 574
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 575
    if-nez v11, :cond_c

    .line 576
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 577
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_28

    .line 578
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Get response code "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 580
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response error code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v25, 0x1ef

    .line 582
    const/16 v29, 0xcf

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 583
    const/16 v25, 0x196

    .line 585
    :cond_a
    const/16 v29, 0xc3

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/16 v29, 0xc6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 587
    :cond_b
    const/16 v25, 0x193

    .line 596
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 598
    if-eqz v12, :cond_d

    .line 599
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_d
    if-eqz v19, :cond_9

    .line 602
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_6

    .line 604
    :catch_3
    move-exception v10

    .line 605
    .local v10, "e":Ljava/io/IOException;
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when closing stream after send"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 412
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 413
    .restart local v10    # "e":Ljava/io/IOException;
    const/16 v25, 0x1f0

    .line 414
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 415
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when openOutputStream"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 416
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 445
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v15    # "okToProceed":Z
    .restart local v16    # "outputBufferSize":I
    .restart local v22    # "readLength":I
    .restart local v26    # "timestamp":J
    :catchall_2
    move-exception v29

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v29
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 569
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v15    # "okToProceed":Z
    .end local v16    # "outputBufferSize":I
    .end local v22    # "readLength":I
    .end local v26    # "timestamp":J
    :catch_5
    move-exception v10

    .line 570
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_17
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 574
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 575
    if-nez v11, :cond_10

    .line 576
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 577
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_29

    .line 578
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Get response code "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 580
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response error code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v25, 0x1ef

    .line 582
    const/16 v29, 0xcf

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 583
    const/16 v25, 0x196

    .line 585
    :cond_e
    const/16 v29, 0xc3

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    const/16 v29, 0xc6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 587
    :cond_f
    const/16 v25, 0x193

    .line 596
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 598
    if-eqz v12, :cond_11

    .line 599
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_11
    if-eqz v19, :cond_9

    .line 602
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_6

    .line 604
    :catch_6
    move-exception v10

    .line 605
    .local v10, "e":Ljava/io/IOException;
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when closing stream after send"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 456
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v15    # "okToProceed":Z
    .restart local v16    # "outputBufferSize":I
    .restart local v22    # "readLength":I
    .restart local v26    # "timestamp":J
    :catchall_3
    move-exception v29

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v29
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 572
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v15    # "okToProceed":Z
    .end local v16    # "outputBufferSize":I
    .end local v22    # "readLength":I
    .end local v26    # "timestamp":J
    :catchall_4
    move-exception v29

    .line 574
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 575
    if-nez v11, :cond_14

    .line 576
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 577
    const/16 v30, -0x1

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_2a

    .line 578
    const-string v30, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Get response code "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v30, 0xa0

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    .line 580
    const-string v30, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Response error code is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v25, 0x1ef

    .line 582
    const/16 v30, 0xcf

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 583
    const/16 v25, 0x196

    .line 585
    :cond_12
    const/16 v30, 0xc3

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_13

    const/16 v30, 0xc6

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 587
    :cond_13
    const/16 v25, 0x193

    .line 596
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 598
    if-eqz v12, :cond_15

    .line 599
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_15
    if-eqz v19, :cond_16

    .line 602
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9

    .line 606
    :cond_16
    :goto_a
    throw v29

    .line 460
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v15    # "okToProceed":Z
    .restart local v16    # "outputBufferSize":I
    .restart local v22    # "readLength":I
    .restart local v26    # "timestamp":J
    :cond_17
    :try_start_1c
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    monitor-enter p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 463
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v29 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 464
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v29

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v29

    .line 478
    :cond_18
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Remote reject, Response code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 498
    .restart local v20    # "preTime":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    # += operator for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$412(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I

    .line 499
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Sending file position = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v31, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v31 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " readLength "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " bytes took "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v26

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 503
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v29

    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mStopTaskId:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$600(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 504
    sub-long v30, v8, v20

    const-wide/16 v32, 0x3e8

    cmp-long v29, v30, v32

    if-gez v29, :cond_1a

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v30, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_4

    .line 508
    :cond_1a
    move-wide/from16 v20, v8

    .line 509
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v29, "current_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v30, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    new-instance v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct {v13}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 513
    .local v13, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 514
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 516
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->intValue()I

    move-result v29

    move/from16 v0, v29

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$700(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f050022

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    const/16 v29, 0x1

    :goto_b
    move/from16 v0, v29

    iput-boolean v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCarrierName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->carrier:Ljava/lang/String;

    .line 525
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v29, 0x0

    aput-object v13, v18, v29

    .line 526
    .local v18, "params":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .line 527
    .local v14, "msg":Landroid/os/Message;
    const/16 v29, 0x64

    move/from16 v0, v29

    iput v0, v14, Landroid/os/Message;->what:I

    .line 528
    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$800(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$800(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    move-result-object v29

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v31, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v31 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->updateProgress(II)V

    goto/16 :goto_4

    .line 519
    .end local v14    # "msg":Landroid/os/Message;
    .end local v18    # "params":[Ljava/lang/Object;
    :cond_1b
    const/16 v29, 0x0

    goto :goto_b

    .line 539
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "currentTime":J
    .end local v13    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    :cond_1c
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .restart local v28    # "updateValues":Landroid/content/ContentValues;
    const-string v29, "current_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v30, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    const/16 v29, 0xc3

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    const/16 v29, 0xc6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 546
    :cond_1d
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Remote reject file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 548
    const/16 v25, 0x193

    .line 574
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v15    # "okToProceed":Z
    .end local v16    # "outputBufferSize":I
    .end local v20    # "preTime":J
    .end local v22    # "readLength":I
    .end local v26    # "timestamp":J
    .end local v28    # "updateValues":Landroid/content/ContentValues;
    :cond_1e
    :goto_c
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 575
    if-nez v11, :cond_21

    .line 576
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v24

    .line 577
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    .line 578
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Get response code "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v29, 0xa0

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_21

    .line 580
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response error code is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v25, 0x1ef

    .line 582
    const/16 v29, 0xcf

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 583
    const/16 v25, 0x196

    .line 585
    :cond_1f
    const/16 v29, 0xc3

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_20

    const/16 v29, 0xc6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 587
    :cond_20
    const/16 v25, 0x193

    .line 596
    :cond_21
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 598
    if-eqz v12, :cond_22

    .line 599
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_22
    if-eqz v19, :cond_9

    .line 602
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_6

    .line 604
    :catch_7
    move-exception v10

    .line 605
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when closing stream after send"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 549
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "a":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v15    # "okToProceed":Z
    .restart local v16    # "outputBufferSize":I
    .restart local v20    # "preTime":J
    .restart local v22    # "readLength":I
    .restart local v26    # "timestamp":J
    .restart local v28    # "updateValues":Landroid/content/ContentValues;
    :cond_23
    const/16 v29, 0xcf

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 550
    :try_start_20
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Remote reject file type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v25, 0x196

    goto/16 :goto_c

    .line 552
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v29

    if-nez v29, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v29, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-nez v29, :cond_25

    .line 553
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SendFile finished send out file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_c

    .line 557
    :cond_25
    const/4 v11, 0x1

    .line 558
    const/16 v25, 0x1ea

    .line 559
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ClientOperation;->abort()V

    .line 561
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SendFile interrupted when send out file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " at "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v31, v0

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->position:I
    invoke-static/range {v31 .. v31}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " of "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto/16 :goto_c

    .line 592
    .end local v4    # "a":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v15    # "okToProceed":Z
    .end local v16    # "outputBufferSize":I
    .end local v20    # "preTime":J
    .end local v22    # "readLength":I
    .end local v26    # "timestamp":J
    .end local v28    # "updateValues":Landroid/content/ContentValues;
    :cond_26
    const/16 v25, 0x1f1

    goto/16 :goto_d

    .restart local v10    # "e":Ljava/io/IOException;
    :cond_27
    const/16 v25, 0x1f1

    goto/16 :goto_5

    .line 604
    :catch_8
    move-exception v10

    .line 605
    const-string v29, "[Bluetooth.OPP]BtOppObexClient"

    const-string v30, "Error when closing stream after send"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 592
    .local v10, "e":Ljava/lang/NullPointerException;
    :cond_28
    const/16 v25, 0x1f1

    goto/16 :goto_7

    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_29
    const/16 v25, 0x1f1

    goto/16 :goto_8

    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2a
    const/16 v25, 0x1f1

    goto/16 :goto_9

    .line 604
    :catch_9
    move-exception v10

    .line 605
    .local v10, "e":Ljava/io/IOException;
    const-string v30, "[Bluetooth.OPP]BtOppObexClient"

    const-string v31, "Error when closing stream after send"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 181
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 183
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 620
    const-string v2, "[Bluetooth.OPP]BtOppObexClient"

    const-string v3, "interrupt ++"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 622
    monitor-enter p0

    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    const-string v2, "[Bluetooth.OPP]BtOppObexClient"

    const-string v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 631
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 632
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 637
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 638
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "[Bluetooth.OPP]BtOppObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 187
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "acquire partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect(I)V

    .line 202
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v3, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e1":Ljava/lang/InterruptedException;
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "Client thread was interrupted (1), exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$202(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 207
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "Client thread waiting for next share, sleep for 500"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 210
    :catch_1
    move-exception v3

    goto :goto_1

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 217
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    const-string v4, "release partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 223
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 224
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    return-void

    .line 226
    :catch_2
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[Bluetooth.OPP]BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
