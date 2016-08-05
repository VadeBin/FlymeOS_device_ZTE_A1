.class Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "BluetoothOppService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 1008
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1009
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 1010
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1011
    const-string v0, "[Bluetooth.OPP]BtOppService"

    const-string v1, "Connecting to MediaScannerConnection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1013
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 1016
    const-string v0, "[Bluetooth.OPP]BtOppService"

    const-string v1, "MediaScannerConnection onMediaScannerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1023
    :try_start_0
    const-string v2, "[Bluetooth.OPP]BtOppService"

    const-string v3, "MediaScannerConnection onScanCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-string v2, "[Bluetooth.OPP]BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScannerConnection path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string v2, "[Bluetooth.OPP]BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScannerConnection Uri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    if-eqz p2, :cond_0

    .line 1028
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1029
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1030
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1031
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1032
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1033
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    :goto_0
    const-string v2, "[Bluetooth.OPP]BtOppService"

    const-string v3, "MediaScannerConnection disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1047
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 1035
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1036
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1037
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1038
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1039
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1041
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "[Bluetooth.OPP]BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!MediaScannerConnection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1044
    const-string v2, "[Bluetooth.OPP]BtOppService"

    const-string v3, "MediaScannerConnection disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_1

    .line 1044
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "[Bluetooth.OPP]BtOppService"

    const-string v4, "MediaScannerConnection disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    throw v2
.end method
